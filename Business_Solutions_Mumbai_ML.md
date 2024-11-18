# 🏙️ Mumbai Properties: Solving Business Problems with Machine Learning

This project leverages Machine Learning to analyze and predict property prices in Mumbai. The focus is on actionable insights and strategies to improve property revenue.

---

## 🚀 Project Overview
![Project Pipeline](https://github.com/tushar384/Mumbai_Properties_With_Solving_Real_Business_Problem/blob/main/Mubai%20Propertie%20Img.jpg?raw=true)

Mumbai's real estate market is complex and competitive. This project tackles key business challenges by:
- 📊 Analyzing property data.
- 🔍 Identifying revenue-boosting factors.
- 🤖 Applying predictive machine learning models.
- 📈 Providing actionable business insights.

---

## 📂 Dataset Description

The dataset contains detailed property listings with the following key columns:

| **Feature**         | **Description**                                  |
|----------------------|--------------------------------------------------|
| `CITY`              | Location of the property (e.g., Mumbai South West) |
| `BEDROOM_NUM`       | Number of bedrooms in the property               |
| `AGE`               | Age of the property (years)                      |
| `TOTAL_FLOOR`       | Total number of floors in the property           |
| `PRICE_SQFT`        | Price per square foot (₹)                        |
| `AREA`              | Total area of the property (sq. ft)              |
| `FURNISH`           | Furnishing status (Semi-furnished, etc.)         |
| `VALUE IN CR`       | Total property price (₹ crores)                  |

---

## ⚙️ Machine Learning Workflow

1. **📥 Data Cleaning & Preprocessing**:
   - Unnecessary columns were dropped: `SPID`, `CLASS`, `CLASS_LABEL`, `SOCIETY_NAME`, `LOCALITY_NAME`.
   - Missing values were handled with median imputation.
   - Categorical variables (`CITY`, `PROPERTY_TYPE`, `FURNISH`) were encoded.

2. **📊 Feature Selection**:
   - Key features impacting property prices were selected: `CITY`, `BEDROOM_NUM`, `AGE`, `TOTAL_FLOOR`, `PRICE_SQFT`, `AREA`, `FURNISH`.

3. **🧠 Machine Learning Model**:
   - Applied **Random Forest Regressor** for its robust handling of non-linear data.
   - Split the dataset into training (80%) and testing (20%) sets.
   - Evaluated performance using:
     - **R² Score**: Measures prediction accuracy.
     - **Mean Squared Error (MSE)**: Measures prediction error.

---

## 📈 Key Outputs & Visualizations

### 🔑 Feature Importance
- Identified the most influential factors driving property prices:
  1. **`PRICE_SQFT`**
  2. **`AREA`**
  3. **`CITY`**

![Feature Importance Chart](path/to/feature_importance.png)

---

### 📊 Actual vs Predicted Prices
- Visualized the model's prediction accuracy using scatter plots:
  - X-axis: Actual Prices
  - Y-axis: Predicted Prices

![Actual vs Predicted Chart](path/to/actual_vs_predicted.png)

---

## 💡 Business Insights

### 🚀 Strategies to Increase Property Revenue
1. **Optimize Pricing**:
   - Properties with high `PRICE_SQFT` values have better revenue potential.
   - Consider dynamic pricing strategies for such areas.

2. **Focus on High-Demand Regions**:
   - Market properties in cities with higher predicted values.

3. **Invest in Semi-Furnishing**:
   - Semi-furnished properties yield better returns. Prioritize investment in basic furnishing.

4. **Promote Spacious Properties**:
   - Larger `AREA` and higher `TOTAL_FLOOR` significantly impact prices.

5. **Highlight Bedrooms**:
   - Properties with 3-4 bedrooms attract higher demand. Leverage this in marketing.

---

## 📂 Folder Structure
```
Mumbai_Properties/
├── data/ │
└── Mumbai_Final_File_In_Cr_Only.csv
├── models/ │
└── random_forest_model.pkl
├── visuals/ │
├── feature_importance.png │
└── actual_vs_predicted.png ├
── notebooks/ │
└── mumbai_properties_analysis.ipynb
└── README.md
```

---

## 🤝 Contributing

Contributions are welcome! Feel free to fork this repository and submit a pull request with your suggestions and improvements.

---

## 📧 Contact

For any queries or suggestions, reach out via:
- 📩 **Email**: chavanswapnil0990@gmail.com
- 🔗 **LinkedIn**: [https://github.com/tushar384]

---

## 📜 License

This project is licensed under the **MIT License**. Feel free to use, modify, and distribute this project as per the license terms.

---

## 📊 Tools & Technologies Used
- 🐍 Python (Pandas, NumPy, Scikit-learn)
- 📊 Plotly for interactive visualizations
- 🤖 Machine Learning: Random Forest Regressor
- 🛠️ Google Colab for development
