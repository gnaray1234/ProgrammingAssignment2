## Cache inverse of a matrix

## Creates a special matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  setMatrix <- function( x){
    x <<- y 
    m <<- NULL
  } 
  getMatrix <- function() x
  setInverse <- function(inv = matrix()) m <<- inv
  getInverse <- function() m 
  list(setMatrix = setMatrix, getMatrix = getMatrix, setInverse = setInverse, getInverse = getInverse)
  
}


## Computes the inverse of the special matrix returned by makeCacheMatrix.If inverse is already calculated, retrieves inverse from cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    if(!is.null(m)){
      message("getting cached data")
      xreturn(m);
    }
    data <- x$getMatrix()
    m <- solve(data,...)
    x$setInverse(m)
    m
}