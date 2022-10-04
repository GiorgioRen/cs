# Transactions
- an independent modification in a system that stores data
- can change multiple parts of a system
- we think of it as a single entity

# ACID Properties

## Atomicity
Each transaction is treated a single unit

## Consistency
Whatever happens, the system remains in a valid state (correctness)

## Isolation
Concurrent transactions should not interfere other transactions

## Durability
The system should be resilient to failure. If failure occurs, the result of the transaction should not be lost

# CAP Theorem
States that a system that allows transactions cannot have all of **consistency**, **availability** and **partition tolerance**

- Consistency: a read receive the most recent write OR an error
- Availability: every request receives a non-error response
- Partition Tolerance: system keeps working even if an arbitrary number of messages between nodes of the distributed system are dropped

> In any distributed system there are tradeoffs, either part of the system is offline until network partition resolves or the system is in an inconsistent state with stale data