## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv_x <- NULL ## Vaiable to store inversed matrix
  changed <- TRUE ## Status variable
  
  ## Setter for initial matrix 
  set <- function(y) { 
    x <<- y
    inv_x <<- NULL
    changed <<- TRUE
  }
  
  ## Getter for initial matrix 
  get <- function() x 
  
  ## Setter for inversed matrix
  setInv <- function(inv) { 
    inv_x <<- inv
    changed <<- FALSE
  } 
  
  ## Getter for inversed matrix 
  getInv <- function() inv_x 
  
  ## Getter for status 
  isChanged <- function() changed 
  
  list (set = set, get = get, 
        setInv = setInv, getInv = getInv, 
        isChanged = isChanged)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  if (x$isChanged()) { ##Check if matrix was changed recently
    m<-x$get() ##get matrix 
    print(m)
    x$setInv(solve(m)) ## Set inverse of 'x'
  } 

  x$getInv() ## Return a matrix that is the inverse of 'x'
}
