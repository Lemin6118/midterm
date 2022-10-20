# install.packages("rstudioapi")  추가로 인스톨 작업을 하지않기위해 인스톨 후 주석처리
library(XML)        # install.packages("XML")      
library(data.table) # install.packages("data.table")
library(stringr)    # install.packages("stringr")
# 디렉토리 셑팅
setwd(dirname(rstudioapi::getSourceEditorContext()$path))

file = './04_preprocess/04_preprocess.rdata'
  e <- new.env(parent = emptyenv())
  load(file, envir = e)
  objs <- ls(envir = e, all.names = TRUE)
  for(obj in objs) {
    .x <- get(obj, envir =e)
    message(sprintf('Saving %s as %s.csv', obj,obj) )
    write.csv(.x, file = paste0('apt_name', '.csv'))
  }