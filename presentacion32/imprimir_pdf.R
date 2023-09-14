# como imprimir las presentaciones en pdf
remotes::install_github("rstudio/pagedown")

---
  title: "Mi Presentación"
output: pagedown::html_paged
---
  
pagedown::chrome_print("presentacion32/presentacion32.html", 
                       "presentacion32/presentacion32.pdf")

