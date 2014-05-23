## Write Function that is given a matrix and can cache its inverse
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL                       
        set <- function(y) {            
                x <<- y                 
                m <<- NULL              
        }
        get <- function() x
        setInverse <- function(inverse) m <<- inverse
        getInverse <- function() m
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
        

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        InvM <- x$getInverse()
        if(!is.null(InvM)) {
                message("getting cached data")
                return(InvM)
        }
        data <- x$get()
        InvM <- solve(data)
        x$setInverse(InvM)
        InvM
}
