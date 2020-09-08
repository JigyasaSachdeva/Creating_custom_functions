#Creating functions for evaluation metrics

#Consider the following:
actual #actual class
preducted   #predicted class

#Positive Class: 1, Negative Class: 0
#Finding accuracy
#If actual is equal to predicted, adding one to the counter to be summed
acc = ifelse(actual == predicted, '1', '0')
num_acc <- as.numeric(acc)
accuracy <- sum(num_acc)/length(actual)*100
accuracy

#Positive Class: NO, Negative Class: Yes

#True positive: when actual and predicted are both No
TP <- if_else((predicted == 'NO') & (actual == 'NO'), '1', '0')
tp <- as.numeric(TP)
tp <- sum(tp)

#True negative: when actual and predicted are both Yes
TN <- if_else((predicted == 'YES') & (actual == 'YES'), '1', '0')
tn <- as.numeric(TN)
tn <- sum(tn)

#False positive: when actual is Yes and predicted is No
FP <- if_else((predicted == 'NO') & (actual == 'YES'), '1', '0')
fp <- as.numeric(FP)
fp <- sum(fp)

#False negative: when actual is No and predicted is Yes
FN <- if_else((predicted == 'YES') & (actual == 'NO'), '1', '0')
fn <- as.numeric(FN)
fn <- sum(fn)

#Recall or sensitivity
Recall <- tp/(tp+fn)
#True Positive Rate
TPR <- Recall *100

#Precision
Precision <- tp/(tp+fp)

#F1 Score
f1score <- (2*Recall*Precision)/(Recall+Precision)
#F-Score can be calculated with known beta values

#Specificity
Specificity <- tn/(tn+fp)

#False Alarm
FalseAlarm <- fp/(fp+tn)
#False Positive Rate
FPR <- FalseAlarm*100

#Confusion Matrix
a <- c(tp, fp)
b <- c(fn, tn)
confusion_matrix <- rbind(a,b)






