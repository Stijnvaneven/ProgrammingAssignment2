## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## course material example

##makeVector <- function(x = numeric()) {
##  m <- NULL
##  set <- function(y) {
##    x <<- y
##    m <<- NULL
##  }
##  get <- function() x
##  setmean <- function(mean) m <<- mean
##  getmean <- function() m
##  list(set = set, get = get,
##       setmean = setmean,
##       getmean = getmean)
##}


makeCacheMatrix <- function(x = matrix()) {
  ## SVE: Let's Try
  
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  getinv <- function() m
  setinv <- function(solve) m <<- solve
  list(set = set, get = get, setinv = setinv, getinv = getinv)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## SVE: Let's Try
  ## Return a matrix that is the inverse of 'x'
  
  m<- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  ## Solve takes as second argument a numeric or complex vector or matrix giving the right-hand side(s) of the linear system. 
  ## If missing, b is taken to be an identity matrix and solve will return the inverse of "data"
  m<- solve(data, ...)
  x$setinv(m)
  m
  
  ## Return a matrix that is the inverse of 'x'
  
}
