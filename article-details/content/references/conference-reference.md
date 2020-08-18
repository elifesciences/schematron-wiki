---
description: This is a page about entries for conference articles in the reference list.
---

# Conference references

## What is a conference reference?

A conference reference gives bibliographic details for work presented at a conference, or published in the proceedings for a conference.





## What needs to be added?

The following information can be added for journal references:

| Kriya field | Mandatory? | XML element | Example |
| :--- | :--- | :--- | :--- |
| Author\(s\) | At least one author or collaboration is required; both can be present | &lt;person-group person-group-type="author"&gt;&lt;name&gt;&lt;surname&gt;Bloggs&lt;/surname&gt;&lt;given-names&gt;J&lt;/given-names&gt;&lt;/name&gt;&lt;/person-group&gt; | Bloggs J |
| Collaboration\(s\) | At least one author or collaboration is required; both can be present | &lt;person-group person-group-type="author"&gt;&lt;collab&gt;Tulsa 1000 Investigators&lt;/collab&gt;&lt;/person-group&gt; | Tulsa 1000 Investigators |
| Year | Yes | &lt;year iso-8601-date="2008"&gt;2008&lt;/year&gt; | 2008 |
| Article title | Yes | &lt;article-title&gt;"TIP47 is a key effector for Rab9 localization"&lt;/article-title&gt; | TIP47 is a key effector for Rab9 localization |
| Journal name | Yes | &lt;source&gt;The Journal of Cell Biology&lt;/source&gt; | The Journal of Cell Biology |
| Volume | No | &lt;volume&gt;173&lt;/volume&gt; | 173 |
| e-location ID | No \(if first/last pages are present, there can be no e-location ID\) | &lt;elocation-id&gt;e51381&lt;/elocation-id&gt; | e51381 |
| First page | No \(if an e-location ID is present, there can be no first/last pages\) | &lt;fpage&gt;917&lt;/fpage&gt; | 917 |
| Last page | No \(if an e-location ID is present, there can be no first/last pages\) | &lt;lpage&gt;926&lt;/lpage&gt; | 926 |
| DOI | Yes \(if there is one\) | &lt;pub-id pub-id-type="doi"&gt; | 10.1083/jcb.200510010 |

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



Schematron



conf-doi-test-1	element-citation\[\(@publication-type='confproc'\) and not\(pub-id\[@pub-id-type='doi'\]\) and year and conf-name\]	\*\*Warning\*\*: \_XXXXXX is a conference ref without a doi, but it's a conference which is know to possibly have dois - \(XXXXXX\). Should it have one?\_

