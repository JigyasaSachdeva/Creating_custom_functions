#Function to sort factor variables based on number of levels

#Algorithm

#Dropping the target variable
wotarget <- gun_deaths %>% select(-intent)
#Number of levels for factor variable
n = 5
#Function applied on each variable to check if unique levels are less than n
s <- sapply(wotarget,function(x) length(unique(x)) < n)
#The logical array of tru and false is used to deicide the factor variables in the data
fac <- wotarget[,s]
#The value of each variable's unique levels is stored in len
len <- as.data.frame(sapply(fac,function(y) length(unique(y))))
#All the factor varaible names are stored in c
c <- as.data.frame(colnames(fac))
#The factors and respective length (unique levels) is stored in a dataframe
data <- cbind(c,len)
#Assigning column names to the table
colnames(data) = c('Variable', 'Length')
#The data is sorted
final <- data %>% arrange(Length) 
#Displaying the factor variables sorted by the number of levels in ascending order
a <- as.array(final$Variable)


#Function

extract_factors = function(df, n_levels, target)
{
  wotarget <- df %>% select(-target)
  
  s <- sapply(wotarget,function(x) length(unique(x)) < n_levels)
  fac <- wotarget[,s]
  len <- as.data.frame(sapply(fac,function(y) length(unique(y))))
  c <- as.data.frame(colnames(fac))
  data <- cbind(c,len)
  colnames(data) = c('Variable', 'Length')
  
  final <- data %>% arrange(Length) 
  a <- as.character(final$Variable)
  
  return(as.list(a))
  
}

#Test case 1

test_case = extract_factors(gun_deaths, 9, 'intent')




