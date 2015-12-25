
# Merge train set and test set 
path <- './raw.data/UCI\ HAR\ Dataset'
train.files <- c('subject_train.txt', 'X_train.txt', 'y_train.txt')
test.files <- c('subject_test.txt', 'X_test.txt', 'y_test.txt')
merged.files <- c('subject_merged.txt', 'X_merged.txt', 'y_merged.txt')
to.path <- './processed.data'
for(i in 1:length(train.files)){
  train <- file.path(path, 'train', train.files[i])
  test <- file.path(path, 'test', test.files[i])
  if(!file.exists(train) | !file.exists(test)){
    cat(i)
    break
  }else{
    train.temp <- as.data.table(read.table(train, header = F))
    test.temp <- as.data.table(read.table(test, header = F))
    merged <- rbindlist(list(train.temp, test.temp))
    write.table(merged, file = file.path(to.path, merged.files[i]),
                row.names = F, col.names = F)
    save(merged, file = file.path(to.path, paste0(merged.files[i], '.RData')))
    rm(train.temp, test.temp, merged)
  }
  rm(train, test)
}

# read merged dataset
load('./processed.data/X_merged.txt.RData')
x_merged <- merged
rm(merged)
load('./processed.data/y_merged.txt.RData')
y_merged <- merged
rm(merged)
feature <- read.table('./raw.data/UCI\ HAR\ Dataset/features.txt',
                      header = F, sep=' ')
colnames(feature) <- c('COL', 'Variable')
col.mean <- grepl(pattern = 'mean', x = feature$Variable,
                  fixed = TRUE)
col.std <- grepl(pattern = 'std', x = feature$Variable,
                  fixed = TRUE)
## Get measurements of mean and standard deviation
std.mean.measurements <- x_merged[, col.mean | col.std]

activity.label <- read.table('./raw.data/UCI\ HAR\ Dataset/activity_labels.txt')

y_merged$activity.name <- factor(y_merged$V1, 
                                 labels = as.character(activity.label$V2))
std.mean.measurements <- cbind(y_merged, std.mean.measurements)
colnames(std.mean.measurements)[-(1:2)] <- as.character(feature$Variable[col.mean | col.std])

## subject
load('./processed.data/subject_merged.txt.RData')
subject <- merged
tidy.set <- cbind(subject, std.mean.measurements)
colnames(tidy.set)[1] <- 'subject'
library(data.table)
tidy.set <- as.data.table(tidy.set)
# calculate average of each variable for each activity and each subject
avg <- tidy.set[, lapply(.SD, mean), by = .(subject, activity.id, activity.name)]
dim(avg)
