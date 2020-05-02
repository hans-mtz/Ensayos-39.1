require(rmarkdown)
require(devtools)
# Convert from WORD to rmarkdown
pandoc_convert(input = "Ventosa Microfinance 0419.docx",to="markdown",output = "ventosa.rmd", options=c("--extract-media=."), citeproc = TRUE)

# Convert to HTML
render(paste0(tempdir(), "/example.rmd"),"html_document")
browseURL(paste0(tempdir(),"/example.html"))