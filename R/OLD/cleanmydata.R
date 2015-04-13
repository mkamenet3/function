cleanmydata <-function(mydf) {
	mydf[mydf==""] <-NA
	mydf[complete.cases(mydf),]
	}
