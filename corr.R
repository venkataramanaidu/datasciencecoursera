corr <- function(directory, threshold=0) {

 corv <- numeric()     ## Empty character vector

## directory <- "C:/RworkingDirectory/"
for (i in 1:332) {
     if (i < 10)  suf <- "00"
      else if   (i < 100) suf <- "0"
         else 
       suf <- ""
       suf <- paste(suf, as.character(i), sep="")
      ## print (suf)
       
  ## File name with the directory path
 
 FNM <- paste(suf, ".csv",sep="")
 FNM <- paste("c:/specdata/", FNM ,sep="")
 ## print (FNM)
 poldt <- read.csv (FNM, header=TRUE)

 nbs <- nrow(poldt[complete.cases(poldt),])   ## complete cases

  if (nbs < threshold) next
 
 poldt <- poldt[complete.cases(poldt),]

  sf <- poldt[, "sulfate"]      # vector of sulfate values
  nt <- poldt[,  "nitrate"]
  
  ## print (sf)
  cr <- cor(sf,nt)
  corv <- c(corv,cr)
 
}
return (corv)


}


## Example Function call complete(,  id=1:332)
