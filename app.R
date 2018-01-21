#
# Ted Thompson 2018
#Usage: This is a shiny app used to predict grades



library(shiny)
#Load data set and extract and mutate needed variables
Student <- Student
Student <- Student %>% mutate(G1 = G1/20, G2 = G2/20, G3 = G3/20)
Student <- Student %>% mutate(G = (G1 + G2 +G3)/3)

model <- lm(G~age+studytime+failures+freetime+health, data = Student)
model1 <- lm(G1~age+studytime+failures+freetime+health, data = Student)
model2 <- lm(G2~age+studytime+failures+freetime+health, data = Student)
model3 <- lm(G3~age+studytime+failures+freetime+health, data = Student)

# Define Inputs
ui <- fluidPage(
   titlePanel('Grade Predictor'),
   sidebarLayout(
     sidebarPanel(
       sliderInput("AgeInput", "Age", min = 15, max = 22, value = 22),
       radioButtons("SexID", "Sex",
                    choices = c("M", "F"),
                    selected = "M"),
       selectInput("GuardianID", "Guardian",
                   choices = c('mother','father', 'other')),
       radioButtons("InternetID", "Internet Access",
                    choices = c("yes", "no"),
                    selected = "yes"),
       radioButtons("RomanticID", "Is student in relationship",
                    choices = c("yes", "no"),
                    selected = "yes"),
       sliderInput("StudyTimeID", "Study Time", min = 1, max = 4, value = c(2,3)),
       sliderInput("FreeTimeID", "Free Time", min = 1, max = 5, value = c(2,3))
     ),
     mainPanel(plotOutput("gapplot"),
               br(), br(),
               tableOutput("results"))
   )

)

# Define output
server <- function(input, output) {
  output$gapplot <- renderPlot({
    Stu_dat <- 
      Student %>% 
      filter(age >= input$AgeInput-2,     #filter data accorging to inputs
             age < input$AgeInput+2,
             sex == input$SexID,
             guardian == input$GuardianID,
             romantic == input$RomanticID
             )
    
    
    Stu_pred <- data.frame(age = input$AgeInput,     #select predictors form filter data frame to put inside model 
                           studytime = (input$StudyTimeID[1]+input$StudyTimeID[2])/2,
                           failures = mean(Stu_dat$failures),
                           freetime = (input$FreeTimeID[1]+input$FreeTimeID[2])/2,
                           health = mean(Stu_dat$failures)
                           )
    #Predict each grade
    G <- predict(model, Stu_pred)
    G1 <- predict(model1, Stu_pred)
    G2 <- predict(model2, Stu_pred)
    G3 <- predict(model3, Stu_pred)
    
    
    #Plot each grade
    dat_bar <- data.frame(grade = c('1st Grade','2nd Grade','3rd Grade','Average Grade'), mark = c(G1,G2,G3,G))
    
    ggplot(dat_bar, aes(x=grade, y=mark, fill=grade)) + geom_bar(stat = 'identity') + ggtitle('Grade Predictor') +
      labs(y = 'GRADE PERCENTAGE', x = 'GRADES', legend = 'Grades') +
      geom_text(aes(label=round(mark*100, 1)), vjust=10) +
      scale_fill_manual( values = c( '1st Grade'='orange','2nd Grade'='orange','3rd Grade'='orange','Average Grade'='tomato'))
      
    
    
  
  })
}
   


# Run the application 
shinyApp(ui = ui, server = server)

