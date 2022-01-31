
## Step 1: Install and load the tidyverse packages

 # install.packages("tidyverse")


library(tidyverse)
library(ggplot2)

-----------------------------------------------------------------
  

## Step 2: Explore The Dataset

Diam = diamonds   # identify the dataset


# To view the structure of the "diamonds" dataset
str(Diam)


# To view the top rows of "diamonds" dataset.
head(Diam)


# To view column names from diamond dataset
colnames(Diam)

#EDA
dim(Diam)

glimpse(Diam) # to have a view of the dataset structure

-----------------------------------------------------------------
  
### Step 3: Cleaning Data
  
summary(Diam)

summarize(Diam, mean_carat = mean(carat))

-----------------------------------------------------------------
  

### Step 4: Visualizing Data

ggplot (data = Diam, aes(x=carat, y = price, color = cut)) +
  geom_point()

### 
ggplot(data = Diam, aes(x=depth, y = price, color = cut)) +
  geom_point()

## Histograms:
ggplot(Diam, aes(price, fill = clarity)) +
  geom_histogram(bins = 30)

###
ggplot(Diam, aes(price, fill = color)) + 
  geom_histogram(binwidth = 30) + 
  facet_wrap(~ clarity, scale = "free_y")

###
ggplot(data=Diam)+
  geom_bar(mapping = aes(x=cut , fill=cut))


### we creat stacked bar charts showing different classes

ggplot(data = Diam)+geom_bar(mapping=aes(x=cut,fill=clarity))




