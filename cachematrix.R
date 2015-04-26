## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
xinv <- NULL
set <- function(y) {
x <<- y
xinv <<- NULL}
get <- function() x 
setInv <- function(inv) xinv <<- inv
getInv <- function() xinv 
list(set = set, get = get,
setInv = setInv,
getInv = getInv)}


## Write a short comment describing this function
## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
a <- x$getInv() 
if(!is.null(a)) { 
	message("getting cached data")
	return(a)
}
data <- x$get() 
a <- solve(data) 
x$setInv(a) 
a 
}
