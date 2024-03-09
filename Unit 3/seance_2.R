#dbino for =
#pbinom(x, size = n, prob = p, lower.tail = TRUE/FALSE) when => if greater than, lower = FALSE

1 - pbinom(2, size = 10, prob = 0.02, lower.tail = TRUE)
# =
pbinom(2, size = 10, prob = 0.02, lower.tail = FALSE)

pbinom(1, size = 5, prob = 0.1, lower.tail = FALSE)

dbinom(0, size = 200, prob = 0.01)

200*0.01

pbinom(3, size = 25, prob = 0.25, lower.tail = TRUE)

#Pr(X > 5.23kg) with mew = 5 and sd = 1
pnorm(5.23, mean = 5, sd = 0.1, lower.tail = FALSE)

#Pr(X <= x) = 0.25
qnorm(0.25, mean = 5, sd = 0.1, lower.tail = TRUE)

#Labsessiontime
