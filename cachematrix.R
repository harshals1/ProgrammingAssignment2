## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	
	inv  <- NULL #inverse
  set  <- function(y){
	#caching
    x <<- y
    inv <<- NULL 
  }
  get  <- function() x
  setinv  <- function(inverse) inv  <<- inverse #setter inverse
  getinv  <- function() inv #getter inverse
  list(set= set, get = get, 
       setinv = setinv, 
       getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  i  <- x$getinv()
  if (!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data  <- x$get()
  # print(data) # matrix input
  i  <- solve(data, ...)
  x$setinv(i)
  i
}

#uncomment follwoing to run as example
#v <- makeCacheMatrix(matrix(c(1,2,2,1),2,2))
#cacheSolve(v)
