cleanmydata <-function(mydf, factorVars, numericVars) {
    mydf[mydf==""] <-NA
    mydf <- mydf[complete.cases(mydf),]
    factors <- which(names(mydf)%in%factorVars)
    mydf[,factors]<- lapply(mydf[,factors], as.factor)
    numerics <- which(names(mydf)%in%numericVars)
    mydf[,numerics]<-lapply(mydf[,numerics], as.numeric)
    return(mydf)    
}


