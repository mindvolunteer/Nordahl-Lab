rm(list=ls(all=TRUE))
#ARC <- read.csv('ARCNodes.orig.csv', header=TRUE)
#fARC <- write.csv(ARC, file="'ARCNodes.csv)

##Get sequence of columns to be changed from user input
x <- readline("Input start of column names you wish to change as an integer. For example, if you want to change the names of columns 50 through 200, enter 50: ")
x <<- as.integer(x)
if (x%%1 == 0) {
   cat(sprintf("\n\n~~~Start Change on Column: %d\n\n\n",x))
   } else {
   stop("Please check your input.")
   }

y <- readline("Input end of column names you wish to change as an integer: ")
y <<- as.integer(y)
if (y%%1 == 0) {
   cat(sprintf("\n\n~~~Start Change on Column: %d. End Change on Column: %d\n\n\n",x,y))
   } else {
   stop("Please check your input.")
   }


##From user input
a <- seq(x,y,1)
Length <<- length(a)
#print(names(fARC[a]))

CHECK <- readline("Are these the column names you wish to change? (Y/n): ")
if (CHECK=="Y") {
} else if (CHECK=="n") {
  stop("Please check your input.")
} else {
  stop("Please check your input.")
}


##Function to determine new name for columns from user input
ANSWER <- readline("Do you want the column names to end with numbers in ascending order? Ex. LarcRD1 LarcRD2 ... LarcRD100? (Y/n): ")

naming_tool <- function(ANSWER) {
     if (ANSWER == "Y")
{
	   cat(sprintf("\n\n~~~Start Change on Column: %d. End Change on Column: %d. End Column Name with Numbers?: %s\n\n\n",x,y,ANSWER))

	new_name <<- readline("Input the new name you would like for the columns, WITHOUT the sequence of numbers: ")
	    cat(sprintf("\n\n~~~Start Change on Column: %d. End Change on Column: %d. End Column Name with Numbers?: %s. New Name for Columns: %s\n\n\n",x,y,ANSWER,new_name))

	numstart <<- as.integer(1)
	numend <<- Length
	   cat(sprintf("\n~~~By default, the sequence of numbers to be appended to the new column names will be %d to the number of column names you are changing: %d.\n\n",numstart,numend))







###	numstart <<- readline("Input the start of the sequence of numbers you would like for the column names. For example, if you want 1 through 100 at the end of each new column name, input 1: ")
###	numstart <<- as.integer(numstart)
	
###	if (numstart%%1==0) {
###	  cat(sprintf("\n\n~~~Start Change on Column: %d. End Change on Column: %d. End Column Name with Numbers?: %s. New Name for Columns: %s. New Column Numbering Start: %d\n\n\n",x,y,ANSWER,new_name,numstart))
###	} else {
###	  stop("Please check your input.")
###	}    

###	   cat(sprintf("~~As a note, the number of columns you are changing is: %d\n\n",Length))
###     numend <<- readline("Input the end of the sequence of numbers you would like for the column names: ")
###	numend <<- as.integer(numend)

###	if (numend%%1==0) {
###	  cat(sprintf("\n\n~~~Start Change on Column: %d. End Change on Column: %d. End Change on Column Name with Numbers?: %s. New Name for Columns: %s. New Column Numbering Start: %d. New Column Numbering End: %d\n\n\n",x,y,ANSWER,new_name,numstart,numend))
###	} else {
###	  stop("Please check your input.")
###	}	   





}
      else if (ANSWER == "n")
{
         new_name <<- readline("Input the new name you would like for the column(s): ")
	 cat(sprintf("\n\n~~~Start Change on Column: %d. End Change on Column: %d. End Change on Column Name with Numbers?: %s. New Name for Columns: %s\n\n\n",x,y,ANSWER,new_name))
}
       else
{
     stop("Please recheck your input.")
}
}


##Runs function
if(interactive()) naming_tool(ANSWER)


##adsflkads   Just need to finish the options for the rest of the input options ########
######   also need to figure out how to save new file, but keep the original - check first line of script ##########
######   check below loop, probs won't work ########


##Loop to change columns including numbers in ascending order. Or not. Depends on user input
#if (ANSWER=="Y") {
   #j <- numstart
   #for (i in a) && (j =< numend) {
   #    names(fARC)[i] <- paste(new_name,j,sep="")
   #    j <- j+1
   #}

#print(names(fARC[a]))

#} else if (ANSWER=="n") { 
   #for (i in a) {
   #	names(fARC)[i] <- new_name
   #}

#print(names(fARC[a]))

#}

RESPONSE <- readline("Do these changes look right to you? (Y/n): ")
#if (RESPONSE == "Y") {


### SAVE FILE to a new copy, want to keep ***.orig.csv###


#} else if (RESPONSE == "n") {
#   stop("Please check your input.")
#} else {
#stop("Please check your input.")
#}

##names(fARC)[x] <- 'something' ### works
## to run command in R, do source("[file]")
## http://stackoverflow.com/questions/10180091/how-do-i-rename-a-sequence-of-variable-names-in-data-frame
