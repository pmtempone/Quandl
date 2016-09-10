----#packages----
library(Quandl)


----#connection---
  
Quandl.api_key("api_key")

data <- Quandl("WIKI/FB")

#Get monthly changes in Facebook's closing price for the year 2014:
data <- Quandl("WIKI/FB.11", start_date="2014-01-01", end_date="2014-12-31", collapse="monthly", transform="diff")

#Get all rows for MSFT from the ZACKS/FC fundamentals data table:
  
  data <- Quandl.datatable("ZACKS/FC", ticker="MSFT")

  
mydata <- Quandl.datatable("INQ/EE")
  
#The above example retrieves all records in the datatable INQ/EE, subject to a size cutoff at 10,000 rows.
  
  
#To retrieve more rows, turn pagination on like this:
    
    mydata <- Quandl.datatable("INQ/EE", paginate=TRUE)
  
    
    
#To get multiple datasets in one call, comma-delimit their codes and put them in an array like this:
      
      merged_data <- Quandl(c("WIKI/FB","EOD/AAPL","WIKI/MSFT"))
    
#You can also request specific columns from multiple datasets:
      
      merged_data <- Quandl(c("WIKI/FB.1","EOD/AAPL.2","WIKI/MSFT.3"))
    
    
