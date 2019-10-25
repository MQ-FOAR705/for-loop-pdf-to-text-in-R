#install.packages("pdftools")
#https://cran.r-project.org/web/packages/pdftools/pdftools.pdf

library(pdftools)


all_file_names <- dir(path="pdfs", pattern =".pdf", full.names=TRUE)


for (file in all_file_names) {
  text <- pdf_text(file)
  
  #changes the filename from pdf to txt
  output_file <- gsub("pdf", "txt",file)
  
  print(c("Converting",file,output_file))
  write(text, output_file)
}



