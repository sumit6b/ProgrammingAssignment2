## Put comments here that give an overall description of what your
## functions do


##makeCachMatrix is a function which returns a list containing five functions. 
##Which are:
##  set: creates a matrix and stores the matrix and initiallized null inverse value in cache or other environment.
##  get: it returns the matrix present in cache
##  setInverse: It sets the inverse variable i. We can use the function cacheSolve to set this value. Passing the list object this function gonna create.
##  getInverse: It returns the inverse variable i.


## Write a short comment describing this function

##This function creates a list conating functions to set,get the matrix and set,get the inverse.
##The matrix and inverse are stored in other environment.

makeCacheMatrix <- function(x = matrix()) {
  i<-NULL
  set<-function(y=numeric(),m=0,n=0){
    mat<<-matrix(y,m,n)
    i<<-NULL
  }
  get<-function() mat
  setInverse<-function(inv) i<<-inv
  getInverse<-function() i
  list(set=set,get=get,setInverse,getInverse=getInverse)
}


## Write a short comment describing this function

##This function takes in the object created by makeCacheMatix. 
##And try to return the inverse value using solve function. 
##First it checks if the value is already present in the cache, 
##if it is not present in the cache it evaluates it otherwise return the value from cache if present.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-x$getInverse()
  if(!is.null(inv)){
    return(m)
  }
  mat<-x$get()
  inv<-solve(mat)
  x$setInverse(inv)
  inv
}
