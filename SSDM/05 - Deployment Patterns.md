> 3d stuff is real hw
> 2d drawings are sus

#  Deployment Patterns
- subtype of architectural patterns concerning physical distribution of software

# Load balancer pattern
Layer pattern(?)
- layered **logical** structure
- architectural patterns
- modules are clustered in logical layers
- goal of decoupling -> scalability + maintenability

- Layered physical structure
- deployment pattern
- deploy different layers on different hw
- goal of physical separation -> security + performance

> can deploy two physical layers on the same server
> cannot use multiple logical layers (or else you're building another system)

# Tactics

> tactic: an action or strategy carefully planned to achieve a specific end goal

like checklists for a specific situation

- less structured than patterns
	- no tradeoffs
	- no context, problem, other design concepts
- patterns may capture some tactics but some tactics cannot be expressed by patterns

> if you have this problem, you can try this, this or this

## Availability
probability that a system is operational at a given time
## Interoperability
ability of different systems, devices, applications or products to connect and to communicate in a coordinated way, without effort from the end user.
## Modifiability
the ease with which a sw system can be modified to changes in the environment, requirements or functional specificationx
