---
description: This is a page about entries for software in the reference list.
---

# Software references

## Description

Within the reference list, software references provide information about any software used in an article.

## How to add a software reference

The following is an example of how to add a GitHub reference \(for example, after forking code\). In Kriya, click on 'Add reference' and select 'Software.' 

![The default fields in Kriya for a Software reference](../../../.gitbook/assets/screenshot-2020-04-21-at-16.08.25.png)

The default fields in Kriya will need to be altered to include the following information:

* Author - for GitHub references, you can just enter the first author's name
* Year - the year the repository was made 
* Software title - for GitHub references, this is the name of the repository 
* Software name - GitHub
* Software version - for GitHub references, this is the latest commit number
* Website - This should be a link to the original \(not the forked\) repository

![Details required for a GitHub repository reference](../../../.gitbook/assets/screenshot-2020-04-21-at-16.11.15.png)

## Structure

| Component | Contains | XML | Required? |
| :--- | :--- | :--- | :---: |
| Author list | The list of creators of the software. Can include individuals and group authors. | `<person-group person-group-type="author"> <name> <surname>Bloggs</surname> <given-names>J</given-names> </name> <collab>Some group</collab> </person-group>` | Yes |
| Year \(forked version\) | The year the cited version of the software was released.  | `<year iso-8601-date="2006">2006</year>` | Yes |
| Software title \(original\) | The title of the software. Can contain italics, superscript and subscript as required. | `<article-title>TIP47 is a key effector for Rab9 localization</article-title>` | Yes |
| Software name \(host\) | Not sure how this is different to title | `<source>The Journal of Cell Biology</source>` | Yes |
| Software version | The version of the software that was used. | `<volume>173</volume>` | No |
| URL | The location of the software online. | `<elocation-id>e51381</elocation-id>` | No |

## Troubleshooting

### General advice

* Elements for a journal reference should be added in the order in which they will be displayed: Authors, Year, Article title, Journal name, Volume, eLocation ID OR First page, Last page, DOI.
* Group authors should be placed in the order in which they appear in the original source. An author list can be a mix of both individual and group authors e.g. Smith J, Jones T, National Institutes of Health, Bloggs J, . . .
* Watch out for unexpanded journal names when trying to validate them. Sometimes, the authors may have provided the contracted version of the journal name, e.g. 'Mol Biol Evo' for 'Molecular Biology and Evolution' \(they will likely take this from a source like PubMed which shows the contracted version by default\). If this is no expanded to the full version of the name, the validator may not be able to pick up the reference correctly to assign DOI/PMID.
* Watch out for journal names being run on to the end of article titles. This is often caught by the schematron rules but in some cases, it may not be.

### Schematron

The following rules apply to Journal references:

#### \[err-elem-cit-journal-2-1\]

**Rule:** Each `<element-citation>` of type 'journal' must contain one and only one `<person-group>` element. Reference 'bib\_' has `<person-group>` elements.

**Action:** If there is no author list present, one will need to be added to the reference. Look the article up online if possible; otherwise raise an author query on the proof for the missing information. In cases where no author is given, 'Anon' will most likely need to be added as a `<collab>`. Alternatively, if the article is considered an editorial piece, use the name of the journal as the `<collab>`.

#### \[err-elem-cit-journal-2-2\]

**Rule:** Each `<element-citation>` of type 'journal' must contain one  with the attribute person-group-type 'author'. Reference 'bib_' has a `<person-group>` type of '\_\__'.

**Action:** Remove the extra non-author `<person-group>`. Editors are never listed for journal references.

#### \[err-elem-cit-journal-3-1\]

**Rule:** Each `<element-citation>` of type 'journal' must contain one and only one `<article-title>` element. Reference 'bib_' has_   elements.

**Action:** Identify and add in the article title. If the authors have not provided this information but have given other bibliographic details \(e.g. journal, volume, page range or elocation ID\) it may be possible to search for the article online. This is especially easy if they have given the DOI! If there are not enough details to find the article, raise an author query to ask for the missing title.

#### \[err-elem-cit-journal-4-1\]

**Rule:** Each `<element-citation>` of type 'journal' must contain one and only one  element. Reference 'bib_' has_  `<source>` elements.

**Action:** Identify and add in the journal name. Check that the journal name has not been accidentally captured as part of the article title. If the authors have not provided this information but have given other bibliographic details \(e.g. article title, volume, page range or elocation ID\) it may be possible to search for the article online. This is especially easy if they have given the DOI! If there are not enough details to find the article, raise an author query to ask for the missing journal name.

#### \[err-elem-cit-journal-4-2-2\]

**Rule:** A `<source>` element within a  of type 'journal' may not contain child elements. Reference 'bib\_' has disallowed child elements.

**Action:** Check that formatting elements have not been introduced into the journal name \(e.g. bold formatting\). Delete the current contents of this field and past in an unformatted version of the journal name.

#### \[err-elem-cit-journal-5-1-3\]

**Rule:** There may be no more than one  element within a `<element-citation>` of type 'journal'. Reference 'bib_' has_  `<volume>` elements.

