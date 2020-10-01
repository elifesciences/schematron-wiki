---
description: A tool to aid in the discovery and representation of an article
---

# Keywords

## What are keywords?

Keywords are scientific terms that allow articles to be searchable on the journal's website and through online search engines, such as PMC and Google Scholar. These also provide an accurate representation of what the study was about. Despite being such a small part of the submission, keywords can have a big impact on the number of people who can find the article once published and as a result, the higher amount of citations.

## Examples of keywords

The words chosen should ideally be specific to the topic of the article, contain a mixture of words and phrases, and it is beneficial to include additional words that are not included in the title.  

Here is an example of keywords for the following article:

**Article title:** On the importance of statistics in molecular simulations for thermodynamics, kinetics and simulation box size

**Subject area:** Structural Biology And Molecular Biophysics

**Keywords:** Molecular Dynamics, Simulation, Statistics, Thermodynamics, Kinetics

Keywords are not visible in the PDF but are included within the XML. These are present at the bottom of the article's webpage, alongside the research category. 

![Keywords on the eLife website](../../.gitbook/assets/screen-shot-2020-09-10-at-15.37.09.png)

## What needs to be checked?

Keywords are decided by the authors and entered into eJP during the submission process. 

Please check these are: 

* In sentence case only, with the exception of proper nouns
* In italics if appropriate \(e.g. _E. coli_\)
* A maximum of 6 words 

## Schematron checks

### Content checks

**test-auth-kwd-group-presence-2**

**Error**: _XXXXXX articles must not have any author keywords_

**Action**: This will fire if a Correction or Retraction notice contains author keywords. They should be deleted in Kriya.

**test-ro-kwd-group-presence-2**

**Warning**: _XXXXXX does not contain a Research Organism keyword group. Is this correct?_

**Action**: This will fire if any one of the following article types does not contain a research organism keyword - Research Article, Research Advance, Replication Study, Research Communication. It would be quite unusual for one of these article not to have used a research organism. Check in eJP if one has been selected. If not, then please add the following author query:

* Please confirm whether any research organisms were used for this work.

**kwd-group-title**

**Error**: _kwd-group title is XXXXXX, which is wrong. It should be 'Research organism'._

**Action**: 

**kwd-upper-case**

**Error**: _research-organism kwd elements should start with an upper-case letter._

**Action**:

**kwd-child-test**

**Error**: _research-organism keywords cannot have child elements such as XXXXXX._

**Action**:

**auth-kwd-check**

**Warning**: _Keyword - 'XXXXXX' - does not appear in the article text with this capitalisation. Should it be XXXXXX instead?_

**Action**:

**auth-kwd-check-2**

**Warning**: _Keyword contains what looks like a broken unicode - XXXXXX._

**Action**:

### XML structure checks

**test-auth-kwd-group-presence-1**

**Error**: _One author keyword group must be present in article-meta._

**Action**:

**test-ro-kwd-group-presence-1**

**Error**: _More than 1 Research organism keyword group is present in article-meta. This is incorrect._

**Action**:

**kwd-group-type**

**Error**: _kwd-group must have a @kwd-group-type 'research-organism', or 'author-keywords'._

**Action**:

**non-ro-kwd-presence-test**

**Warning**: _kwd-group must contain at least one kwd_

**Action**:

**ro-kwd-presence-test**

**Warning**: _kwd-group must contain at least one kwd_

**Action**:

## XML structure

```
<kwd-group kwd-group-type="author-keywords"><kwd>decision-making</kwd><kwd>network model</kwd><kwd>NMDA receptor</kwd><kwd>schizophrenia</kwd><kwd>ketamine</kwd></kwd-group>
```

## Changes

### dd/mm/yyyy

#### Changes

* 
### dd/mm/yyyy

#### Changes

* 
