**Privacy ≠ Security**
Security: ability of a system to protect itself against attackers
Privacy: the protection of the users' sensitive information or **personal identification information** (PII)

# Data Privacy - Stakeholders

- **Companies*: banks, e-commerce, retail, healthcare, social networks, ... are the **custodians** of **very sensitive customer data**.  Any loss of these sensitive data will result in legal suits, financial penalties and loss of reputation against the company.
- **Customers / record owners**: customers or another organization **sharing personal information identifiers with the company**.  Disclosure of PII could lead to **undesired identification** of the customer or record owner.
- **Government**: defines what data protection regulations the company should comply with.
- **Data anonymizer**: person who **anonymizes and provides data for analysis** or as test data.
- **Data analyst**: person who **uses the anonymized data** to carry  out data mining activities like prediction, knowledge discovery, ... Only **anonymized data can be used for data mining**.
- **Tester**: high quality testing requires high quality testing data.  To test sw system, data need to be **extracted** from production systems, **anonymized** and **provisioned for testing**.  Test data, containing customer sensitive data needs to **adhere to regulatory compliance laws**.
- **Business operations employee**: data analysts and software testers use anonymized data that is at rest or static.  Business operations are generally outsourced to BPO (business process outsourcing) companies.  **Data needs to be protected from business operations employees**. 
- **Adversary / data snoopers**: can be internal or external to the organization.  Anonymization design should **prevent an adversary to identify a record owner** in the database.

# Protecting Sensitive Data

- **Explicit identifiers (EI)**: name, surname, CF, ... allow to **directly identify the record owner**.
- **Quasi identifiers (QI)**: CAP, age, ... allow to **indirectly identify** the user if combined with external knowledge.
- **Sensitive data (SD)**: income, blood type, health, financial status, ... contain **confidential information about the record owner**.
- **Non sensitive data (NSD)**: data not sensitive for the given context.

![](src/Screenshot%202022-11-06%20alle%2012.51.18.png)
![](src/Screenshot%202022-11-06%20alle%2012.50.56.png)

results in:

![](src/Screenshot%202022-11-06%20alle%2012.52.19.png)

## Anonymity and Privacy

- **Anonymization**: the process of logically separating identifying information form sensitive data
- **Privacy**: we have a **personal identity** but not the associated personal fact
- **Anonymity**: we have a **personal fact** but not the associated person's identity

> Anonymization is a two step process:
> 1. **data masking** (**EI** - explicit identifiers)
> 2. **de-identification** (**QI** - quasi identifiers)
> using a transformation function `D' = T([D_ei][D_qi][D_sd]) = T_DM([D_ei])T_DI([D_qi])[D_sd]`
> `T` transformation funciton
> `T_DM` data masking algorithm
> `T_DI` de-identification algorithm

## Anonymization use cases

- Data mining and analysis (data at rest)
- Sw application testing (data at rest)
- Business process operation (data in motion)

## Methods of protecting data

 - **Cryptography**: safe technique to *protect data in motion or at rest*. Encrypted data are *useless for extracting information*.
 - **Anonymization**: *modification of original data* such that it doesn't resemble the original values but ***maintains semantics and syntax***. It's an **optimization problem**.
 - **Tokenization**: replace sensitive data with nonsensitive **placeholders** (tokens) The *original data is completely replaced* and has no correlation with original values.

# Privacy vs Utility

 - Privacy preservation should also ensure utility of data.
 - Correlation between QI and SD fields should not be lost.

> Privacy vs utility is based on context-driven constrained optimization

## Privacy gain

how much information an adversary can gain about SD about an individual from different dimensions in the dataset (*does not take into account adversary knowledge*)

## Utility loss

(utility of output of anonymization technique) - (utility provided by original dataset)

# Types of data

- Multi dimensional data
- Transaction data
- Graph data
- Longitudinal data
- Time series data

## Multi dimensional data

- Are relational data – tabular form
- Attributes divided in 4 sets:
	- EI, QI, SD, NSD
- Each row (aka record) is independent from the others
- Anonymization of some tuple (row) doesn't affect others
- two privacy preservation technique categories:
	- **random perturbation**
	- **group anonymization techniques** – much better ;)

+ Challenges:
	- difficult identifying boundary between QI and SD
	- high dimensionality of data poses big challenge to privacy preservation
	- clusters in sensitive data set
	- difficult achieving balance between privacy and utility

## Transaction data

- hold transactions of customers
- sparse high-dimensional data
- sensitivity depends on the kind of product

## Graph data

## Longitudinal data

## Time series data



==######################################################==



referential integrity

tokenization:

- loss of semantic
- one way & two way

non perturbative: anonymize mantiene la semantica

$k = f(P_R, U_R, C_R, G_L, C)$
- $P_R$: privacy requirement of data owner (seller of data)
- $U_R$: utility requirement of users of anonymized data (buyer of data)
- $C_R$: compliance requirement of privacy of data (government)
- $G_L$: generalization level
- $C$: constraints



