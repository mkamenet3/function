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


