## Put comments here that give an overall description of what your
## functions do

## Create Matrix object that stores inverse

makeCacheMatrix <- function(neo = matrix()) {
    ## store cached inverse matrix
    inverse <- NULL
    
    ## set matrix
    set <- function(x) {
        neo <<- x;
        inverse <<- NULL;
    }
    
    ## get matrix
    get <- function() return(neo);
    
    ## set inverse
    setinv <- function(inv) inverse <<- inv;
    ## get inverse
    getinv <- function() return(inverse);
    
    ## return everything with new values
    return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}


## Compute the inverse of the matrix, unless it's already figured out, then just return it

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    ## set the inverse
    inv <- x$getinv()

    ## If we already know the inverse, we're done here
    if (!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }

    ## figure out inverse
    data <- x$get()
    inv <- solve(data, ...)

    ## Cache inverse
    x$setinv(inv)
    
    ## remember the last thing done is what is returned
    inv
}
