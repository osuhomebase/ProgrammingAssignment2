## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(neo = matrix()) {
    # store cached inverse matrix
    inverse <- NULL
    
    # set matrix
    set <- function(x) {
        neo <<- x;
        inverse <<- NULL;
    }
    
    # get matrix
    get <- function() return(neo);
    
    # set inverse
    setinv <- function(inv) inverse <<- inv;
    # get inverse
    getinv <- function() return(inverse);
    
    # return everything with new values
    return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
