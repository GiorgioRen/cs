# Machine Learning & Deep Learning - intro
> Collect data about our world, find a model that fits and try to better understand reality

We have a system $S$ with some inputs and outputs.
We are trying to create a Learning Machine given historical examples of the system.
The objective is to generalize the system.

**Overfitting**:
data coming from a second degree function (+ some error) but fitted with a tenth degree function.  Functions fits very well the training set but does poorly on other new data.
**Underfitting**:
data coming from a third degree function, but given the errors we interpret it as a linear function.  Again, our function fits the training set but is unable to fit the real data coming in.

**Deep Learning**: tries to transform a non computable problem (NPC) into a non polynomial problem (NP)
DL is a non polynomial problem that approximate the theorem of general learnability (NPC)
**Machine Learning**: tries to transform a non polynomial problem into a polynomial problem (NP → P)

Given data we want to estimate a function (regression)
Fundamental theorem of algebra: $y = f(x) = \sum^{d}_{i=0} c_ix^i$ (polynome)

Important: distance between data and our predicted function

$$
|y-\hat{y}|^2
$$

> with square dist. the function is continuos and differencial everywhere

> Optimal error function does not exists; it depends based on current problem

**Empirical error**: avg error my function does on my data
$$
\hat{L}(x) = \frac{1}{n} \sum^{n}_{i=1}(y_i-f(x_i))^2
$$
$$
\hat{L}(c,d) = \frac{1}{n} \sum^{n}_{i=1}(y_i-\sum^{d}_{i=0} c_ix^i)^2
$$

>*statistic is a way to measure the uncertainty of the world ~ Luca Oneto*

