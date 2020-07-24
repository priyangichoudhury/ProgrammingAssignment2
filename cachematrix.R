makeCacheMatrix <- function(x = matrix()) {
                j <- NULL
                set <- function(y) {
                x <<- y
                j <<- NULL
}
 get <- function() x
  setinverse <- function(inverse) j <<- inverse
  getinverse <- function() j
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

##the below function finds out the inverse of the matrix returned by the makeCachematrix above. If
the inverse has already been calculated(and the matrix is constant)then, cacheSolve will retrieve
the inverse from the cache.

 cacheSolve <- function(x, ...) {
  j <- x$getinverse()
  if (!is.null(i)) {
          message("getting cached data")
          return(j)
  }
  data <- x$get()
  j <- solve(data, ...)
  x$setinverse(j)
  j
}