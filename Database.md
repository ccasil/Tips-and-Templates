# Database

"In the world of database technology, there are two main types of databases: SQL and NoSQL—or, relational databases and non-relational databases. The difference speaks to how they’re built, the type of information they store, and how they store it. Relational databases are structured, like phone books that store phone numbers and addresses. Non-relational databases are document-oriented and distributed, like file folders that hold everything from a person’s address and phone number to their Facebook likes and online shopping preferences.

We call them SQL and NoSQL, referring to whether or not they’re written solely in structured query language (SQL)." - [UpWork](https://www.upwork.com/hiring/data/sql-vs-nosql-databases-whats-the-difference/)

## Table Relationships

| Relationship | Notes                                           |
| ------------ | ----------------------------------------------- |
| One-to-One   | A user has ONE address                          |
| One-to-Many  | A book has MANY reviews                         |
| Many-to-Many | A user has MANY books and a book has MANY users |

## Star Schemas

* A Star Schema is a common organization for data in a Warehouse.  A Star Schema consists of Dimension Tables and a Fact Table
    1. Dimension Tables:  Smaller, largely static (unchanging) information describing the data that’s in the Facts
    2. Fact Table:  A very large accumulation of Facts, such as Sales
        * A Fact gives the Sales of a specific product to a specific customer in a specific store on a specific date
        * The key  for a Fact Table consists of values from its Dimension Tables (foreign keys)
        * Facts may be 'insert-mostly', with some updates
* Dimension and Dependent Attributes
  * Two classes of Fact Table attributes:
    1. Dimension Attribute:  the key of a dimension table
    2. Dependent Attribute:  a fact value determined by the dimension attributes of the tuple
* Fact Table
  * The key of a Fact Table is the combination of the keys of its dimensions
    * Values of dimension attributes in any Fact must match dimension attribute values in the Dimension Tables
    * But there don’t have to be Facts for every combination of Dimension values
* Data Cubes
  * Keys of dimension tables are the dimensions of a hypercube

## Relational Database Theory

### Functional Dependency

* Let `R` be a relation schema. A functional dependency (FD) is an integrity constraint of the form:
  * `X → Y`  (read as 'X determines Y or X functionally determines Y')
  * Where X and Y are non-empty subsets of attributes of R
* A relation instance r of R satisfies the FD `X → Y` if for every pair of tuples t and t' in r, if t[X] = t'[X], then t[Y] = t'[Y]
* Relation R satisfies `X → Y`
  * Pick any two (not necessarily distinct) tuples t and t' of an instance r of R.  If t and t' agree on the X attributes, then they must also agree on the Y attributes
  * The above must hold for every possible instance r of R
* An FD is a statement about all possible legal instances of a schema. We cannot just look at an instance (or even at a set of instances) to determine which FDs hold

#### Armstrong's Axioms

Use Armstrong's Axioms to infer all the functional dependencies on a relational database

* Let X, Y, and Z denote sets of attributes over a relation schema R
  * Reflexivity: If Y ⊆ X, then X → Y
  * Augmentation: If X → Y, then XZ → YZ for any set Z of attributes
  * Transitivity: If X →Y and Y → Z, then X → Z
  * Union: If X → Y and X → Z, then X → YZ
  * Decomposition: If X → YZ, then X → Y and X → Z
  * Pseudo-Transitivity:  If X  → Y and WY → Z, then XW → Z
* If F ⊢ F, then F ⊨ F
  * Completeness: If a set F of FDs implies F, then F can be derived from F by applying Armstrong's axioms
  * Soundness: If F can be derived from a set of FDs F through Armstrong's axioms, then F implies F

#### Closure of a Set of FDs F

* Let F+ denote the set of all FDs implied by a given set F of FDs
  * To decide whether F implies F, first compute F+, then see whether F is a member of F+

### Examples

#### Compute F+ for the set { A → B, B → C} of FDs

