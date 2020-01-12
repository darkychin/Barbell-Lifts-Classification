# Tidy Data

# Note:
# In this tidy data session,
# we will only alter the column classes,
# especially numeric -> factor.

# Look at summary
## str(training)
## str(testing)

# Check out column class and unique
## checkColumnClassAndUnique <- function(dataframe,nUnique=10){
##   for (i in 1:ncol(dataframe)) {
##     cat(colnames(dataframe)[i],"\n",
##         class(dataframe[,i]),"\n",
##         unique(dataframe[,i])[1:nUnique],"\n\n")
##   }
## }
## checkColumnClassAndUnique(training,20)

toNumeric <- function (dataframe, string) {
  columns <- colnames(dataframe)[grep(string,colnames(dataframe))]
  for (i in 1:length(columns)) {
    dataframe[[columns[i]]] <- as.numeric(dataframe[[columns[i]]])
  }
  dataframe
}

# Training Data
# Changing Column into their correct classes and save it in tidyTraining
tidyTraining <- training
tidyTraining$user_name <- as.factor(tidyTraining$user_name)
tidyTraining$new_window <- as.factor(tidyTraining$new_window)
tidyTraining$cvtd_timestamp <- as.Date(tidyTraining$cvtd_timestamp,
                                        format = "%d/%m/%Y %H:%M")
tidyTraining <- toNumeric(tidyTraining,"kurtosis_")
tidyTraining <- toNumeric(tidyTraining,"_yaw_")
tidyTraining <- toNumeric(tidyTraining,"_belt")
tidyTraining <- toNumeric(tidyTraining,"skewness_")
tidyTraining$classe <- as.factor(tidyTraining$classe)

# Testing Data
# Changing Column into their correct classes and save it in tidyTesting
tidyTesting <- testing
tidyTesting$user_name <- as.factor(tidyTesting$user_name)
tidyTesting$new_window <- as.factor(tidyTesting$new_window)
tidyTesting$cvtd_timestamp <- as.Date(tidyTesting$cvtd_timestamp,
                                        format = "%d/%m/%Y %H:%M")
tidyTesting <- toNumeric(tidyTesting,"_belt")
tidyTesting <- toNumeric(tidyTesting,"_arm")
tidyTesting <- toNumeric(tidyTesting,"_dumbbell")
tidyTesting <- toNumeric(tidyTesting,"_forearm")