**Action:** Remove the extra volume number\(s\). Make sure that a page number/eloction ID has not been tagged as a volume by mistake.

#### \[err-elem-cit-journal-12\]

**Rule:** The only elements allowed as children of `<element-citation>` with the publication-type="journal" are: `<person-group>`, `<year>`, `<article-title>`, `<source>`, `<volume>`, `<fpage>`, `<lpage>`, `<elocation-id>`, `<comment>`, and `<pub-id>`. Reference 'bibX' has other elements.

**Action:** Check the XML and remove the extra elements.

#### \[err-elem-cit-journal-3-2\]

**Rule:** An `<article-title>` element in a reference may contain characters and `<italic>`, `<sub>`, and `<sup>`. No other elements are allowed. Reference 'bib\_' does not meet this requirement.

**Action:** Remove disallowed formatting \(e.g. bold\) from the article title.

#### \[err-elem-cit-journal-5-1-2\]

**Rule:** A `<volume>` element within a `<element-citation>` of type 'journal' must contain at least one character and may not contain child elements. Reference 'bib\_' has too few characters and/or child elements.

**Action:** Check that the volume field has something in it and make sure that it does not contain any formatting \(bold, italic, subscript etc\).

#### \[err-elem-cit-journal-6-2\]

**Rule:** If `<fpage>` is present, neither `<elocation-id>` nor `<comment>In press</comment>` may be present. Reference 'bib_' has_  `<fpage>` and one of those elements.

**Action:** Look the article up online and make sure that the page range is correct. If the article in fact has an elocation ID rather than a page range, remove any first or last pages and retain only this ID. If the article is published, any in press tag should be removed. If the article has not been published, raise an author query to ascertain when it will be released. If this will be more than a few days after publication of the eLife article, remove the page range and retain only 'in press'.

#### \[err-elem-cit-journal-6-3\]

**Rule:** If `<elocation-id>` is present, neither `<fpage>` nor `<comment>In press</comment>` may be present. Reference 'bib_' has \__ `<elocation-id>` and one of those elements.

**Action:** Look the article up online and make sure that the elocation ID is correct. If the article has a page range instead, remove the elocation ID and retain only first and last page. If the article is published, any in press tag should be removed. If the article has not been published, raise an author query to ascertain when it will be released. If this will be more than a few days after publication of the eLife article, remove the elocation ID and retain only 'in press'.

#### \[err-elem-cit-journal-6-4\]

**Rule:** If `<comment>In press</comment>` is present, neither `<fpage>` nor `<elocation-id>` may be present. Reference 'bib\_' has one of those elements.

**Action:** Look the article up online and confirm that it is still unpublished. If it has been published, remove the in press tag and confirm that volume, page range/elocation ID are correct. If the article has not been published, raise an author query to ascertain when it will be released. If this will be more than a few days after publication of the eLife article, remove the page range/elocation ID and retain only 'in press'.

#### \[err-elem-cit-journal-6-5-1\]

**Rule:** `<lpage>` is only allowed if `<fpage>` is present. Reference 'bib_' has_  `<lpage>` but no `<fpage>`.

**Action:** Look up the article online to identify the appropriate page range information and correct the reference. Check whether the last page present is supposed to be a single first page or an elocation ID.

#### \[err-elem-cit-journal-6-5-2\]

**Rule:** `<lpage>` must be larger than `<fpage>`, if present. Reference 'bib_' has first page `<fpage>` =_  but last page `<lpage>` = \_.

**Action:** Look up the article online to identify the appropriate page range information and correct the reference.

#### \[err-elem-cit-journal-6-7\]

**Rule:** The following elements may not occur more than once in an : , , `<elocation-id>`, and `<comment>In press</comment>`. Reference 'bib_' has_  `<fpage>`,  _`<lpage>`,_  `<elocation-id>`, and \_ `<comment>` elements.

**Action:** Remove the extra instances of these elements. Ensure that the beginning and end of a page range have been tagged as first page and last page respectively, and not both tagged as first/last pages.

#### \[err-elem-cit-journal-6-6\]

**Rule:** If the content of `<fpage>` begins with a letter, then the content of `<lpage>` must begin with the same letter. Reference 'bib\_' does not.

**Action:** Update the last page to start with the same letter\(s\) as the first page.

#### \[err-elem-cit-journal-13\]

**Rule:** Comment elements with content other than 'In press' are not allowed. Reference 'bibX' has such a `<comment>` element.

**Action:** If the comment element contains relevant bibliographic information \(article title, journal name, volume etc\) move this to the correct elements and remove the comment. If the comment contains a variant on in press \('in production', 'forthcoming' etc\), correct this to in press and raise an author query to confirm this. If the comment contains pre-acceptance text \('in preparation', 'under review' etc\), raise an author query to ask whether the article is now in press. If so, update the reference to use the correct in press tag. If not, the reference will need to be removed from the reference list and mention in the text as e.g. 'Smith et al., in preparation'.

