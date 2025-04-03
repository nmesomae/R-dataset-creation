#new file
# Load required library
set.seed(42)  # For reproducibility

# Create the dataset
data <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David", "Emma", 
           "Fiona", "George", "Hannah", "Ian", "Jack"),
  Age = sample(18:22, 10, replace = TRUE),  # Random ages between 18 and 22
  Class = sample(c("A1", "B2", "C3", "D4"), 10, replace = TRUE),  # Alphanumeric class
  Height = round(runif(10, 150, 190), 1),  # Random height between 150-190 cm
  Weight = round(runif(10, 50, 90), 1),    # Random weight between 50-90 kg
  Math_Score = sample(50:100, 10, replace = TRUE),  # Math scores (50-100)
  English_Score = sample(50:100, 10, replace = TRUE),  # English scores (50-100)
  Science_Score = sample(50:100, 10, replace = TRUE)  # Science scores (50-100)
)

# Add a new column for Total Score (sum of Math, English, and Science scores)
data$Total_Score <- data$Math_Score + data$English_Score + data$Science_Score

# View the dataset
print(data)