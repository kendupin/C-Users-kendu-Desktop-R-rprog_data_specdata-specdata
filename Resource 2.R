makeCacheMatrix <- function(x = matrix())
{ inv = NULL
set = function(y)
} inv = NULL
set = function(y) 
{ x <<- y
inv <<- NULL  
{
get = function() x
setinv = function(inverse) inv <<- inverse 
getinv = function() inv
list(set=set, get=get, setinv=setinv, getinv=getinv)}
inv <<- NULL}
}
get = function() x
setinv = function(inverse) inv <<- inverse 
getinv = function() inv
list(set=set, get=get, setinv=setinv, getinv=getinv)
get = function() x
setinv = function(inverse) inv <<- inverse 
getinv = function() inv
list(set=set, get=get, setinv=setinv, getinv=getinv)
cacheSolve <- function(x, ...)
  inv = x$getinv() 
if (!is.null(inv))
  return(inv)  
mat.data = x$get()
mat.data = x$get()
inv = solve(mat.data, ...)
x$setinv(inv)

return(inv)
{
  ## @x: output of makeCacheMatrix()
  ## return: inverse of the original matrix input to makeCacheMatrix()
  
  inv = x$getinv()
  
  # if the inverse has already been calculated
  if (!is.null(inv)){
    # get it from the cache and skips the computation. 
    message("getting cached data")
    return(inv)
  }
  
  # otherwise, calculates the inverse 
  mat.data = x$get()
  inv = solve(mat.data, ...)
  
  # sets the value of the inverse in the cache via the setinv function.
  x$setinv(inv)
  
  return(inv)
}
