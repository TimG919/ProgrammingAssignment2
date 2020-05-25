## Put comments here that give an overall description of what your
## functions do

## working with input matrix provide functions to calculate inverse and store

makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      get <- function() x
      setmatrix <- function(m) m <<- m
      getmatrix <- function() m
      list(set = set, get = get,
           setmatrix = setmatrix,
           getmatrix = getmatrix)
}


## retrieve from cache otherwise calculate inverse of matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      m <- x$getmatrix()
      if(!is.null(m)) {
            message("getting cached data")
            return(m)
      }
      data <- x$get()
      m <- solve(data)
      x$setmatrix(m)
      m
}
