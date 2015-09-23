## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    # A setter function, use this to set a matrix to object created by makeCacheMatrix function
    
    xInverse <- NULL # initialize the inverse
    
    set <- function(y) {
        x <<- y
        xInverse <<- NULL
    }
    
    get <- function() x # returns the input matrix
    setInv <- function(inv) xInverse <<- inv # set the inverse matrix
    getInv <- function() xInverse # return/get the inverse matrix
    
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}    




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    # This function computes the inverse of x created with the above function
    
    m <- x$getInverse() # get the inverse matrix from x
    
    if(!is.null(m)) {
        message("getting cached data")
        return(m) # return the calculation
    }
    
    data <- x$get()
    m <- solve(data, ...)
    x$setInverse(m)
    m
}
