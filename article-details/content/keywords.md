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

List of errors and warnings that can occur, with guidance on how to solve each problem or on when it is OK to let the warning go by and not change anything.

These checks relate to the content of \[insert name of page\]. X or XXXXXX refers to quoted text which will change depending on the article.

#### id-x - make sure this is tagged as a level 3 header

**Warning/Error/Info:** _content of message_

**Action:** What to do if this message fires

### XML structure checks

These checks relate to the XML structure of \[insert name of page\]. ‌X or XXXXXX refers to quoted text which will change depending on the article. For more information about what the XML should look like, see below \(include link to XML structure\).

#### id-x - make sure this is tagged as a level 3 header

**Warning/Error/Info:** _content of message_

**Action:** What to do if this message fires

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
