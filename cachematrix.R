## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  
  set <- function(y){
    x <<- y
    m <- NULL
  }
  
  get <- function(){
    x
  }
  
  setinverse <- function(inv){
    m <<- inv
  }
  
  getinverse <- function(){
    m
  }
  
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {

	if(is.null(x$getinverse())){
    x$setinverse(solve(x$get()))
  }
  
  return(x$getinverse())
        ## Return a matrix that is the inverse of 'x'
}
