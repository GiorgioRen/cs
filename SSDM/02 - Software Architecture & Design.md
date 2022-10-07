# Architecture vs Design

design leads from problems to solutions
design = collect possible solutions + evaluate them + select the best for the goals

depending on the design chosen you are restricting yourself from other possible solutions

> All architecture is design but not all design is architecture
> architecture represent the significant design decisions that shape a system, where significant is measured by cost of change

architecture is both process and the product of the planning designing and constructing building 

> Stakeholder are users of the product but not only, they can also be the people who pay. They are all the people interested in the system. (even devs)

# What is SW architecture?

- represent the significant, measured by cost of change
- is the set of design decisions which, if made incorrectly, may cause the project to be cancelled
- is the set of structures needed to reason about the system, which compromise sw elements, relations and properties

# Architectural design is hard
- design decisions are not correct or wrong per se
	- when making a decision you have to be aware of the project as a whole, which is very difficult
- architectural design involves tradeoffs
	- ex choose between fastness or robustness (do stuff fast or check everything)
	- no best solution, you have to keep track of rejected solutions not to waste work when we need to modify our best choice
- architectural design has no stopping rule
	- no criterion tells when architecture is finished

# Design of what?
- What is a system? It's complicated...

==ADD PHOTO OF SW ARCH UML DIAGRAM==

## Architecture View
- perspective of one or more stakeholders on how the architecture addresses specific concerns
## Architecture Viewpoint
- how the system is operated by staff
## Architecture Rationale
- set of architecture decisions

# Software Architecture Lifecycle
In an ideal world:
1. architectural drivers
2. architectural design
3. architectural documentation
4. architectural evaluation

> In real world the activities overlap and have feedback

# Architecture Design
Translates from problem domain to solution domain

in the problem domain we have:
- objectives why we are designing
- primary functional requirements
- quality attributes
- contraints
	- on system and on process
- concerns

> software architect design the final design of the architecture

sw architects are helped:
- design patterns
- deployment tactics
- ...

## Design Drivers
> The engineer's first problem in designing a solution is to discover what the problem really is

### Requirements
- primary functional requirements
	- i want to track users and show them rupies in their own currency
- quality attributes
	- the system should load in 5 seconds
- constraints
	- the system has to be implemented in Java
	- the system should be compliant to some standard

> if you are a stakeholder: just ask for what you need, not how to do it.
> if you are a dev: ask for what they need, not how to do that.

### Design Purpose
- models depend on the usage of the final product
- design goals:
	- **presale**: give a price (time/money) to my project
	- **throw away prototipe**: when customer doesn't know what they need
	- **development**: enough structure and details to start the process
- green field / brown field
	- green: requirements could be less stable
	- brown: legacy system could be difficult to master
- what is the nature of the product: design for future extensions, need high reuse

### Design Concerns
- general concerns
- specific concerns
	- specific system internal issues
- internal requirements
- issues


