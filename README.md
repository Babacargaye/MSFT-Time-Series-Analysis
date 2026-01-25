# MSFT Time Series Analysis

ENSAI 3A Project - Advanced Time Series

## Project Objective

This project compares different approaches for modeling and predicting daily returns of Microsoft (MSFT) stock from 2000 to 2023:

1. **Classical Econometric Approach (R)**: ARIMA and GARCH models to capture temporal dynamics and volatility
2. **Deep Learning Approach (Python)**: CNN-LSTM network for price and log-returns prediction

| Approach | Models | Language | File |
|----------|--------|----------|------|
| Econometric | ARIMA(4,0,0) + GARCH(1,1) | R | `code_projet.Rmd` |
| Deep Learning | CNN-LSTM | Python | `CNN_LSTM.ipynb` |


## Project Structure

```
projet_ST/
├── Rapport.pdf          <- Final report (PDF)
├── code_projet.Rmd      <- R Analysis (ARIMA/GARCH)
├── CNN_LSTM.ipynb       <- CNN-LSTM Model (Python/PyTorch)
├── install_packages.R   <- R packages installation script
├── README.md            <- This file
└── LICENSE              <- MIT License
```


## Installation

### Requirements

**For R analysis:**
- R (version 4.0+): https://cran.r-project.org/
- RStudio: https://posit.co/download/rstudio-desktop/

**For CNN-LSTM model (Python):**
- Python 3.8+
- Jupyter Notebook or VS Code

### Download the Project

```bash
git clone https://github.com/Babacargaye/MSFT-Time-Series-Analysis.git
cd MSFT-Time-Series-Analysis
```

### Install R Packages

```r
# In RStudio, run:
source("install_packages.R")
```

Or manually:
```r
packages <- c("quantmod", "forecast", "rugarch", "tseries", 
              "FinTS", "moments", "ggplot2", "dplyr", 
              "zoo", "knitr", "urca", "tidyr", "lubridate")
install.packages(packages)
```

### Install Python Packages

```bash
pip install yfinance pandas numpy matplotlib torch scikit-learn
```


## Execution

### R Analysis (ARIMA/GARCH)

1. Open `code_projet.Rmd` in RStudio
2. Click **Knit > Knit to PDF** or run chunk by chunk

### CNN-LSTM Model (Python)

1. Open `CNN_LSTM.ipynb` in Jupyter or VS Code
2. Run all cells in order

The notebook contains two experiments:
- **Closing price prediction** (MinMax normalized)
- **Log-returns prediction**


## Main Results

### ARIMA-GARCH Analysis (R)
| Metric | Value |
|--------|-------|
| Mean model | ARIMA(4,0,0) |
| Volatility model | GARCH(1,1) + Student-t |
| Volatility persistence | α + β = 0.997 |
| Degrees of freedom | df = 4.23 |

### CNN-LSTM Model (Python)
| Architecture | Details |
|--------------|---------|
| Conv1D | 2 layers (32 → 64 filters) |
| MaxPooling | kernel_size=2 |
| LSTM | hidden_size=50 |
| Dropout | 0.4 |
| Sequence | 60 days |

Evaluated metrics: MSE, RMSE, MAE


## Data Source

Data is automatically downloaded from **Yahoo Finance** via:
- R: `quantmod` package
- Python: `yfinance` package

| Parameter | Value |
|-----------|-------|
| Ticker | MSFT (Microsoft) |
| Period | 2000-01-01 to 2023-12-31 |
| Frequency | Daily |
- Environ 5700 observations









