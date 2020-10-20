# Data references

## What is a data reference?

A journal reference gives bibliographic details for articles published in academic journals.

For eLife articles, each part of the reference is formatted specifically:

## What needs to be added?

The following information can be added for data references:

| Kriya field | Mandatory? | XML element | Example |
| :--- | :--- | :--- | :--- |
| Author\(s\) | At least one author or collaboration is required; both can be present | &lt;person-group person-group-type="author"&gt;&lt;name&gt;&lt;surname&gt;Bloggs&lt;/surname&gt;&lt;given-names&gt;J&lt;/given-names&gt;&lt;/name&gt;&lt;/person-group&gt; | Bloggs J |
| Collaboration\(s\) | At least one author or collaboration is required; both can be present | &lt;person-group person-group-type="author"&gt;&lt;collab&gt;Tulsa 1000 Investigators&lt;/collab&gt;&lt;/person-group&gt; | Tulsa 1000 Investigators |
| Year | Yes | &lt;year iso-8601-date="2008"&gt;2008&lt;/year&gt; | 2008 |
|  |  |  |  |
| Journal name | Yes | &lt;source&gt;The Journal of Cell Biology&lt;/source&gt; | The Journal of Cell Biology |
| Volume | No | &lt;volume&gt;173&lt;/volume&gt; | 173 |
| e-location ID | No \(if first/last pages are present, there can be no e-location ID\) | &lt;elocation-id&gt;e51381&lt;/elocation-id&gt; | e51381 |
| First page | No \(if an e-location ID is present, there can be no first/last pages\) | &lt;fpage&gt;917&lt;/fpage&gt; | 917 |
| Last page | No \(if an e-location ID is present, there can be no first/last pages\) | &lt;lpage&gt;926&lt;/lpage&gt; | 926 |
| DOI | Yes \(if there is one\) | &lt;pub-id pub-id-type="doi"&gt; | 10.1083/jcb.200510010 |
| PMID | Yes \(if there is one\) | &lt;pub-id pub-id-type="pmid"&gt; | 16769818 |
| InPress | No | &lt;comment&gt;In press&lt;/comment&gt; | In press |

**Non-mandatory fields are required if they exist**. Validation of references via PubMed or Crossref API tools should pull them in if the author did not provide them. Schematron warnings may also pick up incomplete references, and these should be checked at the source of the reference.

* **Authors**: Enter each author name as a surname\(s\) followed by initials. 
* **Collaboration:** Articles can have group or individual authors or a combination of both. Group authors should be placed in the order in which they appear in the original source. An author list can be a mix of both individual and group authors e.g. Smith J, Jones T, National Institutes of Health, Bloggs J etc.
* **Year**: This should be the year the article was published. This field can include a letter suffix \(e.g. 2020a\) if needed to distinguish between citations \(see more [here](../reference-citations.md#what-is-a-reference-citation)\).
* **Article title**: The title of the article. Can contain italics, superscript and subscript as required.
* **Journal name**: The full \(not abbreviated\) name of the journal in which the article was published.
* **Volume:** The volume of the journal in which the article was published \(if applicable\). eLife does not include issue numbers in journal references, so this information does not need to be added.
* **e-location ID:** The e-location identifier for the article \(if applicable; most journal references will have either page numbers or an e-location ID\).
* **First page:** The page number on which the article starts \(if applicable; most journal references will have either page numbers or an e-location ID\). Some page numbers will be prefixed with letters.
* **Last page:** The page number on which the article ends \(if applicable; some articles are one-page long and so a last page is not required as it is the same as the first page\). Some page numbers will be prefixed with letters.
* **DOI:** The Digital Object Identifier for the article \(if applicable\).
* **PMID:** The PubMed Identifier for the article \(if applicable\). This will not be supplied by the author but is added during pre-editing via the PubMed API tool.
* **InPress**: If a paper has been accepted for publication but the final publication details are not yet known, this field should have the text 'In press'. 

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

Once you have entered the information in the fields, click on 'Search PubMed'. This will compare the information entered to the PubMed database and ensures that a PubMed ID and a DOI is added \(if there is one - not all journals use DOIs\). If this does not generate results, click on 'Search Crossref'. Most journal DOIs are registered with Crossref \(including non-life sciences articles\).

![](../../../.gitbook/assets/screenshot-2020-05-27-at-14.59.10.png)

Click the article with the correct authors, title and journal. This will automatically fill in the remaining fields if the information hasn't been added already.

The minimum fields that need to be populated for the PubMed and Crossref validators to find an article are:

* First author name
* Year
* Article title
* Journal title

Some journal references will not appear when searching the PubMed and Crossref databases. If you have entered the article details correctly and verified that it is the same in the original submitted version, you can just click on 'Insert Reference' to add the reference to the article.

Watch out for unexpanded journal names when trying to validate them. Sometimes, the authors may have provided the contracted version of the journal name, e.g. 'Mol Biol Evo' for 'Molecular Biology and Evolution' \(they will likely take this from a source like PubMed which shows the contracted version by default\). If this is not expanded to the full version of the name, the validator may not be able to pick up the reference correctly to assign DOI/PMID.

Look out for journal names that are incorrectly run on to the end of article titles \(e.g. 'Reversal of prolonged obesity-associated cerebrovascular dysfunction by inhibiting microglial Tak1. _Nature'\)_. This is often caught by the schematron rules but in some cases, it may not be.

### How to add an 'In press' field

![](../../../.gitbook/assets/screenshot-2020-06-09-at-13.24.22.png)

To add an 'In press' comment to a journal reference, add a new field \(which is not the 'In press' field\) and enter the text 'In press'.

![](../../../.gitbook/assets/screenshot-2020-06-09-at-13.24.39.png)

Then change the field to 'In press' and validate the reference before saving it.

![](../../../.gitbook/assets/screenshot-2020-06-09-at-13.25.06.png)

This is the only way to add an 'In press' comment, as at the moment, it is not possible to add text to the 'In press' field in Kriya.

![](../../../.gitbook/assets/screenshot-2020-06-09-at-13.25.30.png)

## Finding reference details

