# como imprimir las presentaciones en pdf
remotes::install_github("rstudio/pagedown")

---
  title: "Mi Presentación"
output: pagedown::html_paged
---
  
pagedown::chrome_print("presentacion1/presentacion1.html", "presentacion/presentacion1.pdf")


pagedown::chrome_print("documentos/informacion12.html", "documentos/informacion12.pdf")

