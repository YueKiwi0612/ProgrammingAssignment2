## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## The function below creates a "matrix" object that can cache the inverse
makeCacheMatrix <- function(x = matrix()){
        inv <- NULL
        set <- function(y){
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() inv
        list(set=set,get=get, setInverse=setInverse,getInverse=getInverse)
}

## Write a short comment describing this function
## This function computes the inverse of the "matrix" object created by makeCacheMatrix function above. 
## If the inverse has been calculated before for the same matrix, then it should retrieve the calculated inverse from the cache

cacheSolve <- fumction(x,...){
        inv <- x$getInverse()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat,...)
        x$getInverse(inv)
        inv
}   
