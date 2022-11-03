# Bloom filters
- data structure
- only two methods:
	- add(x): adds x to the set
	- test(x): test if x is in the set. There is possibility of **false positives**

with optimal *k*, the false positive rate is $P_{err} = e^{-\frac{m}{n}\ln 2}$

you need ~5 bits per item to have 10% error rate
~10 bits per item for 1% error rate
adding 5 bits per item reduces error rate by a factor of 10
15 bits per item = 0.1% err rate
*this is good :)*

> See python notebook for example of optimal k

# Distributed Hash Maps
