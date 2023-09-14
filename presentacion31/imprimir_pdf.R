# como imprimir las presentaciones en pdf
remotes::install_github("rstudio/pagedown")

---
  title: "Mi Presentación"
output: pagedown::html_paged
---
  
pagedown::chrome_print("presentacion31/presentacion31.html", 
                       "presentacion31/presentacion31.pdf")

