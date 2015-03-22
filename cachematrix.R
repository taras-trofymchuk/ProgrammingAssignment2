## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv_x <- NULL
  changed <- TRUE
  set <- function(y) {
    x <<- y
    inv_x <<- NULL
    changed <<- TRUE
  }
  get <- function() x
  setInv <- function(inv) {
    inv_x <<- inv
    changed <<- FALSE
  } 
  getInv <- function() inv_x
  isChanged <- function() changed 
  list (set = set, get = get, 
        setInv = setInv, getInv = getInv, 
        isChanged = isChanged)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  if (x$isChanged()) {
    m<-x$get()
    print(m)
    x$setInv(solve(m))
  } 

  x$getInv() ## Return a matrix that is the inverse of 'x'
}
