# Writeup

To predict the grades of a student I assumed a student's grade has a linear relationship with the variables available in the data frame. I used `age`, `studytime`, `failures`, `freetime`, and `health` as explanatory variables because they were continuous and conveniently works with my assumption that the grade linear related to variables in the data frame.

The data set came with 3 grades. I made the average of the three grades a new column of the data frame. I fit linear models for the 3 grades and average of the grades. The app allows the user to input `age`, `sex`, `guardian`, `internet`, `romantic`, `studytime` and  `freetime`. These inputs were chosen because of their significant effect on the response variable (grade) and convenience.

The app filters the data according to input then predicts the grade using the new data frame and this is plotted in a bar graph. Each model predicts specific grade. I used read on the average grade so it can stand out since it is the most representative of the model. I also display the value of each bar in text on top of the bar to make it easier for the user to read the results.

In the proposal I planed to for the app to display a range of values for the prediction. Due to technical difficulties a boxplot is being used for the milestone 2 submission. For milestone 3 I will be experimenting with plots such as bloxplots in attempt to implement a visualization that can show the degree of error of the predicted grades. As of now the app does enable the tasks I set out to facilitate.
