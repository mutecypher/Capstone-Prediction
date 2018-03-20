blocky <- function(trap, tim) {
  a <- nrow(tim)
 full_tri <- data.table()
for (i in 1:2)
{ 
  tardis <- trap[trap$bigrams == c(tim[i])]
tardis$sum <- sum(tardis$tri_gram_ns_ns)
tardis$prob <- (tardis$tri_gram_ns_ns/tardis$sum)
full_tri <- rbind(full_tri, tardis)
}
return(full_tri)
}


