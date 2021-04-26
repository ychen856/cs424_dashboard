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
                                                                 tags$div(class="subtitle", style = "padding: 2% 15%",
                                                                        textOutput("Project1_subHeader1")
                                                                 ),
                                                                 tags$div(class="text-content", style = "padding: 2% 15%",
                                                                        tags$div(
                                                                            tags$span(class="cust-text", textOutput("Project1_custText1")),
                                                                            tags$span(class="p-5", uiOutput("tab1"))
                                                                        )
                                                                 ),
                                                                 tags$div(class="subtitle", style = "padding: 2% 15%",
                                                                          textOutput("Project1_subHeader2")
                                                                 ),
                                                                 tags$div(class="text-content", style = "padding: 2% 15%",
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
                         ), #Total Amount page end
                         #project 2 start
                         tabPanel("Project 2", class="p-0",
                                  mainPanel( class="panel p-0",
                                             fluidRow(
                                               #content start
                                               column(12, class="p-0",
                                                      tags$div(class="card border-title shadow",
                                                               #card Start
                                                               tags$div(class="card-body",
                                                                        fluidRow(
                                                                          column(3, class="p-0  pl-10",
                                                                                 tags$div(class="title",
                                                                                          tags$span(
                                                                                            textOutput("Project2_header")
                                                                                            
                                                                                          )
                                                                                 )
                                                                          ),
                                                                          column(9, class="p-0 pt-5",
                                                                                 column(3,
                                                                                        tags$div(class="p-0 pt-5",
                                                                                                 actionButton("prject2_btn1", "Introduction and Description")
                                                                                        ) 
                                                                                 ),
                                                                                 column(3,
                                                                                        tags$div(class="p-0  pt-5",
                                                                                                 actionButton("prject2_btn2", "About the Data")
                                                                                        ) 
                                                                                 ),
                                                                                 column(3,
                                                                                        tags$div(class="p-0  pt-5",
                                                                                                 actionButton("prject2_btn3", "Interesting Things")
                                                                                        ) 
                                                                                 ),
                                                                                 column(3,
                                                                                        tags$div(class="p-0 pt-5",
                                                                                                 actionButton("prject2_btn4", "Source Code") 
                                                                                        ) 
                                                                                 )
                                                                                 
                                                                          )
                                                                          
                                                                        ), #Row End
                                                                        tags$div(class="subtitle", style = "padding: 2% 15%",
                                                                                 textOutput("Project2_subHeader1")
                                                                        ),
                                                                        tags$div(class="text-content", style = "padding: 2% 15%",
                                                                                 tags$div(
                                                                                   tags$span(class="cust-text", textOutput("Project2_custText1")),
                                                                                   tags$span(class="p-5", uiOutput("tab1_2"))
                                                                                 )
                                                                        ),
                                                                        tags$div(class="subtitle", style = "padding: 2% 15%",
                                                                                 textOutput("Project2_subHeader2")
                                                                        ),
                                                                        tags$div(class="text-content", style = "padding: 2% 15%",
                                                                                 tags$div(
                                                                                   tags$span(class="cust-text", textOutput("Project2_custText2")),
                                                                                   tags$span(class="p-5", uiOutput("tab2_2")),
                                                                                   tags$br(),tags$br(),
                                                                                   tags$span(class="cust-text", textOutput("Project2_custText3")),
                                                                                   tags$span(class="p-5", uiOutput("tab3_2")),
                                                                                   tags$br(),tags$br(),
                                                                                   tags$span(class="cust-text", textOutput("Project2_custText4")),
                                                                                   tags$span(class="p-5", uiOutput("tab4_2")),
                                                                                   
                                                                                 )
                                                                        )
                                                               )
                                                      )
                                               )#content end
                                               
                                             )
                                  )
                         ), #project 2 page end
                        #Total Amount page start
                        tabPanel("Project 3", class="p-0",
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
                                                                        textOutput("Project3_header")
                                                                                       
                                                                    )
                                                                )
                                                            ),
                                                            column(9, class="p-0 pt-5",
                                                                column(3,
                                                                    tags$div(class="p-0 pt-5",
                                                                        actionButton("prject3_btn1", "Introduction and Description")
                                                                    ) 
                                                                ),
                                                                column(3,
                                                                    tags$div(class="p-0  pt-5",
                                                                        actionButton("prject3_btn2", "About the Data")
                                                                   ) 
                                                                ),
                                                                column(3,
                                                                    tags$div(class="p-0  pt-5",
                                                                        actionButton("prject3_btn3", "Interesting Things")
                                                                    ) 
                                                                ),
                                                                column(3,
                                                                    tags$div(class="p-0 pt-5",
                                                                        actionButton("prject3_btn4", "Source Code") 
                                                                    ) 
                                                                )
                                                                                
                                                            )
                                                                        
                                                        ), #Row End
                                                        tags$div(class="subtitle", style = "padding: 2% 15%",
                                                            textOutput("Project3_subHeader1")
                                                        ),
                                                        tags$div(class="text-content", style = "padding: 2% 15%",
                                                            tags$div(
                                                                tags$span(class="cust-text", textOutput("Project3_custText1")),
                                                                tags$span(class="p-5", uiOutput("tab1_3"))
                                                            )
                                                        ),
                                                        tags$div(class="subtitle", style = "padding: 2% 15%",
                                                            textOutput("Project3_subHeader2")
                                                        ),
                                                        tags$div(class="text-content", style = "padding: 2% 15%",
                                                            tags$div(
                                                                tags$span(class="cust-text", textOutput("Project3_custText2")),
                                                                tags$span(class="p-5", uiOutput("tab2_3")),
                                                                tags$br(),tags$br(),
                                                                tags$span(class="cust-text", textOutput("Project3_custText3")),
                                                                tags$span(class="p-5", uiOutput("tab3_3")),
                                                                tags$br(),tags$br(),
                                                                tags$span(class="cust-text", textOutput("Project3_custText4")),
                                                                tags$span(class="p-5", uiOutput("tab4_3")),
                                                                              
                                                            )
                                                        )
                                                    )
                                                )
                                            )#Total Amount of Energy Generation end
                                                 
                                        )
                                    )
                         ), #Total Amount page end 
                        #Student's Choice start
                         tabPanel("Student's Choice", class="p-0",
                                  mainPanel( class="panel p-0",
                                             fluidRow(
                                               #content start
                                               column(12, class="p-0",
                                                      tags$div(class="card border-title shadow",
                                                               #card Start
                                                               tags$div(class="card-body",
                                                                        fluidRow(
                                                                          column(11, class="p-0  pl-10",
                                                                                 tags$div(class="title",
                                                                                          tags$span(
                                                                                            textOutput("student_choice_header")
                                                                                            
                                                                                          )
                                                                                 )
                                                                          ),
                                                                          column(1, class = "p-0  pl-10",
                                                                            "04/08/2021"
                                                                          )
                                                                        ), #Row End


                                                                        #picture
                                                                        tags$div(class="text-content", style = "padding: 0% 15%",
                                                                                 tags$div(
                                                                                   tags$span(class="p-5", uiOutput("student_choice_header_pic"))
                                                                                 )
                                                                        ),
                                                                        tags$div(class="text-content", style = "padding: 2% 15%",
                                                                                 tags$div(
                                                                                   tags$span(class="cust-text", textOutput("student_custText1")),
                                                                                   tags$span(class="p-5", uiOutput("student_video"))
                                                                                )
                                                                        ),
                                                                        
                                                                        #purpose
                                                                        tags$div(class="subtitle", style = "padding: 1% 15%",
                                                                                 textOutput("student_choice_subHeader1")
                                                                        ),
                                                                        tags$div(class="text-content", style = "padding: 1% 15%",
                                                                                   tags$span(class="p-5", uiOutput("student_choice_header_content1"))
                                                                        ),


                                                                        #how data collected
                                                                        tags$div(class="subtitle", style = "padding: 1% 15%",
                                                                                 textOutput("student_choice_subHeader3")
                                                                        ),
                                                                        tags$div(class="text-content", style = "padding: 1% 15%",
                                                                                   tags$span(class="p-5", uiOutput("student_choice_header_content3"))
                                                                        ),


                                                                        #About data
                                                                        tags$div(class="subtitle", style = "padding: 1% 15%",
                                                                                 textOutput("student_choice_subHeader2")
                                                                        ),
                                                                        tags$div(class="text-content", style = "padding: 1% 15%",
                                                                                   tags$span(class="p-5", uiOutput("student_choice_header_content2"))
                                                                        ),

                                                                        #user
                                                                        tags$div(class="subtitle", style = "padding: 1% 15%",
                                                                                 textOutput("student_choice_subHeader4")
                                                                        ),
                                                                        tags$div(class="text-content", style = "padding: 1% 15%",
                                                                                   tags$span(class="p-5", uiOutput("student_choice_header_content4"))
                                                                        ),

                                                                        #Q & A
                                                                        tags$div(class="subtitle", style = "padding: 1% 15%",
                                                                                 textOutput("student_choice_subHeader5")
                                                                        ),
                                                                        tags$div(class="text-content", style = "padding: 1% 15%",
                                                                                tags$span(class="cust-text", textOutput("student_choice_custText1")),
                                                                                tags$span(class="p-5", uiOutput("student_choice_header_content5"))
                                                                        ),
                                                                        tags$div(class="text-content", style = "padding: 1% 15%",
                                                                                tags$span(class="p-5", uiOutput("student_choice_header_content5_2"))
                                                                        ),

                                                                        tags$div(class="text-content", style = "padding: 1% 15%",
                                                                                tags$span(class="cust-text", textOutput("student_choice_custText2")),
                                                                                tags$span(class="p-5", uiOutput("student_choice_header_content5_3"))
                                                                        ),
                                                                        tags$div(class="text-content", style = "padding: 1% 15%",
                                                                                tags$span(class="p-5", uiOutput("student_choice_header_content5_4"))
                                                                        ),
                                                                        tags$div(class="text-content", style = "padding: 1% 15%",
                                                                                tags$span(class="cust-text", textOutput("student_choice_custText3")),
                                                                                tags$span(class="p-5", uiOutput("student_choice_header_content5_5"))
                                                                        ),

                                                                        tags$div(class="subtitle", style = "padding: 1% 15%",
                                                                                 textOutput("student_choice_subHeader6")
                                                                        ),
                                                                        tags$div(class="text-content", style = "padding: 1% 15%",
                                                                                tags$span(class="p-5", uiOutput("student_choice_header_content5_6"))
                                                                        ),
                                                                        tags$div(class="text-content", style = "padding: 1% 15%",
                                                                                tags$span(class="p-5", uiOutput("student_choice_header_content5_7"))
                                                                        ),
                                                                        tags$div(class="text-content", style = "padding: 1% 15%",
                                                                                tags$span(class="p-5", uiOutput("student_choice_header_content5_8"))
                                                                        ),
                                                                        tags$div(class="text-content", style = "padding: 1% 15%",
                                                                                tags$span(class="p-5", uiOutput("student_choice_header_content5_9"))
                                                                        ),
                                                                        tags$div(class="text-content", style = "padding: 1% 15%",
                                                                                tags$span(class="p-5", uiOutput("student_choice_header_content5_10"))
                                                                        ),
                                                                        tags$div(class="text-content", style = "padding: 1% 15%",
                                                                                tags$span(class="p-5", uiOutput("student_choice_header_content5_11"))
                                                                        ),
                                                                        tags$div(class="text-content", style = "padding: 1% 15%",
                                                                                tags$span(class="p-5", uiOutput("student_choice_header_content5_12"))
                                                                        ),

                                                                        tags$div(class="subtitle", style = "padding: 1% 15%",
                                                                                 textOutput("student_choice_subHeader7")
                                                                        ),
                                                                        tags$div(class="text-content", style = "padding: 1% 15%",
                                                                                tags$span(class="p-5", uiOutput("student_choice_header_content5_13"))
                                                                        )
                                                               )
                                                      )
                                               )#content end
                                               
                                             )
                                  )
                         ) #Student's Choice end
                         
                )
              
    )
)

