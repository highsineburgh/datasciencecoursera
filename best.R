best <- function(state, outcome) {
  outcome_data <- read.csv('outcome-of-care-measures.csv', colClasses='character')
  states <- unique(outcome_data$State)
  outcomes <- c("heart attack", "heart failure", "pneumonia")
  if (state %in% states) {
    if (outcome %in% outcomes){
      stateOutcomes <- outcome_data[outcome_data$State == state,]
      
      stateOutcomes
    } else {
      stop("invalid outcome")
    }
  } else {
    stop("invalid state")
  }
}