* Trivial FDs
  * A → A, B → B, C → C, AB → A, AB → B, BC → B, BC → C, AC → A, AC → C, ABC → A, ABC → B, ABC → C, ABC → AB , ABC → AC , ABC → BC, ABC → ABC
* Augmentation and transitivity (non-trivial FDs)
  * AC → B, AB → C
* Transitivity
  * A → C

Question: Does A → C?  
Computer A+

Closure = { A }  
Closure = { A, B }  (due to A → B)  
Closure = { A, B, C }  (due to B → C)  
Closure = { A, B, C } –no change, stop  
Therefore A+ = {A, B, C }  
Since C ∈ A+
Answer: YES

## Definitions

* Primary Key: A column or a group of columns that can uniquely identify a single row in a table
* Functional Dependency: prime attribute → non-prime attribute
* Partial Dependency: part of primary key → non-prime attribute
* Transitive Dependency: non-prime attribute → non-prime attribute
* Composite/Super Key: Primary key made up of 2 attributes

## First Normal Form (1NF)

* Rule 1: Each column should contain atomic values
* Rule 2: A column should contain values that are of the same type
  * Do not inter-mix different types of values in any column
* Rule 3: Each column should have a unique name
  * Same names leads to confusion at the time of data retrieval
* Rule 4: Order in which data is saved doesn't matter

## Second Normal Form (2NF)

* Must be in 1NF
* Should not have any partial dependencies
  * Column only depends on one column and not another

## Boyce-Codd Normal Form (BCNF)

* Must be in 3NF
* For any dependency A → B, A should be a superkey
  * If A is non-prime and B is a prime attribute (NOT BCNF)

* Let R be a relation schema, F be a set of FDs that holds for R, with A as an attribute in R, and X as a subset of the attributes in R
* R is in Boyce-Codd Normal Form (BCNF) if:
  * For every FD X → A in F, at least one of following is true:
    * X → A is a trivial FD (i.e., A ∈ X)
    * X is a superkey
* BCNF is desirable for avoiding redundancy
* Any BCNF relation must also be a 3NF relation

## Third Normal Form (3NF)

* Must be in 2NF
* Should not have transitive dependency
  * When an attribute in a table that depends on some non-primary attribute

* Let R be a relation schema, F be a set of FDs that holds for R, with A as an attribute in R, and X as a subset of the attributes in R
* R is in third normal form (3NF) if:
  * For every FD X → A in F, at least one of following is true:
    * X → A is a trivial FD (i.e., A ∈ X)
    * X is a superkey
    * A is part of some key of R
* A 3NF relation is not always in BCNF

### Algorithm for Testing Whether a Relation is in BCNF using Attribute Closure

* Given R and F, determine whether R is in BCNF
  * For each FD X → Y ∈ F such that Y ⊈ X (i.e., the FD is non-trivial), compute X+
    * If every such X is a superkey (i.e., X+ = attr(R)), then R is in BCNF
    * If there is a set X of attributes such that X+ ≠ attr(R), then R is not in BCNF

### Decomposition of a Relation

* A decomposition of a relation R is defined by sets of attributes X<sub>1</sub>, ..., X<sub>k</sub>(which don’t have to be disjoint) such that:  
    1. Each X<sub>i</sub> ⊆ attr(R)
    2. X<sub>1</sub> ∪ X<sub>2</sub> ∪... ∪ X<sub>k</sub> = attr(R)
* For a decomposition, we will write π<sub>Xi</sub>(R) as Ri, with instances of R written as r and instances of R<sub>i</sub> written as r<sub>i</sub>

## Decomposition and Normalization

* Given a relation schema and functional dependencies, it is always possible to decompose schema into a set of BCNF relations that:
    1. Eliminates Anomalies
    2. Lossless Join decomposition
    3. However, the schema might not always be Dependency-Preserving

* Given a relation schema and functional dependencies, it is always possible to decompose schema into a set of 3NF relations that:  
    1. Lossless Join decomposition  
    2. Dependency-Preserving  
    3. However, the schema might not always Eliminate Anomalies
