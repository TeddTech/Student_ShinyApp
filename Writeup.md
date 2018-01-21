# Writeup

To predict the grades of a student I assumed a student's grade has a linear relationship with the variables available in the data frame. I used `age`, `studytime`, `failures`, `freetime`, and `health` as explanatory variables because they were continuous and conveniently works with my assumption that the grade linear related to variables in the data frame.

The data set came with 3 grades. I made the average of the three grades a new column of the data frame. I fit linear models for the 3 grades and average of the grades. The app allows the user to input `age`, `sex`, `guardian`, `internet`, `romantic`, `studytime` and  `freetime`. These inputs were chosen because of their significant effect on the response variable (grade) and convenience.

The app filters the data according to input then predicts the grade using the new data frame and this is plotted in a bar graph. Each model is predict a grade.
