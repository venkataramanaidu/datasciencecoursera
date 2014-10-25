complete <- function(directory, id = 1:332) {

 nobs <- numeric()

## directory <- "C:/RworkingDirectory/"
for (i in id) {
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

 nb <- nrow(poldt[complete.cases(poldt),])

 nobs <- c(nobs, nb)

 
}

 compldf <- data.frame(id,nobs)
 print(compldf)

}


## Example Function call complete("C:/RworkingDirectory/",  id=1:332)
