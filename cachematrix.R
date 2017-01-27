## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        makeVector <- function(x = numeric()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(mean) inv <<- mean
        getinverse <- function() inv
        list(set = set, get = get,
             setmean = setinverse,
             getmean = getinverse)
}

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        cachemean <- function(x, ...) {
        inv <- x$getmean()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        mat <- x$get()
        m <- mean(mat, ...)
        x$setmean(inv)
        inv
}
        ## Return a matrix that is the inverse of 'x'
}
