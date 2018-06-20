## ProgrammingAssignment2
## This assignment includes the algorithmn for writing a couple of functions - CacheMatrix and CacheSolve that creates a special 'matrix' objects and caches its inverse; and computes the matrix and returns the inverse of the same.

## The first function CacheMatrix shown below is CacheMatrix which will create the 'matrix' object and caches it's inverse.

makeCacheMatrix <- function(x = matrix()) {
        
        inv <- NULL #setting the inverse to NULL
        get <- function() x #getter for the matrix
        set <- function(y) { #setting the function of the matrix object
                x <<- y 
                inv <<- NULL
        }
setInverse <- function(setInverse) inv <<- setInverse #setter for the matrix inverse
getInverse <- function() inv #getter for the matrix inverse
   list(set = set, 
        get = get, 
        setInverse = setInverse, 
        getInverse = getInverse)
}


## The second function CacheSolve shown below will compute the matrix if computed, and retrieve the result once stored. If not, then it will compute and returns the inverse of 'x' matrix.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x' (if computed, store and return result)
        inv <- x$getinv()
        if(!is.null(inv)) {
                message("Get cached inverse result")
        return(inv)
}
        # Compute, cache and return the inverse of the matrix
        matrix <- x$get()       
        inv < - solve(matrix)
        x$setInverse(inv)
        return(inv)
        
}
