if (!require('pacman'))install.packages('pacman')
pacman::p_load(shiny, argonR, argonDash, magrittr)
#homepath = 'C:/Users/44335mta/Dropbox (RSM)/SkyDrive/Documents/Companies and data/AgileNow.ai/homePage/docs'
#git reset --hard

#homepath = '/srv/shiny-server/seminarsManagement/docs'
homepath = './docs'
# argonInstall(path=homepath)
# argonInstall(path=paste0(homepath,'/about'))

foot<- argonFooter(
  status = 'white',
  has_card = FALSE,
  argonContainer(
    argonRow(
      size = "lg",
      copyrights = "Murat Tarakci, 2020",
      src = "https://github.com/murattarakci",
      argonFooterMenu(
        argonFooterItem("Contact Me", src = "mailto:tarakci@rsm.nl"),
        argonFooterItem(HTML("&copy; Murat Tarakci, 2020"))
      ))))
nav<- tags$nav(class="navbar navbar-expand-lg navbar-light bg-lignt",
               style="background-color: #ffffff;",
               id="primary-navigation",
               tags$div(class="container",
                        tags$div(
                          class="d-flex flex-grow-1",
                          tags$span(class="w-100 d-lg-none d-block"),
                          # tags$a(class="navbar-brand",
                          #        tags$img(src="www/Logo.svg",height="600",class="d-inline-block align-top",alt="brand"),
                          #        #tags$p('agilenow',class="text-primary font-weight-bold",style="font-size:25px;"),
                          #        href='index.html'),
                          tags$div(class="w-100 text-right",
                                   tags$button(class="navbar-toggler",
                                               type="button",
                                               `data-toggle`="collapse",
                                               `data-target`="#mainNavBar",
                                               `aria-controls`='mainNavBar',
                                               `aria-expanded`="false",
                                               `aria-label`="Toggle navigation",
                                               tags$span(class="navbar-toggler-icon",
                                                         tags$i(class="fa fa-navicon"))
                                   )
                          )
                        ),
                        tags$div(class="collapse navbar-collapse flex-grow-1 text-right",
                                 id="mainNavBar",
                                 tags$div(
                                   class = "navbar-collapse-header",
                                   tags$div( 
                                     class = "row",
                                     tags$div(
                                       class = "col-6 collapse-brand",
                                       tags$img(src="www/Logo.svg",height="600",class="d-inline-block align-top",alt="brand")
                                     ),
                                     tags$div( 
                                       class = "col-6 collapse-close",
                                       tags$button(
                                         type = "button", 
                                         class = "navbar-toggler", 
                                         `data-toggle` = "collapse", 
                                         `data-target` = '#mainNavBar', 
                                         `aria-controls` = 'mainNavBar', 
                                         `aria-expanded` = "true", 
                                         `aria-label` = "Toggle navigation",
                                         color='black',
                                         tags$span(),
                                         tags$span()
                                       ))
                                   )),
                                 tags$ul(
                                   class="navbar-nav ml-auto",
                                   tags$li(class="nav-item",tags$a("Hapenning soon",href="index.html",class="nav-link")),
                                   tags$li(class="nav-item ",tags$a("See the calendar",href="services.html",class="nav-link")
                                           #argonDropdown(name="Services",argonDropdownItem(name="ING Vysya",src = 'https://agilenow.ai/ING/'),
                                           #argonDropdownItem(name="Demo",src = 'https://agilenow.ai/demo/'))
                                   )
                                   
                                   #tags$li(class="nav-item",tags$a("Blog",href="#comingsoon",class="nav-link")),
                                   #  tags$li(class="nav-item",tags$a("About",href="about.html",class="nav-link")),
                                   #  tags$li(class="nav-item",tags$a("See the seminar calendar",href="calendar.html",class="nav-link"))
                                   
                                   
                                   
                                 )
                        )
               )
)

