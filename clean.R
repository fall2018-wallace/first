
arrests <- data.frame(USArrests) 
arrests

myfunction <- function(){
  dfStates <- read.csv("states.csv", header = TRUE)
  uncoloumns <- c("SUMLEV","REGION","DIVISION","STATE")
  unrows <- row.names(dfStates)[c(1,nrow(dfStates))]
  cleandf <- dfStates[-which(rownames(dfStates) %in% unrows),-which(colnames(dfStates) %in% uncoloumns), drop = FALSE]
  colnames(cleandf) <- c("stateName","population","popOver18","percentOver18")
  return(cleandf)
}

states3 <- myfunction()
myfunction()