#### \[err-elem-cit-journal-10\]

**Rule:** If `<pub-id pub-id-type="pmid">` is present, the content must be all numeric. The content of `<pub-id pub-id-type="pmid">` in Reference 'bib_' is \__.

**Action:** PubMed IDs should only contain numbers. If there are letters as well, it means the ID has been captured incorrectly.

#### \[err-elem-cit-journal-9-1\]

**Rule:** Each `<pub-id>`, if present in a journal reference, must have a @pub-id-type of either "doi" or "pmid". The pub-id-type attribute on `<pub-id>` in Reference 'bib_' is \__.

**Action:** Remove any pub-ids that are not a DOI or a PubMed ID.

#### ref bib _references an organism - '**\_\_**_' - but there is no italic element with that correct capitalisation or spacing.

**Action:** In research content, messages about the italicisation of species names in references do not need to be acted upon unless the author has specifically requested that this be updated. In feature content, the indicated species names should be italicised.

#### XXX contains an organism - 'X. laevis' - but there is no italic element with that correct capitalisation or spacing.

#### PLOS-1

**Rule:** ref 'bib_' contains **\_**_. 'PLOS' should be upper-case.

**Action:** Apply the correct capitalisation.

**Example:** "Plos; PLoS; Plos Biology, PLoS Medicine" change to "PLOS, PLOS, PLOS Biology, PLOS Medicine"

#### PLOS-2

**Rule:** ref 'bib\_' contains . 'PLOS ONE' should be upper-case.

**Action:** Apply the correct capitalisation.

\*\*Example: "Plos one; PLoS One; PLOS One" change all to "PLOS ONE"

#### PNAS

**Rule:** ref 'bib_' has the doi for 'PNAS' but the title is \_\__, which is incorrect.

**Action:** Make sure that the article title corresponds to that found by following the DOI. Change the journal name to PNAS.

**Example:** "Proceedings of the National Academy of Sciences, Proceedings of the National Academy of Sciences of the United States of America" should be changed to "PNAS"

#### RNA

**Rule:** ref 'bib\_' contains . 'RNA' should be upper-case.

**Action:** Ensure RNA is capitalised.

#### ref 'bib\_' contains . 'BMJ' should be upper-case.

**Action:** Ensure BMJ is capitalised.

#### G3

**Rule:** ref 'bib_' has the doi for 'G3' but the title is \__ - it should be either 'G3: Genes\|Genomes\|Genetics' or 'G3: Genes, Genomes, Genetics'.

**Action:** Due to an issue with how G3 supplies its data to PubMed/Crossref, the title will sometimes have the unicode character replacing the ':'. This will need to be corrected to the proper character.

**Example:** "" should be changed to "G3: Genes\|Genomes\|Genetics, G3: Genes, Genomes, Genetics".

#### ampersand-check

**Rule:** ref 'bib\_' appears to contain the text 'amp', is this a broken ampersand?

#### ref 'bib\_' has a source title '' which must be incorrect.

Journal ref 'bib\_' has a source title '' which must be incorrect. It should be a data or software type reference.

XXX element contains the replacement character '�' which is unallowed -

ref 'bibX' has a source title which contains the text 'official journal' - ''. Is this necessary?

ref 'bibX' has an article-title with a full stop. Is this correct, or has the journal/source title been included? Or perhaps the full stop should be a colon ':'?

ref 'bibX' has an article-title which ends with a full stop, which cannot be correct -

ref 'bibX' has an article-title which ends with some full stops - is this correct? -

ref 'bibX' has an article-title which begins with 'Correction', 'Retraction' or 'Erratum'. Is this a reference to the notice or the original article?

ref 'bibX' has an article-title which contains the text ' journal '. Is a journal title \(source\) erroneously included in the title? - ''

ref 'bibX' has an article-title with one child element, and no text. This is almost certainly incorrect. -

element contains the replacement character '�' which is unallowed -

ref 'bibX' is a journal, but it doesn't have a page range or e-location. Is this right?

ref 'bibX' has a source , but it is captured as a journal not a preprint.

ref 'bibX' is an article, but it has no doi in the format 10.7554/eLife.00000, which must be incorrect.

Journal ref 'bibX' has the journal title . Should it be a conference type reference instead?

Journal ref 'bibX' has a journal title containing a year - XXXX. Should it be a conference type reference instead? Or should the year be removed from the journal title?

#### bibX is a article, but has a page number, which is incorrect.

#### bibX is a journal ref without a doi. Should it have one?

**Action:** If the article has a PubMed ID but no DOI, the reference will not have a DOI and can be left as it is. If there is no PMID, the first step is to revalidate the reference to ensure it's not just a system glitch. If this reveals nothing, look the article up online \(Google search, PubMed, Crossref\) to see if it has been assigned a DOI. Some articles will not have DOIs. This is particularly common with older articles e.g. those published before ~1990. While doing this check, keep an eye out for differing article information. If the author names or the title are slightly different from the published details or what is recorded in PubMed, the validator will not identify the reference.

**Example:**

