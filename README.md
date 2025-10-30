# Mixed Sub-Fractional Brownian Motion for Option Pricing

This repository presents an independent implementation and evaluation of an **option pricing model driven by mixed sub-fractional Brownian motion (SFBM)**. The project was conducted remotely under the supervision of **Dr. Matthias Dörrzapf** at the University of Cambridge between July and November 2022.

 **Full write-up**: [The optional pricing model driven by Mixed SFBM.pdf](./The%20optional%20pricing%20model%20driven%20by%20Mixed%20sfbm.pdf)

---

## Project Overview

Classical Black–Scholes (B–S) models rely on standard Brownian motion, which assumes independent increments and lacks long-term memory. However, financial markets often exhibit long-range dependence and non-Markovian behavior. To capture these features, this project explores **mixed sub-fractional Brownian motion (SFBM)**, a non-stationary generalization that blends standard and fractional components.

The core contributions of this project include:

-  Developed a closed-form formula for European call options using stochastic difference equations under mixed SFBM.
-  Tuned parameters using a simulated annealing algorithm for robust convergence.
-  Demonstrated improved accuracy over baseline models using SSE 50ETF option price data, achieving improved accuracy over both the B-S model (↑5%) and SFBM model (↑26%).

---
---

## References

1. Biagini, F., Hu, Y., Øksendal, B., & Zhang, T. (2008). *Stochastic Calculus for Fractional Brownian Motion and Applications*. Springer.
2. Elliott, R. J., Chan, L., & Siu, T. K. (2005). Option pricing and Esscher transform under regime switching. *Annals of Finance*, 1(4), 423–432.
3. Mandelbrot, B. B., & Van Ness, J. W. (1968). Fractional Brownian motions, fractional noises and applications. *SIAM Review*, 10(4), 422–437.
4. Mishura, Y. (2008). *Stochastic Calculus for Fractional Brownian Motion and Related Processes*. Springer.
5. Shen, Y., & Shiryaev, A. N. (2020). Mixed fractional Brownian motion: properties and applications. *Theory of Probability and Its Applications*, 65(1), 98–114.
6. Yan, Z., & Shen, Y. (2021). A new mixed sub-fractional Brownian motion model for option pricing. *Applied Mathematics and Computation*, 394, 125798.

---

## Author

- **Weitong Liang**

---