homepage<-argonPage(
  title = "Seminars in Management",
  author = "Murat",
  description= "Website to store online management seminars",
  navbar<-nav,
  
  hero <- argonSection(
    size = "lg",
    status = "#f6f9fc",
    gradient = FALSE,
    separator = FALSE,
    separator_color = "white",
    shape = FALSE,
    argonColumn(
      argonRow(
        argonColumn(
          width = 6,
          argonH1(
            display = 3, 
            "Online Management Seminars"
            # , 
            # htmltools::span("with the power of Machine Learning")
          ) %>% argonTextColor(color = "black"),
          argonLead(
            "Many seminars and conferences are taking place online because of the ongoing Covid-19 pandemic. 
            This web page serves as a repository for all of these events. "
          ) %>% argonTextColor(color = "gray"),
          argonLead(
            "You can ",
            tags$a(`data-type`='[ "follow seminars ...", "create seminars ...", "join seminars ...!"]',
                   href="",class="typewrite",`data-period`="200",tags$span(class="wrap"))
          ),
          tags$script(src = "inst/assets/js/typewriter.js"),
          br(),
          br()
        ),
        argonColumn(
          width = 6,
          
          # tags$script(src='inst/assets/fullcalendar/packages/core/main.js'),
          # tags$script(src='inst/assets/fullcalendar/packages/google-calendar/main.js')  
          #tags$script(src="https://localendar.com/public/managementseminars?style=M1&show_past=N&include=Y&dynamic=Y"),
          
          tags$script(src="https://localendar.com/public/managementseminars?style=D2&include=Y&dynamic=Y"),
          
         # tags$script(src="inst/assets/js/PublishedResponsiveIframe.js",
        #  tags$iframe(src="https://localendar.com/public/managementseminars?style=D5&show_past=N", "width:100%", id="localendar-iframe")),
          # tags$script(src="https://cdn.polyfill.io/v3/polyfill.min.js?version=3.52.1&features=Array.prototype.forEach,console,Date.prototype.toISOString,document,Intl,Map,Promise,Set"),
          # tags$script(src="https://unpkg.com/dayjs@1.8.21/dayjs.min.js"),
          # tags$script(src="https://unpkg.com/dayjs@1.8.23/plugin/localizedFormat.js"),
          # #tags$script(dayjs.extend(window.dayjs_plugin_localizedFormat)),
          # tags$script(src="https://apis.google.com/js/api.js"),
          # # 
          #  tags$script(src = "inst/assets/js/google-calendar.js"),
          br()
          
        )
      )
    )),
  footer = foot
)
argonPageTemplate(filename = "index",path=homepath , homepage)


about<-argonPage(
  title = "seminars.Management",
  author = "Murat",
  description= "List of online management seminars",
  navbar<-nav,
  body<- argonContainer(
    tags$h3(" ") %>% argonTextColor(color = "black"), #about me is here
    argonColumn(
      width = 12,
      tags$div(
        class = "card card-profile shadow",
        tags$div(
          class = "px-4",
          # header
          tags$div(
            class = "row justify-content-center",
            
            # stat items
            
            # profile image
            
            tags$div(
              class = "card-profile-image",
              tags$a(
                href = NULL,
                img(src =  "www/profile.jpeg", class = "rounded-circle")
              )
            )
            
            
          ),
          
          # Title
          tags$div(
            class = "text-center mt-5",
            tags$h3("Murat Tarakci"),
            tags$div(class = "h6 font-weight-300", "Rotterdam School of Management")
          ),
          
          # Content
          tags$div(
            class = "mt-5 py-5 border-top text-center",
            tags$div(
              class = "row justify-content-center",
              tags$div(
                class = "col-lg-9",
                tags$p("A management researcher,  an R enthusiast ..."),
                tags$a(href = "https://www.rsm.nl/people/murat-tarakci/", target = "_blank", "More"),
                br(),
                br(),
                # button
                tags$a(href = "https://www.linkedin.com/in/murat-tarakci/",target = "_blank",tags$span(class = "fa fa-linkedin-square fa-2x ")),
                tags$a(href = "https://twitter.com/drmurattarakci?lang=en", target = "_blank", tags$span(class = "fa fa-twitter fa-2x "))
                
              )
            )
          ))
      )%>% argonPadding(orientation = "y", value = 5)
    )
  ),
  footer = foot
)
argonPageTemplate(filename = "about",path=homepath, about)



