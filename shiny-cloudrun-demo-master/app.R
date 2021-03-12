library(shiny)

ui <- fluidPage(
    class="p-0 m-0",
    includeCSS("www/dashboard.css"),
    tags$head(
        tags$style("@import url(https://use.fontawesome.com/releases/v5.7.2/css/all.css);")  
    ),
    # Application title
    title = "Visualization and Visual Analytics",
    tags$nav(class="head shadow p-0 m-0 pl-0",
             tags$ul(class="title p-0 mr-auto mt-0 mb-0", 
                     tags$li(
                         tags$p("CS424 - Visualization and Visual Analytics")
                     )),
             tags$ul(class="name p-0", 
                     tags$li(class="text-lg mt-auto mb-auto", "Yi-Chun Chen"))
    ),
    tags$div( class="p-0",
              #tags$i(class="fab fa-accessible-icon card"),
              navbarPage("", 
                         #Total Amount page start
                         tabPanel("Project 1", class="p-0",
                                  mainPanel( class="panel p-0",
                                             fluidRow(
                                                 
                                                 #Total Amount of Energy generation start
                                                 column(12, class="p-0",
                                                        tags$div(class="card border-title shadow",
                                                                 #card Start
                                                                 tags$div(class="card-body",
                                                                    fluidRow(
                                                                          column(3, class="p-0  pl-10",
                                                                                tags$div(class="title",
                                                                                   tags$span(
                                                                                       textOutput("Project1_header")
                                                                                       
                                                                                    )
                                                                                )
                                                                          ),
                                                                          column(9, class="p-0 pt-5",
                                                                                column(3,
                                                                                    tags$div(class="p-0 pt-5",
                                                                                        actionButton("prject1_btn1", "Introduction and Description")
                                                                                     ) 
                                                                                ),
                                                                                column(3,
                                                                                       tags$div(class="p-0  pt-5",
                                                                                                actionButton("prject1_btn2", "About the Data")
                                                                                       ) 
                                                                                ),
                                                                                column(3,
                                                                                       tags$div(class="p-0  pt-5",
                                                                                                actionButton("prject1_btn3", "Interesting Things")
                                                                                       ) 
                                                                                ),
                                                                                column(3,
                                                                                       tags$div(class="p-0 pt-5",
                                                                                                actionButton("prject1_btn4", "Source Code") 
                                                                                       ) 
                                                                                )
                                                                                
                                                                        )
                                                                        
                                                                 ), #Row End
                                                                 tags$div(class="subtitle",
                                                                        textOutput("Project1_subHeader1")
                                                                 ),
                                                                 tags$div(class="text-content",
                                                                        tags$div(
                                                                            tags$span(class="cust-text", textOutput("Project1_custText1")),
                                                                            tags$span(class="p-5", uiOutput("tab1"))
                                                                        )
                                                                 ),
                                                                 tags$div(class="subtitle",
                                                                          textOutput("Project1_subHeader2")
                                                                 ),
                                                                 tags$div(class="text-content",
                                                                          tags$div(
                                                                              tags$span(class="cust-text", textOutput("Project1_custText2")),
                                                                              tags$span(class="p-5", uiOutput("tab2")),
                                                                              tags$br(),tags$br(),
                                                                              tags$span(class="cust-text", textOutput("Project1_custText3")),
                                                                              tags$span(class="p-5", uiOutput("tab3")),
                                                                              tags$br(),tags$br(),
                                                                              tags$span(class="cust-text", textOutput("Project1_custText4")),
                                                                              tags$span(class="p-5", uiOutput("tab4")),
                                                                              
                                                                          )
                                                                 )
                                                            )
                                                        )
                                                 )#Total Amount of Energy Generation end
                                                 
                                             )
                                  )
                         ) #Total Amount page end
                         
                         
                )
              
    )
)

