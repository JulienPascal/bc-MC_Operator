# bc-MC Operator
## Artificial Neural Networks to Solve Dynamic Programming Problems: A Bias-Corrected Monte Carlo Operator
This repository contains the code for the paper "Artificial Neural Networks to Solve Dynamic Programming Problems: A Bias-Corrected Monte Carlo Operator", available here:
[https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4476122](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4476122)

## Folders and Files
### Folder `6.Brock_Mirman_Colab`
Folder to solve the simple textbook Brock and Mirman (1972) model with full depreciation.

Notebooks (`BM_1.ipynb`, ..., `BM_8.ipynb`) were executed on Google Colab. Notebooks and output files (initially saved on Google Drive) were then downloaded locally in this folder. Notebooks are for different optimizers (ADAM or SGD) and different values of the learning rate.

To create Figures 1 and 2 (saved in the folder `output`), use the notebook `plot_BM.ipynb`. Functions are stored in the notebook `functions_BM.ipynb`.

<img src="https://github.com/JulienPascal/bc-MC_Operator/blob/Revision_1/6.Brock_Mirman_Colab/output/changing_M_lr_0.005_optim_Adam_one_page_zoom_True.png" width="200" height="200">

<img src="https://github.com/JulienPascal/bc-MC_Operator/blob/Revision_1/6.Brock_Mirman_Colab/output/opt_N_lr_0.005_optim_Adam_one_page_zoom_True.png" width="200" height="200">


The notebook `plot_BM.ipynb` also creates Figures 8 - 21 in the online Appendix.


### Folder `7.model_with_bc_2`
Folder to solve the consumption-savings problem with a borrowing constraint.

The notebook `bc-MC-consumption-savings_bc_0.ipynb` solves the model with $b=0$. It creates panel A of Figure 3. The notebook `bc-MC-consumption-savings_bc_1.ipynb` solves the model with $b=1$. It creates panel B of Figure 3.

### Folder `8.model_with_bc_2_Colab`
Folder to solve the consumption-savings problem with a borrowing constraint.

Notebooks (`bc-MC-consumption-savings_bc_hyperparams_1.ipynb`, ..., `bc-MC-consumption-savings_bc_hyperparams_4.ipynb`) were executed on Google Colab. Notebooks and output files (initially saved on Google Drive) were then downloaded locally in the folder. Notebooks are for different optimizers (ADAM or SGD) and different values of the learning rate.

To create Figures 4 and 5 (saved in the folder `output`), use the notebook `plot_bc.ipynb`. Functions are stored in the notebook `functions-bc-MC-consumption-savings.ipynb`.

<img src="https://github.com/JulienPascal/bc-MC_Operator/blob/Revision_1/8.model_with_bc_2_Colab/output/model_bc_changing_M_lr_0.001_optim_Adam_one_page_zoom_True.png" width="200" height="200">

<img src="https://github.com/JulienPascal/bc-MC_Operator/blob/Revision_1/8.model_with_bc_2_Colab/output/model_bc_opt_N_lr_0.001_optim_Adam_one_page_zoom_True.png" width="200" height="200">


The notebook `plot_bc.ipynb` also creates Figures 22 - 35 in the online Appendix.

### Folder `9.large_scale_model_2`
Folder to solve variants of the consumption-savings problem, varying the dimension for the state vector and the shock vector.
Compare the bc-MC operator to the Time Iteration (TI) algorithm with a dense grid, a sparse grid, as well as an adaptive sparse grid.

The notebook `bc-MC-consumption-savings_large_scale_1.ipynb` creates Figures 6 and 7.

<img src="https://github.com/JulienPascal/bc-MC_Operator/blob/Revision_1/9.large_scale_model_2/output/Euler_error_time_TI_%26_MC_separated_linear_3.png" width="200" height="200">


### Folder `10.OLG_model`
NOT in the paper. The notebook `OLG.ipynb` shows how the bc-MC operator can be
used to approximate global solutions of economic models with overlapping generations (OLG).


## References
* Pascal, Julien, Artificial Neural Networks to Solve Dynamic Programming Problems: A Bias-Corrected Monte Carlo Operator (June 12, 2023). BCL Working Papers n°172., Available at SSRN: [https://ssrn.com/abstract=4476122](https://ssrn.com/abstract=4476122) or [http://dx.doi.org/10.2139/ssrn.4476122](http://dx.doi.org/10.2139/ssrn.4476122)

---

### Computational details
#### Folders `6.Brock_Mirman_Colab` and `8.model_with_bc_2_Colab`
Calculations performed with Google Colab. See the results of "cpuinfo" in the notebooks for details on the machines.

#### Folders `7.model_with_bc_2`, `9.large_scale_model_2` and `10.OLG_model`
All calculations performed on the same laptop: Intel® Core™ i7-8850H CPU @ 2.60GHz × 12, Ubuntu 20.04.6 LTS. Python 3.8.10.
