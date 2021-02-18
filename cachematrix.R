## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    ## to initiate the inverse 
    m <- NULL
    
    ## This is meant to set the matrix
    set <- function(y){
            x <<- y
            m <<- NULL
    }
    
    ## This is to get the matrix
    get <- function()x
    
    ## To set the inverse of the matrix
    setInverse <- function(inverse) m <<- inverse
    getInverse <- function()m
    
    ## Return a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    
    ## If statment to return the inverse if its already set
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    
    ## To get the matix
     data <- x$get()
     
     ## Calculate the inverse
     m <- solve(data,...)
     
     ## Set the inverse to the object
     x$setInverse(m)
     
     ## Return the matrix
     m
  }
