## Put comments here that give an overall description of what your
## functions do
---creates an object that can cache its inverse

## Write a short comment describing this function

---creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
      set <- function(y){
            x <<- y
            inv <<- NULL
      }
      get <- function() {x}
      setInverse <- function(inverse) {inv <<- inverse}
      getInverse <- function() {inv}
      list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## Write a short comment describing this function

---computes the inverse of the function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

   ## Return a matrix that is the inverse of 'x'
m <- x$getInverse()

## Return the inverse if its already set
if( !is.null(m) ) {
        message("getting cached data")
        return(m)
}

## Get the matrix from our object
data <- x$get()

## Calculate the inverse using matrix multiplication
m <- solve(data) %*% data

## Set the inverse to the object
x$setInverse(m)

## Return the matrix
m
}
