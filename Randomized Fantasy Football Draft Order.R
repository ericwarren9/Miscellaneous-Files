# PURPOSE: To make randomly chosen draft order for Fantasy Football League


# Make the randomly sampled order -----------------------------------------

set.seed("Input Whatever Number")
draftOrder22 <- sample(
  c("Andrew",
    "Eric",
    "Janosko",
    "Hunter",
    "Shinaberry",
    "Reily",
    "Max",
    "Ryan",
    "Dave/Sam",
    "Ben"
    ),
  prob = c(
    .30,
    .21,
    .14,
    .10,
    .08,
    .07,
    .04,
    .03,
    .02,
    .01
  ),
  replace = FALSE
)


# Show the draft order one by one -----------------------------------------

draftOrder22[1]
draftOrder22[2]
draftOrder22[3]
draftOrder22[4]
draftOrder22[5]
draftOrder22[6]
draftOrder22[7]
draftOrder22[8]
draftOrder22[9]
draftOrder22[10]

