library('quanteda')
library('quanteda.textstats')
library('quanteda.textplots')
library('quanteda.textmodels')
library('tidyverse')
library('dplyr')
library(tidytext)
install.packages("textdata")
library(textdata)


#Start by reading in our pre-prosessed object. Containg 270 pdf files related to the Ai act.
data_corpus_aiact_final <- readRDS("data_corpus_aiact_INFO371_GroupProject.rds")


# Remove the empty doc with the ID F2665436
filtered_data_corpus <- data_corpus_aiact_final[data_corpus_aiact_final$id != "F2665436", ]
view(filtered_data_corpus)


# Create a corpus
corpus <- corpus(filtered_data_corpus)
view(corpus)
# Tokenize the corpus
tokens <- tokens(corpus)
view(corpus)

token_count <- ntoken(corpus, remove_punct = TRUE)
view(token_count)
docvars(corpus, "Token_count") <- token_count
view(docvars(corpus))


# Apply the Lexicoder Sentiment Dictionary to the tokens
lexi_tokens <- tokens_lookup(tokens, dictionary = data_dictionary_LSD2015)

# Create and inspect a document-feature matrix (dfm)
dfm <- dfm(lexi_tokens) # note that we should use lexi_tokens instead of tokens

# Extract the docvars
docvars_df <- data.frame(docvars(dfm))

# Convert dfm back to a data frame
dfm_dataframe <- dfm %>%
  convert(to = "data.frame") 

# Add the sentiment, Country of Origin, Continent, and Type of Actor into the dataframe
dfm_dataframe <- dfm_dataframe %>%
  mutate(sentiment = (positive - negative) / (positive + negative)) %>%
  bind_cols(docvars_df) # You might need to adjust this line depending on the exact variable name in your dataset

# Start plotting

# Function for processing and plotting data with a specific sentiment dictionary
process_and_plot <- function(sentiment_dict_name) {
  
  # Get the specified sentiment lexicon and convert it to a dictionary
  sentiment_lexicon <- get_sentiments(sentiment_dict_name)
  
  sentiment_dictionary <- dictionary(list(
    positive = sentiment_lexicon$word[sentiment_lexicon$sentiment == "positive"],
    negative = sentiment_lexicon$word[sentiment_lexicon$sentiment == "negative"]
  ))
  
  # Apply the sentiment dictionary to the tokens
  sentiment_tokens <- tokens_lookup(tokens, dictionary = sentiment_dictionary)
  
  # Create and inspect a document-feature matrix (dfm)
  dfm <- dfm(sentiment_tokens)
  
  # Convert dfm back to a data frame and calculate a sentiment score in one step
  # Also incorporate the extraction of Country, Continent and Type of Actor into the dataframe creation for consistency and to avoid potential errors
  dfm_dataframe <- dfm %>%
    convert(to = "data.frame") %>%
    mutate(sentiment = (positive - negative) / (positive + negative),
           `Country of Origin` = docvars(corpus, "Country of origin"),
           `Continent` = docvars(corpus, "Continent"),
           `Type of Actor` = docvars(corpus, "type_actor")) # You might need to adjust this line depending on the exact variable name in your dataset
  
  # Add sentiment scores back to the original dataset
  filtered_data_corpus$sentiment <- dfm_dataframe$sentiment
  
  
  
  
  # Start plotting
  
  # Create a sentiment plot, with country as y axis and sentiment score on the x axis.
  # Each countries Continent is highlighted with a unique shape and Type of Actor with a unique color
  sentiment_plot <- ggplot(dfm_dataframe, aes(x = sentiment, y = reorder(`Country of Origin`, sentiment), color = `Type of Actor`, shape = `Continent`)) +
    geom_point(size = 3) +
    labs(title = paste0("Sentiment Scores of Countries (", sentiment_dict_name, " dictionary)"),
         x = "Sentiment Score",
         y = "Country (reordered by sentiment)") +
    theme_minimal() +
    theme(legend.title = element_blank())
  
  print(sentiment_plot)
  
}




# Then, to use this function with different sentiment dictionaries, you can do:
process_and_plot("bing")
process_and_plot("loughran")


view(dfm_dataframe)
dfm_dataframe$Token_count <- c(token_count)
view(dfm_dataframe)


view(dfm_dataframe)
# Remove rows with missing values
data <- na.omit(dfm_dataframe[, c("sentiment", "Token_count")])

# Perform k-means clustering
k <- 3  # Number of clusters you want to create
set.seed(10)  # Set seed for reproducibility
kmeans_result <- kmeans(data, centers = k)

# Add cluster labels to the data frame
dfm_dataframe$Cluster <- as.factor(kmeans_result$cluster)

# Plot the clusters
plot_clusters <- ggplot(data = dfm_dataframe, aes(x = sentiment, y = Token_count, color = Cluster, shape = Continent)) +
  geom_point(size = 4) +
  labs(color = "Cluster", shape = "Continent") +
  theme_minimal()

print(plot_clusters)

#Topic models section

install.packages("topicmodels")
library(topicmodels)

#Reshape corpus to paragraphs, this is so that the model can detect topics, as different topics usually occur in different paragraphs
corp = corpus_reshape(corpus, to = "paragraphs")
view(corp)

#Remove Parts of the corpus that contian German, Spanish, French or other non-english texts.
corp <- corp[-237]
corp <- corp[-228]
corp <- corp[-172]
corp <- corp[-164]
corp <- corp[-163]
corp <- corp[-114]
corp <- corp[-73]
corp <- corp[-56]
corp <- corp[-49]
corp <- corp[-32]
corp <- corp[-10]

view(corp)

#Remove stopwords
dfm = dfm(corp, remove_punct=T, remove=stopwords("english"))
#Remove terms that appear less than 5 times
dfm = dfm_trim(dfm, min_docfreq = 5)

#LDA implemantation
dtm = convert(dfm, to = "topicmodels") 
set.seed(1)
#Gibbs sampling and VEM.
m = LDA(dtm, method = "Gibbs",  k = 10,  control = list(alpha = 0.1))
#m = LDA(dtm, method = "VEM",  k = 10,  control = list(alpha = 0.1))
m

#Get the terms
terms(m, 10)  

docs = docvars(dfm)[match(rownames(dtm), docnames(dfm)),]
tpp = aggregate(posterior(m)$topics, by=docs["Country of origin"], mean)
rownames(tpp) = tpp$`Country of origin`
heatmap(as.matrix(tpp[-1]))

