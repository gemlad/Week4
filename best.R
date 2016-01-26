best <- function(state, outcome) {
    ## Read outcome data
    df <- read.csv("outcome-of-care-measures.csv")
    
    
    ## Check that state and outcome are valid
    if(!state %in% df$State) {
      stop("invalid state")
    } else if(!outcome %in% c("heart attack", "heart failure", "pneumonia")) {
      stop("invalid outcome")
    } else {
      print("ok")
    }
      
    
    
    ## Return hospital name in that state with lowest 30-day death
    ## rate
  invisible(df)
  
}
