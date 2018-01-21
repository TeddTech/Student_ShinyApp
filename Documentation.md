# Documentation

![](pics/1intro.jpg)


![](pics/2age.jpg)

![](pics/3sex.jpg)

![](pics/4guard.jpg)

![](pics/5internet.jpg)

![](pics/6relationship.jpg)

![](pics/7study.jpg)

![](pics/8free.jpg)

There are many different things that contribute to the success of a student in school. Knowing which factors have the largest influence on student performance can help students and teachers decide where to focus their energy. I propose building a app that allows educators and students to visually see which factors will give them the highest chance of success. This app will allow the user to set their fix variables. Theses will be the things they can not change like gender and age. Then allow them to input additional variables to fit there situation. For example the classes they are taking. After this the app will display their most likely grade and what factors had the most influence.

## Description of the Data

I will using the student data set from http://archive.ics.uci.edu/ml/datasets/Student+Performance. It contains 397 entries from a group for 2 courses. The first course is math. The second course is Portuguese. For this project I will be only visualizing the data from the math class. I will start out using the following variables for this project but may add or remove some if deemed appropriate. This data set contains the sex variable. This gives the students gender. Famsize, this states how many member are in the students immediate family. Romantic, states whether the student is in a relationship. job states weather the student is working. G1, G2, and G3 are the first and second and third grade the student received in this course. I will be averaging the three values into a single G variable.

## Usage Scenario & Tasks

Frank is a parent whos daughter is in high school. His daughter's name is Elise and last semester Elise did not perform well in school. Frank has decided to take the initiative to use the shiny app see what's Elise's expected grade in her math class this semester and what factors can he help his daughter with so that she can get the best grade possible. When Frank enters in the data he sees that given the value of Elise's current factors Elise's math grade for the course is expect to be a 56. He see that the expectation of her grade will increase be 8 percent if she wasn't in a relationship, 5 percent if she spent 2 hours less on the internet a day, and another 8 percent if she wasn't working. Frank decides to present these findings to Elise and the have an open discussion on what which factors is she willing to compromise on to increase her grade.

## Description of your App & Sketch

The app displays the expected grade and variance on the right side and factors to adjust are on the left side. The app will be using sliders for continuous factors, ranges and toggles. There will be a drop down to select which type of graph to be displayed on the right. There will also be options to color the display of the graph.

![](prototype.jpg)
