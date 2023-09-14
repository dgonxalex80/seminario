# como imprimir las presentaciones en pdf
remotes::install_github("rstudio/pagedown")

---
  title: "Mi Presentación"
output: pagedown::html_paged
---
  
pagedown::chrome_print("presentacion23/presentacion23.html", 
                       "presentacion23/presentacion23.pdf")

