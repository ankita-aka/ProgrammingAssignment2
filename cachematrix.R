## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## creates an initial variable 'inv', set and get functions for the matrix and inverse matrix

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y) {
		x <<- y
		inv <<- NULL
}
  get <- function ()x
  setInv <- function(solve) inv <<- solve
  getInv <- function() inv

  list(set = set, get = get, setInv = setInv, getInv = getInv)

}

## Write a short comment describing this function
## computing the inverse of the matrix using the variables created from first portion

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inv <- x$getInv()
	if(!is.null(inv)) {
		message("getting cached data")
		return(inv)
	}
	data <- x$get()
	inv <- solve(data, ...)
	x$setInv(s)
	inv
}
