# como imprimir las presentaciones en pdf
remotes::install_github("rstudio/pagedown")

---
  title: "Mi Presentación"
output: pagedown::html_paged
---
  
pagedown::chrome_print("presentacion34/presentacion34.html", 
                       "presentacion34/presentacion34.pdf")

