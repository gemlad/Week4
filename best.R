best <- function(state, outcome) {
    ## Read outcome data
    df <- read.csv("outcome-of-care-measures.csv")
    
    
    ## Check that state and outcome are valid
    if(!state %in% df$State) {
      stop("invalid state")
      
    } else if(!outcome %in% c("heart attack", "heart failure", "pneumonia")) {
      stop("invalid outcome")
      
    } 
    
    
    ## Return hospital name in that state with lowest 30-day death
    ## rate
    s <- split(df, df$State)
    usedf <- as.data.frame(s[state])
   
    #change outcome variable to match the colnames
    if(outcome == "heart attack"){
        outcomeverbose <- "Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack"
    } else if(outcome == "heart failure"){
        outcomeverbose <- "Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure"
    } else {
        outcomeverbose <- "Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia"
    }
          
      
    
    

  usedf[[outcomeverbose, exact=FALSE]]
  
}
