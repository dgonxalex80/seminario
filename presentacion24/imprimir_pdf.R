# como imprimir las presentaciones en pdf
remotes::install_github("rstudio/pagedown")

---
  title: "Mi Presentación"
output: pagedown::html_paged
---
  
pagedown::chrome_print("presentacion24/presentacion24.html", 
                       "presentacion24/presentacion24.pdf")

