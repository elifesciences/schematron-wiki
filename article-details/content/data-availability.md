---
description: How to check and copy-edit the data availability section
---

# Data availability

## What is the data availability section?

The data availability section 

## What needs to be checked?

## Examples

## Schematron warnings

### Content warnings

#### ext-link-child-test-5

**Warning**: _ext-link looks like it points to a review dryad dataset - XXXXXX. Should it be updated?_

**Action**:

#### sec-test-3

**Warning**: _Section has a title 'XXXXXX'. Is it a duplicate of the data availability section \(and therefore should be removed\)?_

**Action**:

#### pre-das-elem-person-group-1

**Warning**: _The reference in position XXXXXX of the data availability section does not have any authors \(no person-group\[@person-group-type='author'\]\). Please ensure to add them in or query the authors asking for the author list._

**Action**: 

#### final-das-elem-person-group-1

**Error**: _The reference in position XXXXXX of the data availability section does not have any authors \(no person-group\[@person-group-type='author'\]\). Please ensure to add them._

**Action**: 

#### das-elem-person-group-2

**Error**: _The reference in position XXXXXX of the data availability has XXXXXX person-group elements, which is incorrect_

**Action**: 

#### pre-das-elem-person-1

**Warning**: _The reference in position XXXXXX of the data availability section does not have any authors. Please ensure to add them in or query the authors asking for the author list._

**Action**: 

#### final-das-elem-person-1

**Error**: _The reference in position XXXXXX of the data availability section does not have any authors \(person-group\[@person-group-type='author'\]\). Please ensure to add them in._

**Action**: 

#### pre-das-elem-data-title-1

**Warning**: _The reference in position XXXXXX of the data availability section does not have a title \(no data-title\). Please ensure to add it in or query the authors asking for it._

**Action**: 

#### final-das-elem-data-title-1

**Error**: _The reference in position XXXXXX of the data availability section does not have a title \(no data-title\). Please ensure to add it_

**Action**: 

#### pre-das-elem-source-1

**Warning**: _The reference in position XXXXXX of the data availability section does not have a database name \(no source\). Please ensure to add it in or query the authors asking for it._

**Action**: 

#### final-das-elem-source-1

**Error**: _The reference in position XXXXXX of the data availability section does not have a database name \(no source\). Please ensure to add it in._

**Action**: 

#### pre-das-elem-pub-id-1

**Warning**: _The reference in position XXXXXX of the data availability section does not have an identifier \(no pub-id\). Please ensure to add it in or query the authors asking for it._

**Action**: 

#### final-das-elem-pub-id-1

**Error**: _The reference in position XXXXXX of the data availability section does not have an identifier \(no pub-id\). Please ensure to add it in._

**Action**: 

#### pre-das-elem-pub-id-2

**Warning**: _The reference in position XXXXXX of the data availability section does not have an id \(pub-id is empty\). Please ensure to add it in or query the authors asking for it._

**Action**: 

#### final-das-elem-pub-id-2

**Error**: _The reference in position XXXXXX of the data availability section does not have an id \(pub-id is empty\). Please ensure to add it in._

**Action**: 

pre-das-elem-year-1	sec\[@sec-type='data-availability'\]//element-citation\[@publication-type='data'\]	\*Warning\*: \_The reference in position XXXXXX of the data availability section does not have a year. Please ensure to add it in or query the authors asking for it.\_

final-das-elem-year-1	sec\[@sec-type='data-availability'\]//element-citation\[@publication-type='data'\]	\*Error\*: \_The reference in position XXXXXX of the data availability section does not have a year. Please ensure to add it in.\_

das-elem-cit-1	sec\[@sec-type='data-availability'\]//element-citation\[@publication-type='data'\]	\*Error\*: \_Every reference in the data availability section must have an @specific-use. The reference in position XXXXXX does not.\_

das-elem-cit-2	sec\[@sec-type='data-availability'\]//element-citation\[@publication-type='data'\]	\*Error\*: \_The reference in position XXXXXX of the data availability section has a @specific-use value of XXXXXX, which is not allowed. It must be 'isSupplementedBy' or 'references'.\_

das-elem-cit-3	sec\[@sec-type='data-availability'\]//element-citation\[@publication-type='data'\]	\*Error\*: \_The reference in position XXXXXX of the data availability section has a link \(XXXXXX\) which is the same as another dataset reference in that section. Dataset reference links should be distinct.\_

das-elem-cit-4	sec\[@sec-type='data-availability'\]//element-citation\[@publication-type='data'\]	\*Warning\*: \_The reference in position XXXXXX of the data availability section has a pub-id \(XXXXXX\) which is the same as another dataset reference in that section. This is very likely incorrect. Dataset reference pub-id should be distinct.\_

das-pub-id-1	sec\[@sec-type='data-availability'\]//element-citation\[@publication-type='data'\]/pub-id	\*Error\*: \_Each pub-id element must have an @pub-id-type with one of these types: accession, archive, or doi.\_

das-pub-id-2	sec\[@sec-type='data-availability'\]//element-citation\[@publication-type='data'\]/pub-id	\*Error\*: \_Each pub-id element which is not a doi must have an @xlink-href \(which is not empty\).\_

das-elem-citation-child-1	sec\[@sec-type='data-availability'\]//element-citation\[@publication-type='data'\]/source/\*\|sec\[@sec-type='data-availability'\]//element-citation\[@publication-type='data'\]/data-title/\*	\*Error\*: \_Reference in the data availability section has a XXXXXX element in a XXXXXX element which is not allowed.\_

das-elem-citation-year-1	sec\[@sec-type='data-availability'\]//element-citation\[@publication-type='data'\]/year	\*Error\*: \_Every year in a reference must have an @iso-8601-date attribute equal to the numbers in the year. Reference with id XXXXXX has a year 'XXXXXX' but an @iso-8601-date 'XXXXXX'.\_

pre-das-elem-citation-year-2	sec\[@sec-type='data-availability'\]//element-citation\[@publication-type='data'\]/year	\*Warning\*: \_Reference with id XXXXXX has an empty year. Please ensure to add it in or query the authors asking for it.\_

final-das-elem-citation-year-2	sec\[@sec-type='data-availability'\]//element-citation\[@publication-type='data'\]/year	\*Error\*: \_Reference with id XXXXXX has an empty year. Please ensure to add it in.\_



### XML structure warnings

back-test-3

Error: One and only one Data availiability section \(sec\[@sec-type="data-availability"\]\) must be present \(as a child of back\) for 'XXXXXX'.

back-test-10

Warning: One and only one Data availiability section \(sec\[@sec-type="data-availability"\]\) should be present \(as a child of back\) for 'XXXXXX'. Is this a new version which was published first without one? If not, then it certainly needs adding.

data-p-presence

Error: At least one p element must be present in sec\[@sec-type='data=availability'\].



## XML structure

