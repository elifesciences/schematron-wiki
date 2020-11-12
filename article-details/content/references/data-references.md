---
description: This is a page about entries for datasets in the reference list.
---

# Data references

## What is a data reference?

A data reference gives bibliographic details for a dataset deposited with a structured repository, database or other data-sharing platform. These may be in addition to those in the [**data availability section**](../data-availability.md), or they may repeat those listed in that section.

## What needs to be added?

The following information can be added for data references:

| Kriya field | Mandatory? | XML element | Example |
| :--- | :--- | :--- | :--- |
| Author\(s\) | At least one author or collaboration is required; both can be present | &lt;person-group person-group-type="author"&gt;&lt;name&gt;&lt;surname&gt;Bloggs&lt;/surname&gt;&lt;given-names&gt;J&lt;/given-names&gt;&lt;/name&gt;&lt;/person-group&gt; | Bloggs J |
| Collaboration\(s\) | At least one author or collaboration is required; both can be present | &lt;person-group person-group-type="author"&gt;&lt;collab&gt;Tulsa 1000 Investigators&lt;/collab&gt;&lt;/person-group&gt; | Tulsa 1000 Investigators |
| Year | Yes | &lt;year iso-8601-date="2008"&gt;2008&lt;/year&gt; | 2008 |
| Dataset title | Yes |  |  |
| Database | Yes |  |  |
| Accession | Yes, or DOI should be present |  |  |
| DOI | Yes, or Accession should be present | &lt;pub-id pub-id-type="doi"&gt; |  |
| Assigning authority |  |  |  |

**Non-mandatory fields are required if they exist**. Validation of references via PubMed or Crossref API tools should pull them in if the author did not provide them. Schematron warnings may also pick up incomplete references, and these should be checked at the source of the reference.

* **Authors**: Enter each author name as a surname\(s\) followed by initials. 
* **Collaboration:** Articles can have group or individual authors or a combination of both. Group authors should be placed in the order in which they appear in the original source. An author list can be a mix of both individual and group authors e.g. Smith J, Jones T, National Institutes of Health, Bloggs J etc.
* **Year**: This should be the year the article was published. This field can include a letter suffix \(e.g. 2020a\) if needed to distinguish between citations \(see more [here](../reference-citations.md#what-is-a-reference-citation)\).
* **Dataset title**: The title of the dataset. Can contain italics, superscript and subscript as required.
* **Database**: The full \(not abbreviated\) name of the database in which the dataset is stored.
* **Accession**: 
* **DOI:** The Digital Object Identifier for the article \(if applicable\).

If any of the mandatory information is not provided, look up the article on [**PubMed**](https://pubmed.ncbi.nlm.nih.gov/) or the journal website. If the information still can't be found, please leave the following author query, replacing 'XXXXXX' with the missing information:

* Please provide the XXXXXX for this reference.

## How to add a data reference

Right-click where you want to add the citation and click on Add New &gt; Add New Reference and select Journal under Reference Type.

The default fields in Kriya will need to be altered to include the following information in the order below. To delete an unnecessary field click the red 'bin' button \(if this doesn't work, try re-validating after all fields have been filled out, or change the field type to the one you need\). To add a field click the green '+' button to the entry above where you need to add it.

* Author 
* Collaboration \(if applicable\)
* Year 
* Article title
* Journal name
* Volume \(if available\)
* e-location ID or first and last page \(if available\)
* DOI \(if available\)
* PMID \(if available\)
* InPress \(if applicable\)

Once you have entered the information in the fields, click on 'Search PubMed'.



## Finding reference details



## Schematron checks

### Structure checks

#### err-elem-cit-data-3-1

**Error**: _\[err-elem-cit-data-3-1\] Only one person-group of each type \(author, compiler, curator\) is allowed. Reference 'XXXXXX' has XXXXXX &lt;person-group&gt; elements of type of 'author', XXXXXX &lt;person-group&gt; elements of type of 'compiler', XXXXXX &lt;person-group&gt; elements of type of 'curator', and XXXXXX &lt;person-group&gt; elements of some other type._

**Action**: 

#### err-elem-cit-data-3-2

**Error**: _\[err-elem-cit-data-3-2\] Each &lt;element-citation&gt; of type 'data' must contain at least one &lt;person-group&gt; element. Reference 'XXXXXX' has XXXXXX &lt;person-group&gt; elements._

**Action**:

#### err-elem-cit-data-10

**Error**: _\[err-elem-cit-data-10\] Each &lt;element-citation&gt; of type 'data' must contain one and only one &lt;data-title&gt; element. Reference 'XXXXXX' has XXXXXX &lt;data-title&gt; elements._

**Action**:

#### err-elem-cit-data-11-2

**Error**: _\[err-elem-cit-data-11-2\] Each &lt;element-citation&gt; of type 'data' must contain one and only one &lt;source&gt; element. Reference 'XXXXXX' has XXXXXX &lt;source&gt; elements._

**Action**:

#### err-elem-cit-data-11-3-2

**Error**: _\[err-elem-cit-data-11-3-2\] A &lt;source&gt; element within a &lt;element-citation&gt; of type 'data' may only contain the child elements&lt;italic&gt;, &lt;sub&gt;, and &lt;sup&gt;. No other elements are allowed. Reference 'XXXXXX' has disallowed child elements._

**Action**:

#### err-elem-cit-data-13-1

**Error**: _\[err-elem-cit-data-13-1\] There must be at least one pub-id OR an &lt;ext-link&gt;. There may be more than one pub-id. Reference 'XXXXXX' has XXXXXX &lt;pub-id elements and XXXXXX &lt;ext-link&gt; elements._

**Action**: 

#### err-elem-cit-data-17-1

**Error**: _\[err-elem-cit-data-17-1\] The &lt;ext-link&gt; element is required if there is no &lt;pub-id&gt;. Reference 'XXXXXX' has XXXXXX &lt;pub-id&gt; elements and XXXXXX &lt;ext-link&gt; elements._

**Action**:

#### err-elem-cit-data-18

**Error**: _\[err-elem-cit-data-18\] The only tags that are allowed as children of &lt;element-citation&gt; with the publication-type="data" are: &lt;person-group&gt;, &lt;data-title&gt;, &lt;source&gt;, &lt;year&gt;, &lt;pub-id&gt;, &lt;version&gt;, and &lt;ext-link&gt;. Reference 'XXXXXX' has other elements._

**Action**: 

#### err-elem-cit-data-14-2

**Error**: _\[err-elem-cit-data-14-2\] If the pub-id is of pub-id-type doi, it may not have an @xlink:href. Reference 'XXXXXX' has a &lt;pub-id element with type doi and an @link-href with value 'XXXXXX'._

**Action**: This error indicates that the attribute `@xlink:href` is present on a DOI in a data reference. The proofing system support team will need to remove this attribute.

#### err-elem-cit-data-13-2

**Error**: _\[err-elem-cit-data-13-2\] Each pub-id element must have a pub-id-type which is either accession or doi. Reference 'XXXXXX' has a &lt;pub-id element with the type 'XXXXXX'._

**Action**: 

#### err-elem-cit-data-14-1

**Error**: _\[err-elem-cit-data-14-1\] If the pub-id is of any pub-id-type except doi, it must have an @xlink:href. Reference 'XXXXXX' has a &lt;pub-id element with type 'XXXXXX' but no @xlink-href._

**Action**: 



