---
description: This is a page about entries for conference articles in the reference list.
---

# Conference references

## What is a conference reference?

A conference reference gives bibliographic details for work presented at a conference, or published in the proceedings for a conference. This usually means a paper, but this reference type should be used for posters as well. For simplicity, this page uses 'article' to mean both kinds of presentation.

![Example of a conference reference](../../../.gitbook/assets/screen-shot-2020-10-20-at-12.30.56.png)

![Formatting display for a conference reference in eLife articles](../../../.gitbook/assets/screen-shot-2020-10-20-at-12.31.07.png)

## What needs to be added?

The following information can be added for journal references:

| Kriya field | Mandatory? | XML element | Example |
| :--- | :--- | :--- | :--- |
| Author\(s\) | At least one author or collaboration is required; both can be present | &lt;person-group person-group-type="author"&gt;&lt;name&gt;&lt;surname&gt;Bloggs&lt;/surname&gt;&lt;given-names&gt;J&lt;/given-names&gt;&lt;/name&gt;&lt;/person-group&gt; | Bloggs J |
| Collaboration\(s\) | At least one author or collaboration is required; both can be present | &lt;person-group person-group-type="author"&gt;&lt;collab&gt;Tulsa 1000 Investigators&lt;/collab&gt;&lt;/person-group&gt; | Tulsa 1000 Investigators |
| Year | Yes | &lt;year iso-8601-date="2018"&gt;2018&lt;/year&gt; | 2018 |
| Article title | Yes | &lt;article-title&gt;Boundary learning by optimization with topological constraints&lt;/article-title&gt; | Boundary learning by optimization with topological constraints |
| Conference title | No | &lt;source&gt;Independent component analysis and signal separation&lt;/source&gt; | Independent component analysis and signal separation |
| Conference name | Yes | &lt;conf-name&gt;2018 IEEE 15th International Symposium on Biomedical Imaging \(ISBI\)&lt;/conf-name&gt; | 2018 IEEE 15th International Symposium on Biomedical Imaging \(ISBI\) |
| Conference location | No | &lt;conf-loc&gt;Province, RI&lt;/conf-loc&gt; | Province, RI |
| e-location ID | No \(if first/last pages are present, there can be no e-location ID\) | &lt;elocation-id&gt;e51381&lt;/elocation-id&gt; | e51381 |
| First page | No \(if an e-location ID is present, there can be no first/last pages\) | &lt;fpage&gt;132&lt;/fpage&gt; | 132 |
| Last page | No \(if an e-location ID is present, there can be no first/last pages\) | &lt;lpage&gt;135&lt;/lpage&gt; | 135 |
| DOI | Yes \(if there is one\) | &lt;pub-id pub-id-type="doi"&gt; | 10.1083/jcb.200510010 |

**Non-mandatory fields are required if they exist**. Check the source of the reference if possible \(e.g. if the conference article is available online\). Schematron warnings may also pick up incomplete references, and these should be checked at the source of the reference.

