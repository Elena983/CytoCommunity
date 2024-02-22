library(pheatmap)

# Read the CSV file
data <- read.csv("ResultTable_3.csv", head = TRUE, sep=",")
data

# Create a matrix where each row corresponds to a cluster and each column corresponds to a community
# Assuming you want to count the number of clusters in each community
heatmap_data <- table(data$Cell_Type, data$TCN_Label)

# Create the heatmap
pheatmap(heatmap_data,
         cluster_rows = TRUE,  # Cluster rows
         cluster_cols = TRUE,  # Cluster columns
         name = "counts",
         color = colorRampPalette(c("white", 
                                    "cadetblue1",
                                    "dodgerblue2", 
                                    "dodgerblue4"))(50))



