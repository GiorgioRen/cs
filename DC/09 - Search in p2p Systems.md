# Bloom filters
- data structure
- only two methods:
	- add(x): adds x to the set
	- test(x): test if x is in the set. There is possibility of **false positives**

> *n* items
> *m* avg bits per item
> *k* is number of hashing functions

with optimal *k*, the false positive rate is $P_{err} = e^{-\frac{m}{n}\ln 2}$

you need ~5 bits per item to have 10% error rate
~10 bits per item for 1% error rate
adding 5 bits per item reduces error rate by a factor of 10
15 bits per item = 0.1% err rate
*this is good :)*

> See python notebook for example of optimal k
> [bdupras.github.io/filter-tutorial](http://bdupras.github.io/filter-tutorial/)

# Distributed Hash Tables (DHT)

- structured p2p overlay
- we choose who connects to whom
- use that freedom to obtain efficient routing
- every peer handles a portion of the hash table
- **consistent hashing**: adding or removing peers has small impact on resource allocation
- item x stored on node corresponding to address *h(x)*

## Chord ring
- an implementation of DHT
- nodes take random ids and get in the ring with a link to predecessor and followers
- item x gets inserted at the first peer with hash grater than h(x)
	- plus more for redundancy
Con: very slow lookup... you have to iterate half of the ring in avg.
Solution: add multiple connections every 2^n followers in front of you