* **Authors**: Enter each author name as a surname\(s\) followed by initials. 
* **Collaboration:** Articles can have group or individual authors or a combination of both. Group authors should be placed in the order in which they appear in the original source. An author list can be a mix of both individual and group authors e.g. Smith J, Jones T, National Institutes of Health, Bloggs J etc.
* **Year**: This should be the year the conference article was presented/published. This field can include a letter suffix \(e.g. 2020a\) if needed to distinguish between citations \(see more [**here**](../reference-citations.md#what-is-a-reference-citation)\).
* **Article title**: The title of the conference article. Can contain italics, superscript and subscript as required.
* **Conference title**: The full \(not abbreviated\) name of the conference proceedings, if this differs from the conference name.
* **Conference name**: The full  \(not abbreviated\) name of the conference at which the article was presented.
* **Conference location**: Where the conference took place. Usually some combination of city, state and country.
* **e-location ID:** The e-location identifier for the article \(if applicable; most references will have either page numbers or an e-location ID\).
* **First page:** The page number on which the article starts \(if applicable\). Some page numbers will be prefixed with letters.
* **Last page:** The page number on which the article ends \(if applicable; some articles are one-page long and so a last page is not required as it is the same as the first page\). Some page numbers will be prefixed with letters.
* **DOI:** The Digital Object Identifier for the article \(if applicable\).

If any of the mandatory information is not provided, look up the article online. Conference articles are not consistently indexed at PubMed or CrossRef, so usually this will entail searching for the [**title and conference name**](conference-reference.md#finding-reference-details). If the information still can't be found, please leave the following author query, replacing 'XXXXXX' with the missing information:

* Please provide the XXXXXX for this reference.



## How to add a conference reference

Right-click where you want to add the citation and click on Add New &gt; Add New Reference and select Conference under Reference Type.

The default fields in Kriya will need to be altered to include the following information in the order below. To delete an unnecessary field click the red 'bin' button \(if this doesn't work, try re-validating after all fields have been filled out, or change the field type to the one you need\). To add a field click the green '+' button to the entry above where you need to add it.

* Author 
* Collaboration \(if applicable\)
* Year 
* Article title
* Conference title \(if applicable\)
* Conference name
* Conference location \(if applicable\)
* e-location ID or first and last page \(if available\)
* DOI \(if available\)

![](../../../.gitbook/assets/screen-shot-2020-10-20-at-12.41.05.png)

Once you have entered the information in the fields, click on 'Search PubMed'. This will compare the information entered to the PubMed database and ensures that a PubMed ID \(if available; only some conference proceedings are indexed at this site\). If this does not generate results, click on 'Search Crossref', which may return results if the conference DOIs were registered at CrossRef.

Regardless of whether any corresponding PubMed or CrossRef records are returned, press 'Insert Reference' to add the entry to the reference list.

## Finding reference details

Details for conference references can usually be found online, however there is no central indexing service for conferences as there is for journals. Searching the article title together with the conference name should provide a landing page if one is available.

In cases where the conference being cited is associated with the [**IEEE**](https://www.ieee.org/), there will likely be both an online page for the article and a corresponding DOI. These should be easy to locate; an example record is given below.

![Example of an IEEE record for a paper presented at a conference](../../../.gitbook/assets/screen-shot-2020-10-13-at-17.41.14.png)

## Schematron checks 

### Content checks

#### conf-doi-test-1

**Warning**: _XXXXXX is a conference ref without a doi, but it's a conference which is know to possibly have dois - \(XXXXXX\). Should it have one?_

**Action**: This warning indicates a reference to a conference article associated with an organisation that is known to register DOIs. Search the article title and conference name online to identify a corresponding DOI \(if one exists\).

#### err-elem-cit-confproc-10-1

**Error**: _&lt;conf-name&gt; is required. Reference 'XXXXXX' has XXXXXX &lt;conf-name&gt; elements._

**Action**: Every conference reference must contain a conference name. This error indicates that no conference name is present. Compare the reference to the original manuscript file to check for processing errors such as the conference name being tagged as a conference title or as part of the article title. If one has not been provided, please query the author with the following:

* Please provide the conference name for this reference.

#### err-elem-cit-confproc-12-3

**Error**: _If both &lt;lpage&gt; and &lt;fpage&gt; are present, the value of &lt;fpage&gt; must be less than the value of &lt;lpage&gt;. Reference 'XXXXXX' has &lt;lpage&gt; XXXXXX, which is less than or equal to &lt;fpage&gt; XXXXXX._

**Action**: This error will appear if a journal reference has a first page value larger than the last page value \(this can happen if the authors truncate the last page, e.g. 123–34\). If possible, look the article up online to find the correct page range. If this is not possible, add the following author query:

* Please provide the correct page range for this reference.

#### err-elem-cit-confproc-12-2	

**Error**: _The citation may contain no more than one of any of &lt;fpage&gt;, &lt;lpage&gt;, and &lt;elocation-id&gt; elements. Reference 'XXXXXX' has XXXXXX &lt;fpage&gt; elements, XXXXXX &lt;lpage&gt; elements, and XXXXXX &lt;elocation-id&gt; elements._

**Action:** This error will appear if a conference reference has more than one of any of the elements in the message \(e.g. multiple first pages\). Ensure that the beginning and end of a page range have been tagged as first page and last page respectively, and remove the extra instances of any duplicate elements. 

#### err-elem-cit-confproc-12-1

**Error**: _The citation may contain &lt;fpage&gt; and &lt;lpage&gt;, only &lt;fpage&gt;, or only &lt;elocation-id&gt; elements, but not a mixture. Reference 'XXXXXX' has XXXXXX &lt;fpage&gt; elements, XXXXXX &lt;lpage&gt; elements, and XXXXXX &lt;elocation-id&gt; elements._

**Action**: This error will fire if a conference reference has both an elocation ID and page range. References should only have one or the other. Check the original article file to make sure this is not a processing error \(such as the first page being captured as an elocation ID\) and if this does not resolve the issue, try to find the conference article online.

If an eLocation ID is provided, this should usually be favoured over the page range.

#### err-elem-cit-confproc-12-4

**Error**: _The content of the &lt;fpage&gt; and &lt;lpage&gt; elements can contain any alpha numeric value but no child elements are allowed. Reference 'XXXXXX' has XXXXXX child elements in &lt;fpage&gt; and XXXXXX child elements in &lt;lpage&gt;._

**Action**: This error indicates that child elements are present within the first page and/or last page elements. Only plain text letters and numbers are permitted in these elements, so any formatting \(bold, italics etc\) or hyperlinks should be removed.

### Structure checks

#### err-elem-cit-confproc-2-1

**Error**: _One and only one person-group element is allowed. Reference 'XXXXXX' has XXXXXX &lt;person-group&gt; elements._

**Action**: This error indicates that a conference reference has zero or more than one `<person-group>` elements. Look the conference article up online if possible to identify the correct author list. If there are no authors and the artile cannot be found, please raise an author query on the proof for the missing information.

* Please provide the author list for this reference.

#### err-elem-cit-confproc-2-2

**Error**: _Each &lt;person-group&gt; must have a @person-group-type attribute of type 'author'. Reference 'XXXXXX' has a &lt;person-group&gt; element with @person-group-type attribute 'XXXXXX'._

**Action**: Correct the &lt;person-group&gt; element so that it has the attribute `person-group-type="author"`. This will either need to be done by removing all current authors and re-adding them, or by contacting the support team for the proofing system.

#### err-elem-cit-confproc-8-1

**Error**: _Each &lt;element-citation&gt; of type 'confproc' must contain one and only one &lt;article-title&gt; element. Reference 'XXXXXX' has XXXXXX &lt;article-title&gt; elements._

**Action:** This error indicates that a conference reference either has no article title or more than one article title. If the article title is missing and cannot be located online using the other details provided \(conference name, page range, DOI\), please add the following add the following author query:

* Please provide the title for this reference.

If the reference has more than one article title, it may indicate an error in the processing of the article. Compare the reference to the original article file and correct accordingly.

#### err-elem-cit-confproc-8-2

**Error**: _An &lt;article-title&gt; element in a reference may contain characters and &lt;italic&gt;, &lt;sub&gt;, and &lt;sup&gt;. No other elements are allowed. Reference 'XXXXXX' does not meet this requirement._

**Action:** This error will appear if there are formatting elements in the article title other than italics, superscripts and subscripts \(e.g. bold, underline\). Make sure any disallowed formatting is removed.

#### err-elem-cit-confproc-9-1

**Error**: _Each &lt;element-citation&gt; of type 'confproc' must not contain more than one &lt;source&gt; element\(s\). Reference 'XXXXXX' has XXXXXX &lt;source&gt; elements._

**Action**: This error indicates that more than one `<source>` element \(conference title\) is present in a conference reference. The extra &lt;source&gt; elements should be removed — however please check whether the contents should be moved to the conference title or the conference name fields first. If possible locate the article online to check the correct details.

#### err-elem-cit-confproc-9-2-2

**Error**: _A &lt;source&gt; element within a &lt;element-citation&gt; of type 'confproc' may only contain the child elements&lt;italic&gt;, &lt;sub&gt;, and &lt;sup&gt;. No other elements are allowed. Reference 'XXXXXX' has child elements that are not allowed._

**Action**: This error will appear if there are formatting elements in the `<source>` element \(conference title\) other than italics, superscripts and subscripts \(e.g. bold, underline\). Make sure any disallowed formatting is removed.

#### err-elem-cit-confproc-10-2

**Error**: _No elements are allowed inside &lt;conf-name&gt;. Reference 'XXXXXX' has child elements within the &lt;conf-name&gt; element._

**Action:** This error will appear if there are elements in the conference name \(e.g. formatting such as bold or italics, or hyperlinks\). Delete the current contents of this field and paste in an unformatted version of the conference name.

#### err-elem-cit-confproc-11-2

**Error**: _No elements are allowed inside &lt;conf-loc&gt;. Reference 'XXXXXX' has child elements within the &lt;conf-loc&gt; element._

**Action:** This error will appear if there are elements in the conference location \(e.g. formatting such as bold or italics, or hyperlinks\). Delete the current contents of this field and paste in an unformatted version of the conference location.

#### err-elem-cit-confproc-16-1

**Error**: _A maximum of one &lt;pub-id&gt; element is allowed. Reference 'XXXXXX' has XXXXXX &lt;pub-id&gt; elements._

**Action**: Only one pub-id element \(the DOI\) is allowed in a conference reference. Any additional pub-ids should be removed.

#### err-elem-cit-confproc-17

**Error**: _The only tags that are allowed as children of &lt;element-citation&gt; with the publication-type="confproc" are: &lt;person-group&gt;, &lt;year&gt;, &lt;article-title&gt;, &lt;source&gt;, &lt;conf-loc&gt;, &lt;conf-name&gt;, &lt;fpage&gt;, &lt;lpage&gt;, &lt;elocation-id&gt;, &lt;ext-link&gt;, and &lt;pub-id&gt;. Reference 'XXXXXX' has other elements._

**Action:** This error indicates that elements are present in a conference reference that are not allowed.

## XML structure

```markup
<ref id="bib17">
    <element-citation publication-type="confproc">
        <person-group person-group-type="author">
            <name><surname>Funke</surname><given-names>J</given-names></name>
            <name><surname>Andres</surname><given-names>B</given-names></name>
            <name><surname>Hamprecht</surname><given-names>F</given-names></name>
            <name><surname>Cardona</surname><given-names>A</given-names></name>
            <name><surname>Cook</surname><given-names>M</given-names></name>
        </person-group>
        <year iso-8601-date="2012">2012</year>
        <article-title>Efficient automatic 3D reconstruction of branching neurons
        from EM data</article-title>
        <conf-name>Computer Vision and Pattern Recognition</conf-name>
        <conf-date>16-21 June 2012</conf-date>
        <conf-loc>Province, RI</conf-loc>
        <fpage>1004</fpage>
        <lpage>1011</lpage>
    </element-citation>
</ref>
```

