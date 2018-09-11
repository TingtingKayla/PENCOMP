####CREATED 6/21/2017
#### MODIFIED 11/20/2017
### this is to produce table 29 in the appendix

###NOTE: set the fault directory to where the codes folder is located by using setwd("path").
DIREC="codes/Application/"  ###where the dataset and functions are stored

sampleSizeAll=read.table(paste0(DIREC, "Results/sampleSizeSum.txt"), sep="\t", header=T)

outPut=sampleSizeAll

outPut=cbind(paste("Window", 1:dim(outPut)[1], sep=""), rep("&", dim(outPut)[1]),
             outPut[,c(1)], rep("&", dim(outPut)[1]), outPut[,c(2)], rep("&", dim(outPut)[1]),
             outPut[,c(3)], rep("&", dim(outPut)[1]), outPut[,c(4)], rep("&", dim(outPut)[1]), rep("&", dim(outPut)[1]),
             outPut[,c(6)], rep("&", dim(outPut)[1]),
             outPut[,c(7)], rep("&", dim(outPut)[1]),outPut[,c(8)], outPut[,c(5)],
             rep("\\\\", dim(outPut)[1]))

###this can be directly copied and pasted into manuscript latex file to produce table 29 in the appendix 
write.table(outPut, paste(DIREC, "FiguresandTables/sampleSizeTable.txt",sep=""),  quote=F, col.names=F, row.names=F)






