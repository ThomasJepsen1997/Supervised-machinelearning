# Supervised-machinelearning
Eksempel på hvordan man laver en simpel maskinelæringsmodel v. brug af Iris-datasættet

Vedhæftet kodning træner en Random Forest model på "iris" datasetet og forudsige klassifikationen af testdataene. Nøjagtigheden af forudsigelserne vil blive evalueret ved hjælp af en confusion matrix.


Først evaluerer vi modellens nøjagtighed ved at beregne accuracy-score. Derefter bruger vi 10-fold cross-validation til at justere modellen og evaluere dens præstation. Til sidst tegner vi en ROC-kurve for at se, hvordan modellen performer i forhold til at opdage positive tilfælde (i dette tilfælde "setosa" blomster).

![image](https://user-images.githubusercontent.com/68223632/216824725-b1fe3bce-9ec6-4dd3-a1c6-c384639a6a4b.png)


Moddellen har på testdata en nøjagtighed på 97,78%

![image](https://user-images.githubusercontent.com/68223632/216824823-ad267fa3-d2bb-43bf-980b-0dc984810e2f.png)


En ROC (Receiver Operating Characteristic) kurve er et visuelt værktøj, der bruges til at evaluere ydeevnen af en klassifikationsmodel. ROC-kurven viser sammenhængen mellem True Positive Rate (Sensitivitet) og False Positive Rate (1 - Specificitet) for forskellige tærskler i beslutningsprocesen for en klassifikationsmodel.

True Positive Rate (Sensitivitet) repræsenterer antallet af positive tilfælde, der blev korrekt klassificeret som positive, divideret med det totale antal positive tilfælde i datamængden. False Positive Rate repræsenterer antallet af negative tilfælde, der blev fejlagtigt klassificeret som positive, divideret med det totale antal negative tilfælde i datamængden.

Ideelt set ønsker vi en ROC-kurve, der er så tæt som muligt på den øverste venstre hjørne, da dette indikerer en høj True Positive Rate og en lav False Positive Rate. Jo tættere ROC-kurven er på denne hjørne, jo bedre er modellens præstation. En tilfældig model vil have en ROC-kurve, der ligner en diagonal linje, mens en perfekt model vil have en ROC-kurve, der går lige op til y = 1 og x = 0.

AUC (Area Under the Curve) er et mål for den samlede nøjagtighed af en ROC-kurve. En AUC på 1 indikerer en perfekt klassifikationsmodel, mens en AUC på 0.5 indikerer en tilfældig model.
