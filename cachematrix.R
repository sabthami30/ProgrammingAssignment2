## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL ## set the initial value of inverse as NULL
        set <- function(y) {
                x <<- y
                inverse <<- NULL
        }
        get <- function() x 
        setinverse <- function(solve) ## the solve function is assigned to  setinverse 
                inverse <<- inverse
        getinverse <- function() inv
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function
## if the inverse is not equal to Null return a message getting matrix in cache
cacheSolve <- function(x, ...) {
      ##inverse the matrix which is already present in makeCacheMatrix function. 
      inverse <-x$getinverse()
      if(!is.null(inverse)) {
            message("getting Matrix in cache")
            return inv)
      }  
      mat<- x$get()
      inverse<-solve(mat,...) 
      x$setinverse(inverse) 
      inverse ##print the value of inverse
        ## Return a matrix that is the inverse of 'x'
}
