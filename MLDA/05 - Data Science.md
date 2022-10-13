# Missing data
Two possible solutions:
- Deletions: remove the entire sample
- Imputation: add data (there are different methods)

## Missing data imputation
Possible solutions:
- Mean imputation: not preferred
  $\tilde{Y}_i = \bar{Y}_r$
- Random imputation: ok but not perfect, you change statistical suff
  $\tilde{Y}_i = Y^*_r$
- Adjusted random imputation: nice, take average and adjust by random amount, keeping variance
  $\tilde{Y}_i = \bar{Y}_r + (Y^*_r - \bar{Y}^*_m)$

# Dataset reduction
Possible using:
- Random sampling: delete random samples
- Stratified sampling
- Homogeneous multi-partitioning

## Homogeneous multi-partitioning
1. Choose random sample (high probability it's in the mean)
2. Calculate next nearest sample and memorize
	- you get all samples sorted
3. Choose first sample then skip n samples and take the next, reducing the dataset

> This reduces mean and variance but reduces dataset samples

# Principal component analysis
Analyze samples choosing axis that better fit the data. Objective is to reduce variance on the axis.

# Features selection
- Filters, a priori (before everything)
	- correlation: if two variables are correlated in all dataset, you can discard one of them
	- mutual information
- Wrappers, during modeling
	- build model and evaluate it by adding or removing features
- Embedded
	- algorithm returns a sparse model, removing features automatically