# Installér og lad pakken "randomForest"
install.packages("randomForest")
install.packages("caret")
library(randomForest)
library(caret)

# Indlæs et eksempel dataset, "iris"
data(iris)

# Opdel data i trænings- og testdata
set.seed(123)
indeks <- sample(1:nrow(iris), 0.7 * nrow(iris))
træningsdata <- iris[indeks, ]
testdata <- iris[-indeks, ]

# Træn Random Forest modellen
modell <- randomForest(Species ~ ., data = træningsdata)

# Forudsige klassifikation af testdata
forudsigelser <- predict(modell, newdata = testdata)

# Evaluér nøjagtigheden af forudsigelserne
confusionMatrix(forudsigelser, testdata$Species)


# Accuracy-score
accuracy <- mean(forudsigelser == testdata$Species)
accuracy

# Kross-validering
cv <- trainControl(method = "cv", number = 10)
modell_cv <- train(Species ~ ., data = træningsdata, method = "rf", trControl = cv)
modell_cv

# ROC curve
install.packages("ROCR")
library(ROCR)
forudsigelser_prob <- predict(modell, newdata = testdata, type = "prob")
pred <- prediction(forudsigelser_prob[, "setosa"], testdata$Species == "setosa")
perf <- performance(pred, "tpr", "fpr")
plot(perf, colorize = TRUE)
abline(0, 1)
