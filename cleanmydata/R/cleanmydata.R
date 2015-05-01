#' Basic cleaning of data
#' 
#' @param mydf use cbind.data.frame() to create sub-dataset with your variables of interest. Specify that 'stringAsFactors=FALSE"
#' @param factorVars variables you want to convert to factors
#' @param numericVars variables you want to convert to numeric
#' @param drop_na true or false variables if you want to drop missing variables or not
#' @return new dataframe with cleaned variables 


cleanmydata <-function(mydf, factorVars, numericVars, drop_na=TRUE) {
    mydf[mydf==""] <-NA
    if(drop_na) {
        mydf <- mydf[complete.cases(mydf),]    
    }
    mydf
    factors <- which(names(mydf)%in%factorVars)
    mydf[,factors]<- lapply(mydf[,factors], as.factor)
    numerics <- which(names(mydf)%in%numericVars)
    mydf[,numerics]<-lapply(mydf[,numerics, drop=FALSE], as.numeric)
    return(mydf)    
}