server <- function(input, output) {
    git_url <- a("https://github.com/ychen856/cs424_project_1.git", href="https://github.com/ychen856/cs424_project_1.git")
    r_url <- a("https://www.r-project.org/", "https://www.r-project.org/")
    rStudio_url <- a("https://rstudio.com/products/rstudio/", herf="https://rstudio.com/products/rstudio/")
    project_url <- a("https://ychen514.shinyapps.io/cs424_project_1/", herf="https://ychen514.shinyapps.io/cs424_project_1/")
    video_url <- a("https://youtu.be/uFQpZoTaYoc", herf="https://youtu.be/uFQpZoTaYoc")
    dataSource_url <- a("https://www.evl.uic.edu/aej/424/annual_generation_state.csv", herf="https://www.evl.uic.edu/aej/424/annual_generation_state.csv")
    #header
    output$Project1_header <- renderText({ 
        "Introduction and Description"
    })
    
    #Sub Header
    output$Project1_subHeader1 <- renderText({ 
        "Access the project: "
    })
    output$Project1_subHeader2 <- renderText({ 
        "About this project: "
    })  
    
    #cust text
    output$Project1_custText1 <- renderText({ 
        "Demo URL: "
    })
    output$Project1_custText2 <- renderText({ 
        "Introduction Video: "
    })
    output$Project1_custText3 <- renderText({ 
        ""
    })
    
    output$Project1_custText4 <- renderText({ 
        ""
    })

    txt1 <- "This project can help people to have a clear view of the energy generation in the US. \n
                The first page is to let users see the amount of generation from 1990 to 2019 categorized by energy source. The line chart is easy to see the amount of each energy source, and the stack chart can let people see the sum of the energy sources. We also provide an energy source filter. People can select the energy sources they are interested in and deselect others to reduce the confusion. The right half of the page is the table for the sum of energy generation in each year of each energy source. That gives user a specific thought about how much is the production.\n"
    txt2 <- "\n\nThe second page gives people a quick view of the percentage of each energy source in each year. We can see the trend that which energy is dominoes and which energy is less popular. We also can see one energy source replace the other. \n"
    txt3 <- "\n\nThe third page provides a comparison for two regions and years. When you first visit this page, the default value of the first region is the energy generation in the full US, and the second region is Illinois. You can change the energy source. This option will affect the data of both two regions. Also, you can change the \"All Years\" to a specific year. In this case, the heat map will turn on from blank to color, so you can see the energy generation distribution in the US map.\n"
    
    txt4 <- "\n\nThe fourth page is similar to the third page, but it is in terms of percentage. The default filter in the first region is the full US. The second region is Illinois. You can pick an energy source, state for region one or region two. Also, you have to pick up a year to make the heat map active. \n"
    txt5 <- "\n\nOn the fifth page is the author pick interesting things. There are some buttons that can let people click to choose which interesting they want to see. And there is a description on the right of the page to explain why these data are interesting. \n"

    output$tab1 <- renderUI({
        tagList(project_url)
    })
    
    output$tab2 <- renderUI({
        tagList(video_url)
    })
    output$tab3 <- renderUI({
        tagList(list(shiny::HTML(gsub("\n", "<br/>", txt1)), img(src='img8.png', height = '300px'), 
                     shiny::HTML(gsub("\n", "<br/>", txt2)), img(src='img9.png', height = '300px'), 
                     shiny::HTML(gsub("\n", "<br/>", txt3)), img(src='img10.png', height = '300px'), 
                     shiny::HTML(gsub("\n", "<br/>", txt4)), img(src='img11.png', height = '300px'), 
                     shiny::HTML(gsub("\n", "<br/>", txt5)), img(src='img12.png', height = '300px')
        ))
    })
    output$tab4 <- renderUI({
        tagList(list(
  
        ))
    })
    
    
    
    
    
    
    ##################################################
    #intro
    observeEvent(input$prject1_btn1, { 
        #header
        output$Project1_header <- renderText({ 
            "Introduction and Description"
        })
        
        #Sub Header
        output$Project1_subHeader1 <- renderText({ 
            "Access the project: "
        })
        output$Project1_subHeader2 <- renderText({ 
            "About this project: "
        })  
        
        #cust text
        output$Project1_custText1 <- renderText({ 
            "Demo URL: "
        })
        output$Project1_custText2 <- renderText({ 
            "Introduction Video: "
        })
        output$Project1_custText3 <- renderText({ 
            ""
        })
        
        output$Project1_custText4 <- renderText({ 
            ""
        })
        
        txt1 <- "This project can help people to have a clear view of the energy generation in the US. \n
                The first page is to let users see the amount of generation from 1990 to 2019 categorized by energy source. The line chart is easy to see the amount of each energy source, and the stack chart can let people see the sum of the energy sources. We also provide an energy source filter. People can select the energy sources they are interested in and deselect others to reduce the confusion. The right half of the page is the table for the sum of energy generation in each year of each energy source. That gives user a specific thought about how much is the production.\n"
        txt2 <- "\n\nThe second page gives people a quick view of the percentage of each energy source in each year. We can see the trend that which energy is dominoes and which energy is less popular. We also can see one energy source replace the other. \n"
        txt3 <- "\n\nThe third page provides a comparison for two regions and years. When you first visit this page, the default value of the first region is the energy generation in the full US, and the second region is Illinois. You can change the energy source. This option will affect the data of both two regions. Also, you can change the \"All Years\" to a specific year. In this case, the heat map will turn on from blank to color, so you can see the energy generation distribution in the US map.\n"
        
        txt4 <- "\n\nThe fourth page is similar to the third page, but it is in terms of percentage. The default filter in the first region is the full US. The second region is Illinois. You can pick an energy source, state for region one or region two. Also, you have to pick up a year to make the heat map active. \n"
        txt5 <- "\n\nOn the fifth page is the author pick interesting things. There are some buttons that can let people click to choose which interesting they want to see. And there is a description on the right of the page to explain why these data are interesting. \n"
        
        output$tab1 <- renderUI({
            tagList(project_url)
        })
        
        output$tab2 <- renderUI({
            tagList(video_url)
        })
        output$tab3 <- renderUI({
            tagList(list(shiny::HTML(gsub("\n", "<br/>", txt1)), img(src='img8.png', height = '300px'), 
                         shiny::HTML(gsub("\n", "<br/>", txt2)), img(src='img9.png', height = '300px'), 
                         shiny::HTML(gsub("\n", "<br/>", txt3)), img(src='img10.png', height = '300px'), 
                         shiny::HTML(gsub("\n", "<br/>", txt4)), img(src='img11.png', height = '300px'), 
                         shiny::HTML(gsub("\n", "<br/>", txt5)), img(src='img12.png', height = '300px')
            ))
        })
        output$tab4 <- renderUI({
            tagList(list(
                
            ))
        })
    })
    
    #data
    observeEvent(input$prject1_btn2, {
        #header
        output$Project1_header <- renderText({ 
            "About the Data"
        })
        
        #Sub Header
        output$Project1_subHeader1 <- renderText({ 
            ""
        })
        output$Project1_subHeader2 <- renderText({ 
            ""
        })  
        
        #cust text
        output$Project1_custText1 <- renderText({ 
            "Data Source: "
        })
        output$Project1_custText2 <- renderText({ 
            "Data Usage: "
        })
        output$Project1_custText3 <- renderText({ 
            ""
        })
        
        output$Project1_custText4 <- renderText({ 
            ""
        })
        
        txt1 <- "The original data is very detailed. The amount of energy generation will be categorized by year, energy source, and type of producer.\n"
        txt2 <- "\n\nFirst, we have the clean the data. Change the column name to something work on shiny. We have to eliminate the data that is not necessary for our usage. e.g. the generation is null, the state is US-TOTAL or US-Total. Also, we have to delete the type of producer column to remove the redundant data.\n"
        txt3 <- "\n\nSecond, we have to get the distinct value of years, states, and energy source. Those values will be used on filters in the user interface and as the replacement data in the server part for the customized option that are not in the data set. \n"
        
        txt4 <- "\n\nThird, we have to generate the data that match the form we want. 
                    (b) Energy generation of each energy source each year and  each state states
                    (a) Energy generation of each energy source in each year.
                    (c) the energy source of each energy source per state, the total energy generation per state, and total generation per year\n"
        txt5 <- "\n\n(a) is used for the amount presenting, The overview of the data. We still need to adjust the table by adding a column for the sum of the energy generation column by years. And add another column for the sum of the energy generation by years and states. \n"
        txt6 <- "\n\n(b) is based on (a). This data set is used for ratio presenting especially for line charts. We only keep one row for each state and year and remove the repeated column.  \n"
        txt7 <- "\n\n(c) is used for heatmaps. It contains the most columns. However, the heatmap needs very clean data, the data set should not have a repeated state(as the id). Therefore, we will delete some columns and remove duplicate rows by the condition of the data representation requirement.\n"
        
        output$tab1 <- renderUI({
            tagList(dataSource_url)
        })
        
        output$tab2 <- renderUI({
            tagList(list(shiny::HTML(gsub("\n", "<br/>", txt1)), img(src='img18.png', height = '300px'), 
                         shiny::HTML(gsub("\n", "<br/>", txt2)),
                         shiny::HTML(gsub("\n", "<br/>", txt3)), 
                         shiny::HTML(gsub("\n", "<br/>", txt4)), 
                         shiny::HTML(gsub("\n", "<br/>", txt5)),
                         shiny::HTML(gsub("\n", "<br/>", txt6)),
                         shiny::HTML(gsub("\n", "<br/>", txt6))
            ))
        })
        output$tab3 <- renderUI({
        })
        output$tab4 <- renderUI({
        })
    })
    
    #interesting things
    observeEvent(input$prject1_btn3, {
        output$Project1_header <- renderText({ 
            "Interesting Things"
        })
        #header
        output$Project1_header <- renderText({ 
            "5 Interesting Things"
        })
        
        #Sub Header
        output$Project1_subHeader1 <- renderText({ 
            ""
        })
        output$Project1_subHeader2 <- renderText({ 
            ""
        })  
        
        #cust text
        output$Project1_custText1 <- renderText({ 
            ""
        })
        output$Project1_custText2 <- renderText({ 
            ""
        })
        output$Project1_custText3 <- renderText({ 
            ""
        })
        
        output$Project1_custText4 <- renderText({ 
            ""
        })
        
        txt1 <- "In the past two decades, the percentage of each energy source changes a lot (Chart 1). However, it does not seems to affect the energy usage distribution for the whole country. The color distributes in chart 2 in a different year still looked the same. Therefore, I guess each state was all shifting their energy source from one to another.\n"
        txt2 <- "\n\nNatural gas was keeping replacing the coal. The amount (Chart 1) and percentage (Chart 2) of two energy sources crossed in 2015. It is a good thing. Since US Energy Information Administration website shows that Burning natural gas for energy results in fewer emissions of nearly all types of air pollutants and carbon dioxide (CO2) than burning coal or petroleum products to produce an equal amount of energy.\n"
        txt3 <- "\n\nThe amount of nuclear is increasing. It is reasonable, because nuclear is considered as a \"clean energy\", and also highly efficient. The amount of nuclear energy production increased from 1990 to 2019 (Chart 1). However, from the heat map, we can see some of the states used nuclear as an energy sourcein 1990 by they did not use it anymore in 2019 (Chart 2).\n"
        
        txt4 <- "\n\nThe energy from wind increased, although 600 million, compares to other energy sources, is very small (Chart 1). we still see that this kind of energy has become popular in most of the states from 1990 to 2019 (Chart 2).\n"
        txt5 <- "\n\nThe energy production of Texas keeps increasing. From data 1 chart 2, we can see that the total energy production in the US is almost saturation, so did most of the states. However, in Texas, we do not discover this sign. The increasing amount of energy production did not even slow down (Data 2 Chart 1). In Chart 2, we can see, the color of most states does not change a lot, but Texas seems to increase about 1/3.\n"
        
        output$tab1 <- renderUI({
            tagList(list(shiny::HTML(gsub("\n", "<br/>", txt1)), img(src='img13.png', height = '300px'), 
                         shiny::HTML(gsub("\n", "<br/>", txt2)), img(src='img14.png', height = '300px'), 
                         shiny::HTML(gsub("\n", "<br/>", txt3)), img(src='img15.png', height = '300px'), 
                         shiny::HTML(gsub("\n", "<br/>", txt4)), img(src='img16.png', height = '300px'), 
                         shiny::HTML(gsub("\n", "<br/>", txt5)), img(src='img17.png', height = '300px')
            ))
        })
        
        output$tab2 <- renderUI({
           
        })
        output$tab3 <- renderUI({
            
        })
        output$tab4 <- renderUI({
            
        })
        
    })
    
    #source code
    observeEvent(input$prject1_btn4, {
        #header
        output$Project1_header <- renderText({ 
            "Source Code"
        })
        
        #Sub Header
        output$Project1_subHeader1 <- renderText({ 
            "Source"
        })
        output$Project1_subHeader2 <- renderText({ 
            "SetUp"
        })  
        
        #cust text
        output$Project1_custText1 <- renderText({ 
            "Github Repository: "
        })
        output$Project1_custText2 <- renderText({ 
            "Install R: "
        })
        output$Project1_custText3 <- renderText({ 
            "Install Shiny: "
        })
        output$Project1_custText4 <- renderText({ 
            "Setup The Project: "
        })
        
        output$tab1 <- renderUI({
            tagList(git_url)
        })
        txt1 <- ". Click \"download R\".\n"
        txt2 <- "\n\nYou can select the default link \"0-Cloud\".\n"
        txt3 <- "\n\nDownload and install a version that match you OS.\n"
        
        txt4 <- "\n"
        txt5 <- "\n\nYou and down load the free version.\n"
        
        txt6 <- "Create a workspace folder that you want the project lacate at. Open the termial, set the direction the the created folder. Run the commendline \"git clone https://github.com/ychen856/cs424_project_1.git\". \n"
        txt7 <- "\n\nOpen the R studio and open the exixting file -> import cs424. \n Rstudio will tell you that you are missing some packages, click the auto install on the top of the frame to set them up. Then, you can click the \"Run App\" to start a localhost shiny project.\n"
        output$tab2 <- renderUI({
            tagList(list("Download the R from", r_url, shiny::HTML(gsub("\n", "<br/>", txt1)), img(src='img2.png', height = '300px'), 
                         shiny::HTML(gsub("\n", "<br/>", txt2)), img(src='img3.png', height = '300px'),
                         shiny::HTML(gsub("\n", "<br/>", txt3)), img(src='img4.png', height = '300px')
            ))
        })
        output$tab3 <- renderUI({
            tagList(list("Download R studio from", rStudio_url, shiny::HTML(gsub("\n", "<br/>", txt4)), img(src='img5.png', height = '300px'), 
                         shiny::HTML(gsub("\n", "<br/>", txt5)), img(src='img6.png', height = '300px')
            ))
        })
        output$tab4 <- renderUI({
            tagList(list(shiny::HTML(gsub("\n", "<br/>", txt6)), img(src='img1.png', height = '300px'),
                         shiny::HTML(gsub("\n", "<br/>", txt7)), img(src='img7.png', height = '300px')
                         
            ))
        })
    })

}

shinyApp(ui = ui, server = server)