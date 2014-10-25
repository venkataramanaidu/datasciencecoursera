pollutantmean <- function(directory, pollutant,id = 1:332) {
sm <- 0  ## sum of all the non-null pollutant
ct  <- 0  ## count of the non-null value

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
 FNM <- paste("c:/specdata/",  FNM ,sep="")
 ## print (FNM)
 poldt <- read.csv (FNM, header=TRUE)
 sf <- poldt[, pollutant]
 sf <-sf[!is.na(sf)]        ## Picking all the non NA values of the pollutant
 ct <- ct + length(sf)      ## cumulative count of all the non NA values of the pollutant
 sm <- sm + sum(sf)        ## cumulative sum
}

 pmean <- sm /ct
 print (pmean)

}


## Example Function call pollutantmean("C:/RworkingDirectory/", "sulfate", id=1:332)
