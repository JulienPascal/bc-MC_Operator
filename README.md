# bc-MC Operator
This repository contains the code for the paper "Artificial Neural Networks to Solve Dynamic Programming Problems: A Bias-Corrected Monte Carlo Operator", available here:
https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4476122

## Folders and Files
### 1. Folder `stochastic_growth_model`
#### neogrowth_model.ipynb
Solve the simple textbook Brock and Mirman (1972) model with full depreciation. This notebook creates:
* Figure 1, panel A: AIO_versus_MC_several_runs_2_σ_e0.5.png
* Figure 1, panel B: AIO_versus_MC_several_runs_3_σ_e1.5.png

#### neogrowth_model_2.ipynb
Change the value of N during training. Pick the one minimizing the the variance of the loss function. Use proposition 4 the calculate the variance of the loss. I observe fast convergence towards an optimal N, as visible in plot time_varying_N_simga_e_1.5.png.

### 2. Folder `model_with_bc`
#### bc-MC-consumption-savings.ipynb
Solve the consumption-savings problem with a borrowing constraint. This notebook creates:
* Figure 2: model_MC_bc_0_&_1.png
* Figure 3, panel A: AIO_versus_MC_several_runs_2_bc0.0.png
* Figure 3, panel B: AIO_versus_MC_several_runs_2_bc1.0.png

### 3. Folder `large_scale_model`
#### large_scale_model.ipnyb
Solve variants of the consumption-savings problem, varying the dimension for the
state vector and the shock vector. This notebook creates:
* Figure 4: Euler_error_time_TI_&_MC_separated_linear_2.png
* Figure 5: panel A: AIO_versus_MC_several_runs_2_bc0.0.png

## References
* Pascal, Julien, Artificial Neural Networks to Solve Dynamic Programming Problems: A Bias-Corrected Monte Carlo Operator (June 12, 2023). BCL Working Papers n°172., Available at SSRN: https://ssrn.com/abstract=4476122 or http://dx.doi.org/10.2139/ssrn.4476122

### Computational details
All calculations performed on the same laptop: Intel® Core™ i7-8850H CPU @ 2.60GHz × 12, Ubuntu 20.04.6 LTS. Python 3.8.10.
