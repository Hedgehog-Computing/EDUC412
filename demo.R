library(ggplot2)


b <- c(-1.0, -0.5, 0, 0.5, 1.0)
a <- c(2.0, 1.5, 1.5, 1.5, 2.0)
c <- rep(0, 5)

icc <- function(b, a, c) {
  J <- length(b)
  if (missing(c)) c <- 0
  if (missing(a)) a <- 1
  theta <- seq(-3, 3, .1)
  L <- matrix(rep(0, length(theta)*J), nrow=length(theta))
  P <- matrix(rep(0, length(theta)*J), nrow=length(theta))
  for (j in 1:J) {
    L[,j] <- 1.702 * a[j] * (theta - b[j]) 
    expnl <- exp(-L[,j])
    opexpnl <- 1 + expnl
    P[,j] <- c[j] + (1 - c[j]) / opexpnl
    df <- data.frame(theta, L, expnl, opexpnl, P)
  }
  
  ggplot(data = df) +
    geom_line(aes(x = theta, y = P[,1], color = "Item 1")) + 
    geom_line(aes(x = theta, y = P[,2], color = "Item 2")) + 
    geom_line(aes(x = theta, y = P[,3], color = "Item 3")) + 
    geom_line(aes(x = theta, y = P[,4], color = "Item 4")) + 
    geom_line(aes(x = theta, y = P[,5], color = "Item 5")) + 
    xlim(-3, 3) +
    ylim(0, 1) +
    xlab("Ability (theta)") +
    ylab("Probability of Correct Response") +
    ggtitle("Item Characteristic Curve (ICC)")
}



icc(b, a, c)


tcc <- function(b, a, c) {
  J <- length(b)
  if (missing(c)) c <- rep(0, J)
  if (missing(a)) a <- rep(1, J)
  theta <- seq(-3, 3, .1)
  ts <- rep(0, length(theta))
  for (j in 1:J) {
    P <-  c[j] + (1 - c[j]) / (1 + exp(-a[j]*(theta-b[j])))
    ts <- ts + P }
  
  ggplot() +
    geom_line(aes(x = theta, y = ts, color = "Test Probability")) + 
    xlim(-3, 3) +
    ylim(0, 5) +
    xlab("Ability (theta)") +
    ylab("Sum of Probability") +
    ggtitle("Test Characteristic Curve (TCC)")
} 

tcc(b, a, c)


iif <- function(b, a, c) {
  J <- length(b)
  if (missing(c)) c <- rep(0, J)
  if (missing(a)) a <- rep(1, J)
  theta <- seq(-3, 3, 0.1)
  ii <- matrix(rep(0, length(theta)*J), nrow=length(theta))
  SE <- matrix(rep(0, length(theta)*J), nrow=length(theta))
  for (j in 1:J) {
    Pstar <- 1 / (1 + exp(-1.702 * a[j] * (theta - b[j])))
    P <- c[j] + (1 - c[j]) * Pstar
    ii[,j] <- a[j]**2 * P * (1.0 - P) * (Pstar / P)**2
    SE[,j] <- sqrt(1/ii[,j])
  }
  df <- data.frame(theta, ii, SE)
  
  ggplot(data = df) +
    geom_line(aes(x = theta, y = ii[,1], color = "Item 1")) + 
    geom_line(aes(x = theta, y = ii[,2], color = "Item 2")) + 
    geom_line(aes(x = theta, y = ii[,3], color = "Item 3")) + 
    geom_line(aes(x = theta, y = ii[,4], color = "Item 4")) + 
    geom_line(aes(x = theta, y = ii[,5], color = "Item 5")) + 
    geom_line(aes(x = theta, y = SE[,1], color = "Item 1"), linetype = "dashed") + 
    geom_line(aes(x = theta, y = SE[,2], color = "Item 2"), linetype = "dashed") + 
    geom_line(aes(x = theta, y = SE[,3], color = "Item 3"), linetype = "dashed") + 
    geom_line(aes(x = theta, y = SE[,4], color = "Item 4"), linetype = "dashed") + 
    geom_line(aes(x = theta, y = SE[,5], color = "Item 5"), linetype = "dashed") + 
    xlim(-3, 3) +
    ylim(0, 5) +
    xlab("Ability (theta)") +
    ylab("Information") +
    ggtitle("Item Information Function (IIF)")
}

iif(b, a, c)


tif <- function(b, a, c) {
  J <- length(b)
  if (missing(c)) c <- rep(0, J)
  if (missing(a)) a <- rep(1, J)
  theta <- seq(-3, 3, 0.1)
  ii <- matrix(rep(0, length(theta)*J), nrow=length(theta))
  i <- rep(0, length(theta))
  for (j in 1:J) {
    Pstar <- 1 / (1 + exp(-1.702 * a[j] * (theta - b[j])))
    P <- c[j] + (1 - c[j]) * Pstar
    ii[,j] <- a[j]**2 * P * (1.0 - P) * (Pstar / P)**2
    i <- i + ii[,j]
    SE <- sqrt(1/i)
  }
  df <- data.frame(theta, i, SE)
  
  ggplot(data = df) +
    geom_line(aes(x = theta, y = i, color = "Test Information")) + 
    geom_line(aes(x = theta, y = SE, color = "Standard Error"), linetype = "dashed") +
    xlim(-3, 3) +
    ylim(0, 5) +
    xlab("Ability (theta)") +
    ylab("Information") +
    ggtitle("Test Information Function (TIF)")
}

tif(b, a, c)     