server <- function(input, output) {
##########################################
    #project 1
    #####################################
    git_url <- a("https://github.com/ychen856/cs424_project_1.git", href="https://github.com/ychen856/cs424_project_1.git")
    r_url <- a("https://www.r-project.org/", "https://www.r-project.org/")
    rStudio_url <- a("https://rstudio.com/products/rstudio/", href="https://rstudio.com/products/rstudio/")
    project_url <- a("https://ychen514.shinyapps.io/cs424_project_1/", href="https://ychen514.shinyapps.io/cs424_project_1/")
    video_url <- a("https://youtu.be/uFQpZoTaYoc", href="https://youtu.be/uFQpZoTaYoc")
    dataSource_url <- a("https://www.evl.uic.edu/aej/424/annual_generation_state.csv", href="https://www.evl.uic.edu/aej/424/annual_generation_state.csv")
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
                         shiny::HTML(gsub("\n", "<br/>", txt7))
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

    ##############################################
    #project 2
    ##############################################
    git_url_2 <- a("https://github.com/ychen856/cs424_project_2.git", href="https://github.com/ychen856/cs424_project_2.git")
    r_url_2 <- a("https://www.r-project.org/", href="https://www.r-project.org/")
    rStudio_url_2 <- a("https://rstudio.com/products/rstudio/", href="https://rstudio.com/products/rstudio/")
    project_url_2 <- a("https://ychen514.shinyapps.io/cs424_project_2/", href="https://ychen514.shinyapps.io/cs424_project_2/")
    video_url_2 <- a("https://youtu.be/GBBLsuShUsk", href="https://youtu.be/GBBLsuShUsk")
    dataSource_url_2 <- a("https://www.epa.gov/egrid/download-data", href="https://www.epa.gov/egrid/download-data")

    #header
    output$Project2_header <- renderText({ 
        "Introduction and Description"
    })
    
    #Sub Header
    output$Project2_subHeader1 <- renderText({ 
        "Access the project: "
    })
    output$Project2_subHeader2 <- renderText({ 
        "About this project: "
    })  
    
    #cust text
    output$Project2_custText1 <- renderText({ 
        "Demo URL: "
    })
    output$Project2_custText2 <- renderText({ 
        "Introduction Video: "
    })
    output$Project2_custText3 <- renderText({ 
        ""
    })
    
    output$Project2_custText4 <- renderText({ 
        ""
    })

    txt1_2 <- "The project is to make people have a clear view of energy plant distribution in the US in past few years. \n
                The first page is focusing on the location of energy plants in Illinois 2018. The location markers are categorized by different colors to represent the different energy sources. In the check box, it allows people to select all energy sources, renewable energy sources, and non-renewable energy sources. Every marker is 0.5 opacity, so if two energy sources sit on the same location. You can see its color is different from others. And you can zoom in, markers' slightly shift. You can see which energy sources are there. If you zoom in or zoom out a lot and cannot locate yourself. The \"Reset view\" button can help you return to the original location.\n"

    txt2_2 <- "\n\nOn the second page, it allows you to compare two maps. In each map, you can choose years, states, energy sources, and types of map. If the sync checkbox is unselected, energy source options can only affect its side. If the sync button is selected, the energy source checkboxes will affect both sides. Ether you pick the left checkboxes or right checkboxes. The reset view button also available in both maps. \n"
    
    txt3_2 <- "\n\nThe \"energy plants in US\" page gives you more options to filter out the data. It provides years, states (50 states + the full US), energy sources, and energy generation range. You have two ways to use the sliders. First, the default is to bypass the between values. The left slider is to select the minimum value in this range, and the right slider is to select the maximum value in this range. Two sliders work together to guarantee that you can select range whatever you want. The second way, bypass values that are smaller than the left slider or larger than the right slider. Two sliders also work together and every combination is available.\n"
    
    txt4_2 <- "\n\nThe \"idle & new plants page\", allows you to see the new and idle plants in the selected year compares to the previous dataset. For example, if you choose 2018, the previous dataset is 2010. The new plants mean they did not exist in 2010, and they existed in 2018. The idle plants mean that they worked in 2010 but being idle in 2018. If you choose 2010, then it will compare to 2000.\n"

    output$tab1_2 <- renderUI({
        tagList(project_url_2)
    })
    
    output$tab2_2 <- renderUI({
        tagList(video_url_2)
    })
    output$tab3_2 <- renderUI({
        tagList(list(shiny::HTML(gsub("\n", "<br/>", txt1_2)), img(src='img2_1.png', height = '300px'), img(src='img2_2.png', height = '300px'), 
                     shiny::HTML(gsub("\n", "<br/>", txt2_2)), img(src='img2_3.png', height = '300px'), img(src='img2_4.png', height = '300px'), 
                     shiny::HTML(gsub("\n", "<br/>", txt3_2)), img(src='img2_5.png', height = '300px'), img(src='img2_6.png', height = '300px'), 
                     shiny::HTML(gsub("\n", "<br/>", txt4_2)), img(src='img2_7.png', height = '300px'), img(src='img2_8.png', height = '300px')
        ))
    })
    output$tab4_2 <- renderUI({
        tagList(list(
  
        ))
    })

    ##################################################
    #intro
    observeEvent(input$prject2_btn1, { 
         #header
        output$Project2_header <- renderText({ 
            "Introduction and Description"
        })
    
        #Sub Header
        output$Project2_subHeader1 <- renderText({ 
            "Access the project: "
        })
        output$Project2_subHeader2 <- renderText({ 
            "About this project: "
        })  
    
        #cust text
        output$Project2_custText1 <- renderText({ 
            "Demo URL: "
        })
        output$Project2_custText2 <- renderText({ 
            "Introduction Video: "
        })
        output$Project2_custText3 <- renderText({ 
            ""
        })
    
        output$Project2_custText4 <- renderText({ 
            ""
        })
        
        txt1_2 <- "The project is to make people have a clear view of energy plant distribution in the US in past few years. \n
                The first page is focusing on the location of energy plants in Illinois 2018. The location markers are categorized by different colors to represent the different energy sources. In the check box, it allows people to select all energy sources, renewable energy sources, and non-renewable energy sources. Every marker is 0.5 opacity, so if two energy sources sit on the same location. You can see its color is different from others. And you can zoom in, markers' slightly shift. You can see which energy sources are there. If you zoom in or zoom out a lot and cannot locate yourself. The \"Reset view\" button can help you return to the original location.\n"

        txt2_2 <- "\n\nOn the second page, it allows you to compare two maps. In each map, you can choose years, states, energy sources, and types of map. If the sync checkbox is unselected, energy source options can only affect its side. If the sync button is selected, the energy source checkboxes will affect both sides. Ether you pick the left checkboxes or right checkboxes. The reset view button also available in both maps. \n"
    
        txt3_2 <- "\n\nThe \"energy plants in US\" page gives you more options to filter out the data. It provides years, states (50 states + the full US), energy sources, and energy generation range. You have two ways to use the sliders. First, the default is to bypass the between values. The left slider is to select the minimum value in this range, and the right slider is to select the maximum value in this range. Two sliders work together to guarantee that you can select range whatever you want. The second way, bypass values that are smaller than the left slider or larger than the right slider. Two sliders also work together and every combination is available.\n"
    
        txt4_2 <- "\n\nThe \"idle & new plants page\", allows you to see the new and idle plants in the selected year compares to the previous dataset. For example, if you choose 2018, the previous dataset is 2010. The new plants mean they did not exist in 2010, and they existed in 2018. The idle plants mean that they worked in 2010 but being idle in 2018. If you choose 2010, then it will compare to 2000.\n"

        output$tab1_2 <- renderUI({
            tagList(project_url_2)
        })
    
        output$tab2_2 <- renderUI({
            tagList(video_url_2)
        })
        output$tab3_2 <- renderUI({
            tagList(list(shiny::HTML(gsub("\n", "<br/>", txt1_2)), img(src='img2_1.png', height = '300px'), img(src='img2_2.png', height = '300px'), 
                     shiny::HTML(gsub("\n", "<br/>", txt2_2)), img(src='img2_3.png', height = '300px'), img(src='img2_4.png', height = '300px'), 
                     shiny::HTML(gsub("\n", "<br/>", txt3_2)), img(src='img2_5.png', height = '300px'), img(src='img2_6.png', height = '300px'), 
                     shiny::HTML(gsub("\n", "<br/>", txt4_2)), img(src='img2_7.png', height = '300px'), img(src='img2_8.png', height = '300px')
            ))
        })
        output$tab4_2 <- renderUI({
            tagList(list(
            
            ))
        })
    })
    
    #data
    observeEvent(input$prject2_btn2, {
        #header
        output$Project2_header <- renderText({ 
            "About the Data"
        })
        
        #Sub Header
        output$Project2_subHeader1 <- renderText({ 
            ""
        })
        output$Project2_subHeader2 <- renderText({ 
            ""
        })  
        
        #cust text
        output$Project2_custText1 <- renderText({ 
            "Data Source: "
        })
        output$Project2_custText2 <- renderText({ 
            "Data Usage: "
        })
        output$Project2_custText3 <- renderText({ 
            ""
        })
        
        output$Project2_custText4 <- renderText({ 
            ""
        })
        
        txt1 <- "The data of 2000 is from the \"eGRID historical files (1996-2016) (ZIP)\" link, eGRID2000_plant.xls file/EGRDPLNT00 tab.\n"
        txt2 <- "2010 is from the \"Download eGRID historical files (1996-2016) (ZIP)\" link, eGRID2010_Data.xls file/EGRDPLNT10 tab.\n"
        txt3 <- "2018 is from the \"Download eGRID2018v2 Data File (XLSX)\" link, eGRID2000_plant.xls file, and its EGRDPLNT00 tab.\n"
        
        txt4 <- "\n\nEach dataset has a huge number of columns. First, we have to eliminate those columns that will not be used in our project.\n"
        txt5 <- "\n\nSince all data are in type character. We need to convert every generation, latitude, lontitude, renewable/non-renewable percentage into a number type. Then we have to delete rows whose longitude or a latitude is null. \n"
        txt6 <- "\n\nSince the leaflet still shows the maker when the value is zero. In this case, we don't want to show them because zero means that this plant is not that energy plant, it should not appear on the map when the checkbox selects that source. Then, we have to make generation data that are 0 to N/A, so the leaflet will not show that plant.  \n"
        txt7 <- "\n\nBecause we have a page requires to compare the current dataset and the previous dataset. We need to compare data by the ORIS_CODE column.\n"
        txt8 <- "\n\nWhen we need to color each maker by type, we have to melt the generation columns into one column and add a new column to indicate their type. And listen to the checkbox, only bind columns that their type is selected into a new table that can apply to leaflet function.\n"
        
        output$tab1_2 <- renderUI({
            tagList(dataSource_url_2)
        })

        output$tab2_2 <- renderUI({
            tagList(list(shiny::HTML(gsub("\n", "<br/>", txt1)),
                         shiny::HTML(gsub("\n", "<br/>", txt2)),
                         shiny::HTML(gsub("\n", "<br/>", txt3)), img(src='img2_14.png', height = '300px'),
                         shiny::HTML(gsub("\n", "<br/>", txt4)), img(src='img2_13.png', height = '300px'),
                         shiny::HTML(gsub("\n", "<br/>", txt5)),
                         shiny::HTML(gsub("\n", "<br/>", txt6)),
                         shiny::HTML(gsub("\n", "<br/>", txt7)),
                         shiny::HTML(gsub("\n", "<br/>", txt8))
            ))
        })
        output$tab3_2 <- renderUI({
        })
        output$tab4_2 <- renderUI({
        })
    })
    
    #interesting things
    observeEvent(input$prject2_btn3, {
        output$Project2_header <- renderText({ 
            "Interesting Things"
        })
        #header
        output$Project2_header <- renderText({ 
            "5 Interesting Things"
        })
        
        #Sub Header
        output$Project2_subHeader1 <- renderText({ 
            ""
        })
        output$Project2_subHeader2 <- renderText({ 
            ""
        })  
        
        #cust text
        output$Project2_custText1 <- renderText({ 
            ""
        })
        output$Project2_custText2 <- renderText({ 
            ""
        })
        output$Project2_custText3 <- renderText({ 
            ""
        })
        
        output$Project2_custText4 <- renderText({ 
            ""
        })
        
        txt1 <- "There are many new plants in 2000~2010 and 2010~2018, but their energy source has lots of difference. New plants from 2000 to 2010, focus on gas generation. And most of the new plants from 2010 to 2018 use wind as the source. Wind always has a lower number of productions in each plant, but they have a higher density than plants that use non-renewable energy sources.\n"
        txt2 <- "\n\nThe west coast and east coast have high density and number of plants and few of them using coal. The Mideast also has a huge amount of energy generation and most of them using coal. And the Midwest has few plants compare to other areas. \n"
        txt3 <- "\n\nThe plants that have high energy generation, most of them using biomass,  hydro, coal, and gas as the source. \n"
        
        
        output$tab1_2 <- renderUI({
            tagList(list(shiny::HTML(gsub("\n", "<br/>", txt1)), img(src='img2_9.png', height = '300px'), img(src='img2_10.png', height = '300px'),
                         shiny::HTML(gsub("\n", "<br/>", txt2)), img(src='img2_11.png', height = '300px'), 
                         shiny::HTML(gsub("\n", "<br/>", txt3)), img(src='img2_12.png', height = '300px')
            ))
        })
        
        output$tab2_2 <- renderUI({
           
        })
        output$tab3_2 <- renderUI({
            
        })
        output$tab4_2 <- renderUI({
            
        })
        
    })
    
    #source code
    observeEvent(input$prject2_btn4, {
        #header
        output$Project2_header <- renderText({ 
            "Source Code"
        })
        
        #Sub Header
        output$Project2_subHeader1 <- renderText({ 
            "Source"
        })
        output$Project2_subHeader2 <- renderText({ 
            "SetUp"
        })  
        
        #cust text
        output$Project2_custText1 <- renderText({ 
            "Github Repository: "
        })
        output$Project2_custText2 <- renderText({ 
            "Install R: "
        })
        output$Project2_custText3 <- renderText({ 
            "Install Shiny: "
        })
        output$Project2_custText4 <- renderText({ 
            "Setup The Project: "
        })
        
        output$tab1_2 <- renderUI({
            tagList(git_url_2)
        })
        txt1 <- ". Click \"download R\".\n"
        txt2 <- "\n\nYou can select the default link \"0-Cloud\".\n"
        txt3 <- "\n\nDownload and install a version that match you OS.\n"
        
        txt4 <- "\n"
        txt5 <- "\n\nYou and down load the free version.\n"
        
        txt6 <- "Create a workspace folder that you want the project lacate at. Open the termial, set the direction the the created folder. Run the commendline \"git clone https://github.com/ychen856/cs424_project_2.git\". \n"
        txt7 <- "\n\nOpen the R studio and open the exixting file -> import cs424. \n Rstudio will tell you that you are missing some packages, click the auto install on the top of the frame to set them up. Then, you can click the \"Run App\" to start a localhost shiny project.\n"
        output$tab2_2 <- renderUI({
            tagList(list("Download the R from", r_url_2, shiny::HTML(gsub("\n", "<br/>", txt1)), img(src='img2.png', height = '300px'), 
                         shiny::HTML(gsub("\n", "<br/>", txt2)), img(src='img3.png', height = '300px'),
                         shiny::HTML(gsub("\n", "<br/>", txt3)), img(src='img4.png', height = '300px')
            ))
        })
        output$tab3_2 <- renderUI({
            tagList(list("Download R studio from", rStudio_url, shiny::HTML(gsub("\n", "<br/>", txt4)), img(src='img5.png', height = '300px'), 
                         shiny::HTML(gsub("\n", "<br/>", txt5)), img(src='img6.png', height = '300px')
            ))
        })
        output$tab4_2 <- renderUI({
            tagList(list(shiny::HTML(gsub("\n", "<br/>", txt6)),
                         shiny::HTML(gsub("\n", "<br/>", txt7))
                         
            ))
        })
    })

    ##############################################
    #Student's choice
    ##############################################
    
    student_choice_video_url <- a("https://youtu.be/na7XfpEWjyY", href="https://youtu.be/na7XfpEWjyY")
    
    #header
    output$student_choice_header <- renderText({ 
        "Student's Choice Analyze"
    })
    
    #Sub Header
    output$student_choice_subHeader1 <- renderText({ 
        "Purpose: "
    })
    output$student_choice_subHeader2 <- renderText({ 
        "About the Data: "
    })  
    
    output$student_choice_subHeader3 <- renderText({ 
        "How Data Collected: "
    })
    output$student_choice_subHeader4 <- renderText({ 
        "Who will be the user: "
    })
    output$student_choice_subHeader5 <- renderText({ 
        "What can we ask and answer in the virtualization:"
    })
    output$student_choice_subHeader6 <- renderText({ 
        "Features:"
    })
    output$student_choice_subHeader7 <- renderText({ 
        "What Needs Improvement:"
    })
    
    output$student_custText1 <- renderText({ 
        "Video Link: "
    })
    output$student_video <- renderUI({
        tagList(student_choice_video_url)
    })


    output$student_choice_custText1 <- renderText({
        "Since the 5G network is popular recently. We may curious about where the 5G network starts covering? Is the countryside also construct this kind of network?"
    })
    output$student_choice_custText2 <- renderText({
        "If a place has constructed a 5G network, does it means that that place has better internet speed?"
    })
    output$student_choice_custText3 <- renderText({ 
        "If I travel to a new place, which service provider should I select?"
    })

    txt1_1 <- "In recent decades, wireless and mobile internet is more and more important. We care about the signal strength and transmission rate. We don't like slow or unstable internet. Therefore, we prefer to choose an internet service provider that has wide coverage and a great rate. \n
                With this virtualization, we can have a great sense of which service provider and what kind of network cover in this area. \n
                Also, we can learn the transmission rate in this area. \n
                This virtualization allows us to see the data of most of the country. When we select the country and the internet service provider, we can see 2G, 3G, 4G, 4g+, and 5G coverage on the map in a different color. It also provides a bit rate data map. \n\n
                The left picture is the topology of the first internet that was developed in 1969. And the right picture is the representation of the internet in 2005. \n\n"

    txt2_2 <- "The data is from the user test results from the nPerf speed test app, so I download the app to check out what this application does and which information the company can learn from my test.\n
                In my investigation, if we run the full speed test, the application can learn our technology (wifi, 2G, 3G, etc), service provider (which company provides the plan ), network (actual service provider), download rate, upload rate, and latency. \n 
                And this virtualization is kind of real-time. The webpage says that the coverage map will be updated every hour. Speed up map will be updated every 15 minutes. Those data are displayed in the following two years. The oldest data is removed from the maps once a month. In my opinion, this is understandable, the network coverage will not change very fast. Sometimes it will take weeks, months, or years. While the rate data may change in a short time since the different levels of congestion may happen at any time. \n\n
                The following photo is a screenshot from my phone, is the result of the nPerf speed test. In the photo, we can see what data the company can collect.\n\n"
    
    txt3_2 <- "The data was collected by nPerf company, which launched a network speed test application. And they gather those data from users of the nPerf app and display those test results in this virtualization.\n
                The virtualization update time shows at the bottom left of the virtualization."
    
    txt4_2 <- "When we travel to a new country and stay a long while. We need a mobile phone number and cellular internet. However, we usually have no idea which service provider is can offer a fast and stable communication service. Although, every service provider posts their network coverage map on their website. It is tedious to check out all of them. Moreover, the transmission rate the service provider claims may be different in realizing because that data is ideal. \n  
                Therefore, people who have no idea about which service they can choose, who want to know what is signal strength in areas, and who is interested in investigating the network can use this virtualization.\n"

    txt5_1 <- "In common sense, we believe that big cities will first start to construct the 5G network. It can be proved in this virtualization. For example, the IL state. Since my service provider is T-mobile, so I select the T-mobile network coverage. Downtown Chicago has 5G and 4G+ coverage. The farther the location from the middle of the city, the network becomes 4G. \n\n"
    txt5_2 <- "And see the other country, Taiwan. I use Taiwan mobile service, so we see its coverage virtualization. Most of the population is in the west because the east part full of high mountains. The 5G network is concentrating distributes at the west, other locations using 4G+, and a few places in the middle of the mountain using 4G network. \n\n"
    txt5_3 <- "In this virtualization, we can see that the 5G coverage does not necessarily have a better speed but is probable agree. The network is complicated and there is a lot of factors that may affect the speed. Like, is many people are using and connecting to the same route? If many people are using the same route, there may have network congestion. How far you are from the base stating? If you are far from the base stating, your signal strength may be small and easy to be affected by noise. \n\n
                The following is an area in Chicago, the upper is the network coverage virtualization, and the lower is the bit rate virtualization. The area in the black rectangle, the network is 5G, and the bit rate is around 1G. On the other hand, the area that the arrow points to also has a 5G network, but the bit rate is not as good as other areas. \n\n"
    txt5_4 <- "Although the rate and network type may not totally agree with each other. If we zoom out to the whole US. The rate that reaches 1G mostly is the location that has a 5G network. However, this can not prove that the 5G network makes the bit rate faster even though it is the reason we switch to the 5G network. Because the 5G network locates in big cities, they may construct more networks than other areas. They have more base stations and more routing paths, so the signal can be more stable, the bandwidth can be wider, and less congestion. \n\n"
    txt5_5 <- "With this virtualization, we can easily select a country and service providers. It can help us to make our decision. \n\n"
    
    txt5_6 <- "1. We can select different countries we want to investigate\n"
    txt5_7 <- "2. We can select different service providers. The service providers are corresponding to the country you select.\n"
    txt5_8 <- "3. We can choose Network coverage virtualization. This virtualization has a icon legend to represent different network types\n"
    txt5_9 <- "4. We can choose Download bitrates virtualization. This virtualization has a legend from blue to red to represent the bit rate\n"
    txt5_10 <- "5. The update time shows at the bottom left of the map\n"
    txt5_11 <- "6. The map is zoomable, pinnable\n"
    txt5_12 <- "7. There have two map types to choose. One is the simple map, and another is the detailed map\n"

    txt5_13 <- "We can only select one country and one service provider at a time, so we cannot have a global view and the whole internet.\n\n"
    txt5_14 <- "The distribution of the network coverage virtualization looks normal when zooming out, but when we have a closer view, we will find out that most of the data are in the middle of the road. I'm not sure is that because that most people test their internet outdoor, or they do some adjusting to the location.\n\n"
    txt5_15 <- "The data source is not enough. Since the data is collected from the user of uPerf, some area that has less user using this application cannot represent the reality.\n\n"

    output$tab2_2 <- renderUI({
        tagList(video_url_2)
    })
    output$student_choice_header_pic <- renderUI({
        tagList(list(img(src='img19.png', width = '100%')
        ))
    })
    output$student_choice_header_content1 <- renderUI({
        tagList(list(shiny::HTML(gsub("\n", "<br/>", txt1_1)), img(src='img25.png', width = '45%'), img(src='img23.png', width = '45%')
        ))
    })
    output$student_choice_header_content2 <- renderUI({
        tagList(list(shiny::HTML(gsub("\n", "<br/>", txt2_2)), img(src='img24.png', width = '40%')
        ))
    })
    output$student_choice_header_content3 <- renderUI({
        tagList(list(shiny::HTML(gsub("\n", "<br/>", txt3_2))
        ))
    })
    output$student_choice_header_content4 <- renderUI({
        tagList(list(shiny::HTML(gsub("\n", "<br/>", txt4_2))
        ))
    })

    output$student_choice_header_content5 <- renderUI({
        tagList(list(shiny::HTML(gsub("\n", "<br/>", txt5_1)), img(src='img26.png', width = '100%')
        ))
    })

    output$student_choice_header_content5_2 <- renderUI({
        tagList(list(
            shiny::HTML(gsub("\n", "<br/>", txt5_2)), img(src='img27.png', width = '100%')
        ))
    })

    output$student_choice_header_content5_3 <- renderUI({
        tagList(list(
            shiny::HTML(gsub("\n", "<br/>", txt5_3)), img(src='img29.png', width = '100%'), img(src='img28.png', width = '100%')
        ))
    })

    output$student_choice_header_content5_4 <- renderUI({
        tagList(list(
            shiny::HTML(gsub("\n", "<br/>", txt5_4)), img(src='img30.png', width = '100%'), img(src='img31.png', width = '100%')
        ))
    })

    output$student_choice_header_content5_5 <- renderUI({
        tagList(list(
            shiny::HTML(gsub("\n", "<br/>", txt5_5))
        ))
    })

    output$student_choice_header_content5_6 <- renderUI({
        tagList(list(
            shiny::HTML(gsub("\n", "<br/>", txt5_6)), img(src='img32.png', width = '15%' )
        ))
    })

    output$student_choice_header_content5_7 <- renderUI({
        tagList(list(
            shiny::HTML(gsub("\n", "<br/>", txt5_7)), img(src='img33.png', width = '15%' )
        ))
    })

    output$student_choice_header_content5_8 <- renderUI({
        tagList(list(
            shiny::HTML(gsub("\n", "<br/>", txt5_8)), img(src='img34.png', width = '50%' )
        ))
    })

    output$student_choice_header_content5_9 <- renderUI({
        tagList(list(
            shiny::HTML(gsub("\n", "<br/>", txt5_9)), img(src='img35.png', width = '50%' )
        ))
    })
    output$student_choice_header_content5_10 <- renderUI({
        tagList(list(
            shiny::HTML(gsub("\n", "<br/>", txt5_10)), img(src='img38.png', width = '50%' )
        ))
    })

    output$student_choice_header_content5_11 <- renderUI({
        tagList(list(
            shiny::HTML(gsub("\n", "<br/>", txt5_11))
        ))
    })
    output$student_choice_header_content5_12 <- renderUI({
        tagList(list(
            shiny::HTML(gsub("\n", "<br/>", txt5_12)), img(src='img36.png', width = '40%'), img(src='img37.png', width = '40%')
        ))
    })
    output$student_choice_header_content5_13 <- renderUI({
        tagList(list(
            shiny::HTML(gsub("\n", "<br/>", txt5_13)),
            shiny::HTML(gsub("\n", "<br/>", txt5_14)),
            shiny::HTML(gsub("\n", "<br/>", txt5_15))
        ))
    })


    ##############################
            # project 3
    ##############################
    ##########################################
    #project 1
    #####################################
    git_url_3 <- a("https://github.com/ychen856/cs424_project_3.git", href="https://github.com/ychen856/cs424_project_3.git")
    r_url_3 <- a("https://www.r-project.org/", "https://www.r-project.org/")
    rStudio_url_3 <- a("https://rstudio.com/products/rstudio/", href="https://rstudio.com/products/rstudio/")
    project_url_3 <- a("https://ychen514.shinyapps.io/cs424_project_3/", href="https://ychen514.shinyapps.io/cs424_project_3/")
    video_url_3 <- a("https://youtu.be/y0PGkAf-6y4", href="https://youtu.be/y0PGkAf-6y4")
    dataSource_url_3 <- a("https://data.cityofchicago.org/Environment-Sustainable-Development/Energy-Usage-2010/8yq3-m6wp", href="https://data.cityofchicago.org/Environment-Sustainable-Development/Energy-Usage-2010/8yq3-m6wp")
    #header
    output$Project3_header <- renderText({ 
        "Introduction and Description"
    })
    
    #Sub Header
    output$Project3_subHeader1 <- renderText({ 
        "Access the project: "
    })
    output$Project3_subHeader2 <- renderText({ 
        "About this project: "
    })  
    
    #cust text
    output$Project3_custText1 <- renderText({ 
        "Demo URL: "
    })
    output$Project3_custText2 <- renderText({ 
        "Introduction Video: "
    })
    output$Project3_custText3 <- renderText({ 
        ""
    })
    
    output$Project3_custText4 <- renderText({ 
        ""
    })

    txt3_1 <- "In this project, we provide census data in block-level and tract-level virtualization in Chicago. \n"
    txt3_2 <- "\n\nOn the first page, we focus on the Near West Side community.  It allows you to select different data options to the virtualization map including Gas, Electricity, Building Age, Building Type, Building Height, Total Population, Average House Size, and Total Units. Each option has its own legend color. \n
                    If you choose Electricity or Gas as the data options, it will allow you to select one of twelve different months or a whole year as the filter for virtualization. Even though the usage distribution is similar in different month options, you still can see the difference in the maximum and minimum values in the legend. \n
                    If you choose Building Type as the data option, you can find it has three building types, commercial, residential, and industrial, each type presents in a layer. When you click on the layer option in the map, you can see in the default, all layers are selected. And you can click or unclick every layer to see the distribution clearer. \n
                    The last option in the data filter is building type, but it is different usage as I mention above. It is used to filter the original data. For example, if you select Electricity, you will see the map present the electricity usage in all building types. If you want to have a closer look at the specific building type, you can filter out some building types by using this feature. \n
                    Also, at the bottom left of this page, provides a chart for electricity and gas for each month of the year. At the right of the page, we have an electricity table and a gas table, which contain the data for each month. It is classified by building types, and the summation value at the bottom of the table is the same values that present in the chart. \n\n"
    txt3_3 <- "\n\nOn page 2, the feature on the left of each card is the same as the first page. The purpose of this page is to let users compare two different community areas. In default, the left location is at Near West Side, and the right location is the Loop. Each card has a dropdown list for users to select a location they want to investigate. \n 
                Also, we provide three legend color set in each map. Set 1 is the same legend color as the whole project. And set 2 and set 3 are in reverse order to each other. \n\n
                Charts on each card are the same as page one, only, the data of the chart follows the current community area you select. \n\n"
    
    txt3_4 <- "\n\nOn page 3, it is tract-level virtualization in Chicago, all data filter logic is the same as previous pages. We only add few options in the first dropdown list. New options include 10% census tracts within the entire city with the oldest buildings, newest building, tallest buildings, blocks that use the most electricity over the year, blocks that use the most gas over the year, most population, most occupied percentage, and the highest percentage of renters. \n\n"
    
    output$tab1_3 <- renderUI({
        tagList(project_url_3)
    })
    
    output$tab2_3 <- renderUI({
        tagList(video_url_3)
    })
    output$tab3_3 <- renderUI({
        tagList(list(shiny::HTML(gsub("\n", "<br/>", txt3_1)),
                     shiny::HTML(gsub("\n", "<br/>", txt3_2, "\n")), img(src='img3_1.png', height = '300px'), 
                     shiny::HTML(gsub("\n", "<br/>", txt3_3, "\n")), img(src='img3_2.png', height = '300px'), 
                     shiny::HTML(gsub("\n", "<br/>", txt3_4, "\n")), img(src='img3_3.png', height = '300px')
        ))
    })
    output$tab4_3 <- renderUI({
        tagList(list(
  
        ))
    })

    ##################################################
    #intro
    observeEvent(input$prject3_btn1, { 
        #header
        output$Project3_header <- renderText({ 
            "Introduction and Description"
        })
        
        #Sub Header
        output$Project3_subHeader1 <- renderText({ 
            "Access the project: "
        })
        output$Project3_subHeader2 <- renderText({ 
            "About this project: "
        })  
        
        #cust text
        output$Project3_custText1 <- renderText({ 
            "Demo URL: "
        })
        output$Project3_custText2 <- renderText({ 
            "Introduction Video: "
        })
        output$Project3_custText3 <- renderText({ 
            ""
        })
        
        output$Project3_custText4 <- renderText({ 
            ""
        })
        
        output$tab1_3 <- renderUI({
            tagList(project_url_3)
        })
        
        output$tab2_3 <- renderUI({
            tagList(video_url_3)
        })
        output$tab3_3 <- renderUI({
        tagList(list(shiny::HTML(gsub("\n", "<br/>", txt3_1)),
                     shiny::HTML(gsub("\n", "<br/>", txt3_2, "\n")), img(src='img3_1.png', height = '300px'), 
                     shiny::HTML(gsub("\n", "<br/>", txt3_3, "\n")), img(src='img3_2.png', height = '300px'), 
                     shiny::HTML(gsub("\n", "<br/>", txt3_4, "\n")), img(src='img3_3.png', height = '300px')
        ))
    })
        output$tab4_3 <- renderUI({
            tagList(list(
                
            ))
        })
    })
    
    #data
    observeEvent(input$prject3_btn2, {
        #header
        output$Project3_header <- renderText({ 
            "About the Data"
        })
        
        #Sub Header
        output$Project3_subHeader1 <- renderText({ 
            ""
        })
        output$Project3_subHeader2 <- renderText({ 
            ""
        })  
        
        #cust text
        output$Project3_custText1 <- renderText({ 
            "Data Source: "
        })
        output$Project3_custText2 <- renderText({ 
            "Data Usage: "
        })
        output$Project3_custText3 <- renderText({ 
            ""
        })
        
        output$Project3_custText4 <- renderText({ 
            ""
        })
        
        txt1 <- "The census data is from the Chicago data portal. The following is the description of the data that shows on the web page: \n\n
                    Displays several units of energy consumption for households, businesses, and industries in the City of Chicago during 2010. Electric The data was aggregated from ComEd and Peoples Natural Gas by Accenture. Electrical and gas usage data comprises 88 percent of Chicago's buildings in 2010. The electricity data comprises 68 percent of overall electrical usage in the city while gas data comprises 81 percent of all gas consumption in Chicago for 2010. \n"
        
        txt2 <- "\n\nThis dataset contains 73 columns with 67.1K rows. We only use 34 of those columns including community area name, census block, building type, each month of electricity in a year, total electricity, each month of gas in a year, total gas, total population, total units, average stories, average building age, and average house size. \n\n"

        txt3 <- "\n\nFor the map data, we use the Tigris library. Block-level and tract-level are all available. However, the region covered by this dataset is Cook county. Therefore, first, we have to eliminate those data that are not part of Chicago city. In this case, we have to delete data whose GEOID10 columns (which store the census block id data in the block-level dataset and census tract id in the tract-level dataset) do no exist in the census dataset, because the census dataset only contains census block id in Chicago. \n\n"
        
        txt4 <- "\n\nAt the tract level, we substring the census block data from the first position to the 11th position so it is able to map back to the Tigris tract data. Since the logic of the census id is:
                    XX|XXX|XXXXXX|XXXX \n
                    * The first two digits represent the state 
                    * The 3~5 digits represent the county
                    * The 6~11 digits represent the tract
                    * And the 12~15 digits represent the block\n\n"

        txt5 <- "\n\nSince the original census data are pretty large, also there are over 10000 census blocks in Chicago. For me, I prefer to read the user community area input option first. Only collect census data in that community area, and extract the census block data. After this, we can do the process I mentioned earlier to efficiently decrease the data size. \n\n"
        
        txt6 <- "\n\nOne census block may have multiple rows of data that are separated by building type, but the heat map should show the aggregate value of all building types in a census block. Some options have to use the mean method and some options have to use the sum method in an aggregate function. Also, because some cells are empty, we need to set remove null to true otherwise the aggregate function will ignore the whole column and set the result to null.   \n"
        
        output$tab1_3 <- renderUI({
            tagList(dataSource_url_3)
        })
        
        output$tab2_3 <- renderUI({
            tagList(list(shiny::HTML(gsub("\n", "<br/>", txt1)), 
                         shiny::HTML(gsub("\n", "<br/>", txt2)), img(src='img3_4.png', height = '300px'), 
                         shiny::HTML(gsub("\n", "<br/>", txt3)), img(src='img3_5.png', height = '300px'), 
                         shiny::HTML(gsub("\n", "<br/>", txt4)), img(src='img3_6.png', height = '300px'), 
                         shiny::HTML(gsub("\n", "<br/>", txt5)),
                         shiny::HTML(gsub("\n", "<br/>", txt6))
            ))
        })
        output$tab3_3 <- renderUI({
        })
        output$tab4_3 <- renderUI({
        })
    })
    
    #interesting things
    observeEvent(input$prject3_btn3, {
        output$Project3_header <- renderText({ 
            "Interesting Things"
        })
        #header
        output$Project3_header <- renderText({ 
            "5 Interesting Things"
        })
        
        #Sub Header
        output$Project3_subHeader1 <- renderText({ 
            ""
        })
        output$Project3_subHeader2 <- renderText({ 
            ""
        })  
        
        #cust text
        output$Project3_custText1 <- renderText({ 
            ""
        })
        output$Project3_custText2 <- renderText({ 
            ""
        })
        output$Project3_custText3 <- renderText({ 
            ""
        })
        
        output$Project3_custText4 <- renderText({ 
            ""
        })
        
        txt1 <- "The distribution of electricity in the near west side is extreme. One census block reaches the highest value in legend, most of the other census blocks their electricity are a super light color which means small in legend (left).
                    If you change the month and building type options, you can find out their color distribution area all similar but various in different building types. I filtered the map by the building type, and find out the most electricity block is different from other census blocks, it also includes industrial usage. (right)\n\n"
        
        txt2 <- "\n\n\n\nThe gas distribution at the near west side also has the same circumstances as the electricity case.  The highest gas is for commercial. However, it is new for me that a block that is not large compares to others their commercial buildings can have the highest electricity usage over a whole community.  \n\n"
        
        txt3 <- "\n\n\n\nElectricity & gas charts for every community, their trend are similar. Even though there may have slightly different. In some communities, the highest point of electricity happens in the winter, and some communities happen in summer, but they all follow the same rule. The peaks for electricity are in the summer and the winter seasons. And the lowest part for gas is in the summer season. The following images are some examples.\n\n"
        
        txt4 <- "\n\n\n\nSome census blocks look weird for me. For example, in North Lawndale, a block is far from other blocks (left). And this also happens in McKinley Park (mid). I use the command line to search the actual census data of this census block id (right & bottom). I find out this census block is actually located in the North Center community, but one row shows that it is in the McKinley Park community. Therefore, when I use the census block id to map the shapefile, some strange blocks appeared. I'm not sure if it is the inaccurate part of the census data, or actually, this thing happens. For me, I think because the shapefile does not contain community area information, we have to map two data files by their block id, so it is hard to achieve 100% correct. \n\n"
        
        
        output$tab1_3 <- renderUI({
            tagList(list(shiny::HTML(gsub("\n", "<br/>", txt1)), img(src='img3_8.png', height = '300px'), img(src='img3_9.png', height = '300px'), 
                         shiny::HTML(gsub("\n", "<br/>", txt2)), img(src='img3_10.png', height = '300px'), img(src='img3_11.png', height = '300px'), 
                         shiny::HTML(gsub("\n", "<br/>", txt3)), img(src='img3_12.png', height = '300px'), img(src='img3_13.png', height = '300px'), img(src='img3_14.png', height = '300px'), 
                         shiny::HTML(gsub("\n", "<br/>", txt4)), img(src='img3_15.png', height = '500px'), img(src='img3_16.png', height = '500px'), img(src='img3_17.png', height = '300px'), img(src='img3_18.png', height = '300px')
            ))
        })
        
        output$tab2_3 <- renderUI({
           
        })
        output$tab3_3 <- renderUI({
            
        })
        output$tab4_3 <- renderUI({
            
        })
        
    })
    
    #source code
    observeEvent(input$prject3_btn4, {
        #header
        output$Project3_header <- renderText({ 
            "Source Code"
        })
        
        #Sub Header
        output$Project3_subHeader1 <- renderText({ 
            "Source"
        })
        output$Project3_subHeader2 <- renderText({ 
            "SetUp"
        })  
        
        #cust text
        output$Project3_custText1 <- renderText({ 
            "Github Repository: "
        })
        output$Project3_custText2 <- renderText({ 
            "Install R: "
        })
        output$Project3_custText3 <- renderText({ 
            "Install Shiny: "
        })
        output$Project3_custText4 <- renderText({ 
            "Setup The Project: "
        })
        
        output$tab1_3 <- renderUI({
            tagList(git_url_3)
        })
        txt1 <- ". Click \"download R\".\n"
        txt2 <- "\n\nYou can select the default link \"0-Cloud\".\n"
        txt3 <- "\n\nDownload and install a version that match you OS.\n"
        
        txt4 <- "\n"
        txt5 <- "\n\nYou and down load the free version.\n"

        txt6 <- "Create a workspace folder that you want the project lacate at. Open the termial, set the direction the the created folder. Run the commendline \"git clone https://github.com/ychen856/cs424_project_3.git\". \n"
        txt7 <- "\n\nOpen the R studio and open the exixting file -> import cs424. \n Rstudio will tell you that you are missing some packages, click the auto install on the top of the frame to set them up. 
                Since we use the Mapview and the Tigris library this time, we need manually install some packages before running the project to make libraries fully utilized.\n

                Tigris library:

                To install the package from CRAN, issue the following command in R:
                    install.packages('tigris') \n
                Or, get the development version from GitHub:
                devtools::install_github('walkerke/tigris') \n

                In my case, I install both of them because some issues in the former one may be fixed in the latter package. \n\n

                Mapview library:

                For the CRAN release version of the Mapview use:
                install.packages(\"mapview\")\n
                To install the development version you can install the remotes package:
                remotes::install_github(\"r-spatial/mapview\") \n

                And I also run both of the instructions.
        
        Then, you can click the \"Run App\" to start a localhost shiny project.\n\n"
        output$tab2_3 <- renderUI({
            tagList(list("Download the R from", r_url, shiny::HTML(gsub("\n", "<br/>", txt1)), img(src='img2.png', height = '300px'), 
                         shiny::HTML(gsub("\n", "<br/>", txt2)), img(src='img3.png', height = '300px'),
                         shiny::HTML(gsub("\n", "<br/>", txt3)), img(src='img4.png', height = '300px')
            ))
        })
        output$tab3_3 <- renderUI({
            tagList(list("Download R studio from", rStudio_url, shiny::HTML(gsub("\n", "<br/>", txt4)), img(src='img5.png', height = '300px'), 
                         shiny::HTML(gsub("\n", "<br/>", txt5)), img(src='img6.png', height = '300px')
            ))
        })
        output$tab4_3 <- renderUI({
            tagList(list(shiny::HTML(gsub("\n", "<br/>", txt6)), 
                         shiny::HTML(gsub("\n", "<br/>", txt7)), img(src='img3_7.png', height = '300px')
                         
            ))
        })
    })

}

shinyApp(ui = ui, server = server)