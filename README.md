# Sleep Data Analysis Project 💤📊

This project analyzes the impact of various factors on sleep duration and quality using statistical methods in R and Python.

## 📄 Overview

A dataset from Kaggle was used, containing variables such as:
- Sleep duration and quality
- Age and gender
- Physical activity level and stress level
- BMI category
- Presence of sleep disorders

### 📘 Full Report
The complete analysis and visual results are included in [`report.pdf`](./report.pdf).

## 📁 Project Structure

```
├── Cleaned_Dataset.csv            # Cleaned dataset
├── Dataset.txt                    # Original dataset in text format
├── Raw_Dataset.csv                # Raw dataset
├── csv_cleaner.py                 # Python script to clean the dataset
├── *.R                            # R analysis scripts (bootstrapping, correlations, plots, etc.)
├── report.pdf                     # Final report in PDF format
```

## 🔬 Techniques Used

- Parametric and non-parametric bootstrapping
- Pearson correlation test
- Chi-squared test
- Regression models and data visualization using ggplot2

## 📈 Key Findings

- Women sleep slightly more than men, possibly due to age distribution in the dataset.
- Positive correlation between age and sleep duration.
- Higher stress levels are strongly associated with poorer sleep quality.
- BMI categories are significantly related to the presence of sleep disorders.

## 🛠 Requirements

### Python
- `pandas`

### R
- `ggplot2`
- No complex external packages required

## 🚀 How to Run

1. Clone this repository:
   ```bash
   git clone https://github.com/your_username/sleep-analysis-project.git
   cd sleep-analysis-project
   ```

2. (Optional) Run the cleaning script:
   ```bash
   python csv_cleaner.py
   ```

3. Open and run the `.R` scripts in your preferred R environment (RStudio recommended).

## 🧠 Author

David Ruiz Cáceres  

## 📚 Original Dataset

[Sleep Health and Lifestyle Dataset - Kaggle](https://www.kaggle.com/datasets/uom190346a/sleep-health-and-lifestyle-dataset)
