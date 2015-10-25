## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## makeCacheMatrix creates a list containing the following functions
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the inverse of the matrix
## 3. get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL

        setMatrix <- function(y) {
                x <<- y
                m <<- NULL
        }
        getMatrix <- function() x

        setInverse <- function(m) m <<- solve(x)
        getInverse <- function() x
	

        getMatrix()
}


## Write a short comment describing this function
## The function checks to see, if inverse is set, if it is , it gets it from cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'	

        m <- getInverse(x)
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        matrx <- getMatrix()
        m <- solve(matrx)
        setInverse(m)
        m
}
}
