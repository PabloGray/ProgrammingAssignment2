## Put comments here that give an overall description of what your
## functions do

# This function takes a matrix as an argument, and stores its inverse in
# the memory. Its body is composed by two functions.

## Write a short comment describing this function

# The first function creates a list that contains a function to:
# 1. Set the value of the matrix.
# 2. Get the value of the matrix.
# 3. Set the value of the inverse.
# 4. Get the value of the inverse.

makeCacheMatrix <- function(x = matrix()) {
	s <- NULL
	set <- function(y) {
		x <<- y
		s <- NULL
	}
	get <- function() x
	setsolve <- function(solve) s <<- solve
	getsolve <- function() s
	list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}



## Write a short comment describing this function

# This second function takes the list described some lines up and calculates
# the inverse of the given matrix, if it was not previously calculated.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		s <- x$getsolve()
		if(!is.null(s)) {
			message("getting cached data")
           		return(s)
		}
		data <- x$get()
        	s <- solve(data, ...)
        	x$setsolve(s)
        	s
}
