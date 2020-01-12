# Download
## Download Training Data
training <- "training.csv"
download.file("https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv"
              ,training,mode="wb")

## Download Testing Data
testing <- "testing.csv"
download.file("https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv"
              ,testing,mode="wb")
