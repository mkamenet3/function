library(testthat)
library(cleanmydata)
#test_package("cleanmydata")
#test_check("cleanmydata")



#Simulate data to test
x <- as.character(rep(c(1,2), times=50))
y <- as.character(rep(c("A","B","C","D",""), times=20))
z <- as.character(rnorm(100,mean=0,sd=25))


#Test length of vars doesn't matter
mydf <-cbind.data.frame(x,y,z)
factorVars <- y
numericVars <- c("x","z")
cleandf1 <- cleanmydata(mydf, factorVars, numericVars, drop_na=TRUE)

#Test missing is ok
mydf <-cbind.data.frame(x,y,z)
factorVars <- c()
numericVars <- c("x","z")
cleandf2 <- cleanmydata(mydf, factorVars, numericVars, drop_na=TRUE)

identical(str(cleandf1), str(cleandf2))

test_that("length of factor is length of level", {
    expect_true(isTRUE(all.equal(str(cleandf1),str(cleandf2))))
})
    
    
    
    
    
    
    
