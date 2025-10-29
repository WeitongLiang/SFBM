# Mixed sfbm Option Pricing Model

This repository contains materials for my research project on European call option pricing using **mixed sub-fractional Brownian motion (mixed sfbm)**. The goal is to develop and empirically evaluate an option pricing model that captures long-range dependence and nonstationary increments observed in real financial markets.

## 📄 Project Summary

The complete research write-up is provided in the file:

- [`paper/Research_training_WtLiang.pdf`](paper/Research_training_WtLiang.pdf)

It includes the following components:

- Background on limitations of traditional Black-Scholes (BS) model
- Introduction to fractional and sub-fractional Brownian motions
- Derivation of the option pricing formula using mixed sfbm and Wick-Itô integral
- Empirical analysis based on SSE 50ETF option data
- Comparison with BS and sfbm-based models

## 📁 Repository Structure

```
mixed-sfbm-option-pricing/
├── README.md                   # This file
├── paper/
│   └── Research_training_WtLiang.pdf     # Full research report
├── data/
│   └── SSE_50ETF_options.csv   # Cleaned and preprocessed option data
├── code/
│   ├── pricing_model.py        # Implements the mixed sfbm pricing formula
│   ├── parameter_estimation.py # Parameter tuning using simulated annealing
│   └── utils.py                # Helper functions (e.g., error calculation, plotting)
├── results/
│   └── fig1_closing_prices.png # Sample figures (optional)
```

> Note: File names are subject to change depending on final implementation.

## ⚙️ How to Run

The code scripts under `code/` include:

- Simulation of the mixed sfbm process
- Parameter estimation using sample data
- Option price computation
- Model comparison (mixed sfbm vs BS vs sfbm)

Example (Python):

```bash
cd code
python parameter_estimation.py
python pricing_model.py
```

Or (R):

```r
source("parameter_estimation.R")
source("pricing_model.R")
```

## 📈 Data

The `data/` folder includes cleaned historical option contract data from the **Shanghai Stock Exchange (SSE 50ETF options)** between October 2021 and August 2022. Data was sourced from the Wind Information Terminal.

## 📚 Citation and Acknowledgments

- Based on original research project by **Weitong Liang** at **Xi’an Jiaotong University**
- References to related works are included in the PDF

## 📑 License

MIT License (or add your preferred license here).
