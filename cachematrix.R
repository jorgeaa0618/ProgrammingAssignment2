## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#first function creates a matrix  that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  SetInv <- function(inversa) inv <<- inversa
  GetInv <- function() inv
  list(set = set,
       get = get,
       SetInv = SetInv,
       GetInv = GetInv)
}

## Write a short comment describing this function
## Return  matrix inverse of x
cacheSolve <- function(x, ...) {
  inv <- x$GetInv()
  if (!is.null(inv)) {
    message("Obteniendo datos de memoria cache")
    return(inv)
  }
  matriz <- x$get()
  inv <- solve(mat, ...)
  x$SetInv(inv)
  inv
}
getwd()