testm<-argonSection(
  size = "lg",
  status = 'primary',
  gradient = FALSE,
  separator = TRUE,
  separator_color = 'white',
  shape = FALSE,
  argonRow(
    argonColumn(
      width = 4,
      argonCard(
        status = "primary",
        width = 12,
        title = "Card 1",
        hover_lift = TRUE,
        shadow = TRUE,
        icon = "check-bold",
        src = "#",
        "Argon is a great free UI package based on Bootstrap 4
        that includes the most important components and features."
      ) %>% argonTooltip(position = "left", title = "I am a nice card")
    ),
    argonColumn(
      width = 4,
      argonCard(
        status = "success",
        width = 12,
        title = "Card 2",
        hover_lift = TRUE,
        shadow = TRUE,
        icon = "istanbul",
        src = "#",
        "Argon is a great free UI package based on Bootstrap 4
        that includes the most important components and features"
      ) %>% argonTooltip(position = "top", title = "I am a nice card")
    ),
    argonColumn(
      width = 4,
      argonCard(
        status = "warning",
        width = 12,
        title = "Card 3",
        hover_lift = TRUE,
        shadow = TRUE,
        icon = "planet",
        src = "#",
        "Argon is a great free UI package based on Bootstrap 4
        that includes the most important components and features"
      ) %>% argonTooltip(position = "bottom", title = "I am a nice card")
    )
  )
)
services<-argonPage(
  title = "seminars.Management",
  author = "Murat",
  description= "Create a seminar",
  navbar<-nav,
  body<- 
    body <- argonSection(
      size = "lg",
      status = "#f6f9fc",
      gradient = TRUE,
      separator = TRUE,
      separator_color = "white", # primary when testimonials
      shape = FALSE,
      argonColumn(
        argonRow(
          argonColumn(
            width = 12,
            
          tags$script(src="https://localendar.com/public/managementseminars?include=Y&dynamic=Y")
                       
          )
                    
        )
      )),
  # testimonials <- testm
  
  footer = foot
)

argonPageTemplate(filename = "services",path=homepath, services)

contact <- argonPage(
  navbar<- nav,
  body <-
    argonSection(
      size = "lg",
      status = "#f6f9fc",
      gradient = FALSE,
      separator = FALSE,
      separator_color = "white",
      shape = FALSE,
      argonRow(
        argonColumn(
          width = 6,
          argonCarousel(
            width = 12,
            floating = FALSE, 
            hover_lift = TRUE,
            id = "map",
            argonCarouselItem(
              src = "https://www.google.com/maps?t=m&q=Rotterdam+School+of+Management,+Burgemeester+Oudlaan,+Kralingen-Oost,+Rotterdam,+The+Netherlands&ie=UTF8&hq=Rotterdam+School+of+Management,+Burgemeester+Oudlaan,+Kralingen-Oost,+Rotterdam,+The+Netherlands&ll=51.915473,4.525895&spn=0.006353,0.010343&z=15&iwloc=A&output=embed&iwloc=near",
              active = TRUE,
              mode = "iframe"
            )
          )
        ),
        argonColumn(
          width = 6,
          tags$h2('Address'),
          tags$address(
            tags$strong("Burgemeester Oudlaan 50"),
            br(),
            "3062 PA Rotterdam,",
            br(),
            "The Netherlands",
            br(),
            tags$a("Contact Me", href = "mailto:tarakci@rsm.nl")
          ))
      )
    ),
  
  
  footer= foot
)
argonPageTemplate(filename = "contact",path=homepath, contact)