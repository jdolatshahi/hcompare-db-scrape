# See also: Swirl lessons 12 (Looking at Data), 13 (Simulation),
# and 15 (Base Graphics).
#
# Write a function called rankhospital() that takes three
# arguments: the 2-character abbreviated name of a state
# ("state"), an outcome ("outcome"), and the ranking of a hospital
# in that state for that outcome ("num"). The function reads the
# outcome-of-care-measures.csv file and returns a character vector
# with the name of the hospital that has the ranking specified
# by the "num" argument. For example, the call
#
# > rankhospital("MD", "heart failure", 5)
#
# would return a character vector containing the name of the
# hospital with the 5th lowest 30-day death rate for heart
# failure. The "num" argument can take values "best", "worst",
# or an integer indicating the ranking (smaller numbers are better).
# If the number given by "num" is larger than the number of
# hospitals in that state, then the function should return NA.
# Hospitals that do not have data on a particular outcome should be
# excluded fromt he set of hospitals when deciding the rankings.
#
# If there is a tie for 30-day mortality rate for a given cause
# of death, the tie should be broken by using the hospital name
# that comes first alphabetically. You can use order() to sort
# multiple vectors in this manner (i.e. where one vector is used
# to break ties in another vector).
#
# The function should use the following template:
#
# rankhospital <- function(state, outcome, num = "best") {
#     ## Read outcome data
#     
#     ## Check that state and outcome are valid
#     
#     ## Return hospital name in that state with the given rank
#     ## 30-day death rate
# }
#
# The function should check the validity of its arguments. If
# an invalid "state" value is passed to best(), the function
# should throw an error via the stop() function with the exact
# message "invalid state". If an invalid "outcome" value is
# passed to best(), the function should throw an error via the
# stop() function with the exact message "invalid outcome".
#
# Here is some sample output from the function:
#
# > source("rankhospital.R")
# > rankhospital("TX", "heart failure", 4)
# [1] "DETAR HOSPITAL NAVARRO"
# > rankhospital("MD", "heart attack", "worst")
# "HARDFORD MEMORIAL HOSPITAL"
# > rankhospital("MN", "heart attack", 5000)
# [1] NA