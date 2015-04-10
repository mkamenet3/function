cleanmydata <-function(mydf) {
	mydf[mydf==""] <-NA
	mydf[complete.cases(mydf),]
	}

factorme <- function(mydf, vars) {
	factors <- which(names(mydf)%in%vars)
	mydf[,factors]<- lapply(mydf[,factors], as.factor)
	return(mydf)
	}
