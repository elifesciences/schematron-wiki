---
description: >-
  A guide to reference lists and general rules about references in eLife
  articles
---

# References

## What is a reference list?

Most eLife articles will include a reference list \(otherwise known as a bibliography\) that contains details for all the previous work being cited in the text. These will usually consist mostly of journal articles and books but may also cover websites, papers presented at conferences, software, data and other published material. Whenever research is published, it will be supported with a large number of references; we have had articles with upwards of 150 references. Some review articles, which survey the available literature on a subject, may reach as high as 200+ references.

The reference list is included at the end of the article, in the back matter. References are ordered alphabetically by the surname of the first author for each entry, then by year, and then by the surnames of the second, third, fourth etc authors as necessary. Each reference list covers the entire article in which it appears; references in appendices are not treated separately from those in the main text.

![A typical eLife reference list in the online view](../../../.gitbook/assets/screen-shot-2021-07-13-at-17.06.53.png)

![A reference list in the article PDF](../../../.gitbook/assets/screen-shot-2021-07-13-at-17.07.27.png)

The style used for references in articles - that is, the way the details are formatted and ordered - is derived from the APA style but is unique to eLife. Full author lists are presented online, but where there are more than 20 authors listed, 'et al.' will be used to truncate the list in the PDF \(compare Axten et al., 2021 in the two lists shown above\). This is in order to save space; some journal articles have over 100 authors!

eLife permits references to the following items, for which type-specific guidance has been provided on dedicated pages:

* \*\*\*\*[**Books**](book-references.md)\*\*\*\*
* \*\*\*\*[**Conference papers**](conference-reference.md)\*\*\*\*
* \*\*\*\*[**Data**](data-references.md)\*\*\*\*
* \*\*\*\*[**Journal articles**](journal-references.md)\*\*\*\*
* \*\*\*\*[**Preprints**](preprint-references.md)\*\*\*\*
* \*\*\*\*[**Reports**](report-references.md)\*\*\*\*
* \*\*\*\*[**Software**](software-references.md)\*\*\*\*
* \*\*\*\*[**Theses**](thesis-references.md)\*\*\*\*



## What needs to be checked?



## Schematron warnings

### Content warnings

#### ref-list-title-test

**Warning**: _reference list usually has a title that is 'References', but currently it is 'XXXXXX' - is that correct?_

**Action**:

#### ref-list-distinct-1

**Error**: _In the reference list, each reference must be unique in its citation style \(combination of authors and year\). If a reference's citation is the same as anothers, a lowercase letter should be suffixed to the year \(e.g. Smith et al., 2020a\). XXXXXX does not meet this requirement._

**Action**:

#### err-elem-cit-gen-date-1-2

**Warning**: _The numeric value of the first 4 digits of the &lt;year&gt; element must be between 1700 and the current year + 5 years \(inclusive\). Reference 'XXXXXX' does not meet this requirement as it contains the value 'XXXXXX'._

**Action**:

#### err-elem-cit-gen-date-1-3

**Error**: _All &lt;year&gt; elements must have @iso-8601-date attributes. Reference 'XXXXXX' does not._

**Action**:

#### err-elem-cit-gen-date-1-4

**Warning**: _The numeric value of the first 4 digits of the @iso-8601-date attribute on the &lt;year&gt; element must be between 1700 and the current year + 5 years \(inclusive\). Reference 'XXXXXX' does not meet this requirement as the attribute contains the value 'XXXXXX'._

**Action**:

#### err-elem-cit-gen-date-1-6

**Error**: _If the &lt;year&gt; element contains the letter 'a' after the digits, there must be another reference with the same first author surname \(or collab\) with a letter "b" after the year. Reference 'XXXXXX' does not fulfill this requirement._

**Action**:

#### err-elem-cit-gen-date-1-7

**Error**: _If the &lt;year&gt; element contains any letter other than 'a' after the digits, there must be another reference with the same first author surname \(or collab\) with the preceding letter after the year. Reference 'XXXXXX' does not fulfill this requirement._

**Action:**

#### elem-cit-source

**Error**: _A &lt;source&gt; element within a XXXXXX type &lt;element-citation&gt; must contain at least two characters. - XXXXXX. See Ref 'XXXXXX'._

**Action**:

#### ext-link-attribute-content-match

**Error**: &lt;ext-link&gt; must contain content and have an @xlink:href, the value of which must be the same as the content of &lt;ext-link&gt;. The &lt;ext-link&gt; element in Reference 'XXXXXX' has @xlink:href='XXXXXX' and content 'XXXXXX'.

**Action**:

#### link-href-conformance

**Error**: _@xlink:href must start with either "http://", "https://", or "ftp://". The &lt;ext-link&gt; element in Reference 'XXXXXX' is 'XXXXXX', which does not._

**Action:**

#### err-elem-cit-high-2-2

**Error**: _The order of &lt;element-citation&gt;s in the reference list should be name and date, arranged alphabetically by the first author’s surname, or by the value of the first &lt;collab&gt; element. In the case of two authors, the sequence should be arranged by both authors' surnames, then date. For three or more authors, the sequence should be the first author's surname, then date. Reference 'XXXXXX' appears to be in a different order._

**Action**:

#### err-elem-cit-high-3-3

**Error**: _The sequence of ids in the &lt;ref&gt; elements must increase monotonically \(e.g. 1,2,3,4,5, . . . ,50,51,52,53, . . . etc\). Reference 'XXXXXX' has the value 'XXXXXX', which does not fit this pattern._

**Action**:

#### err-xref-high-2-1

**Error**: _Citations in the text to references with the same author\(s\) in the same year must be arranged in the same order as the reference list. The xref with the value 'XXXXXX' is in the wrong order in the text. Check all the references to citations for the same authors to determine which need to be changed._

**Action**:

#### err-elem-cit-high-6-2

**Error**: _element-citation must have a publication-type attribute with one of these values: 'journal', 'book', 'data', 'patent', 'software', 'preprint', 'web', 'periodical', 'report', 'confproc', or 'thesis'. Reference 'XXXXXX' has 'XXXXXX'._

**Action**:

#### pre-element-cite-year

**Warning**: _'XXXXXX' type references must have a year. Reference 'XXXXXX' does not. If you are unable to determine this, please ensure to add an author query asking for the year of publication._

**Action**:

#### final-element-cite-year

**Error**: _'XXXXXX' type references must have a year. Reference 'XXXXXX' does not. If you are unable to determine this, please ensure to query the authors for the year of publication._

**Action**:

#### pre-element-cite-string-date

**Warning**: '_XXXXXX' type references must have a year. Reference 'XXXXXX' does not. If you are unable to determine this, please ensure to add an author query asking for the year of publication._

**Action**:

#### final-element-cite-string-date

**Error**: _'XXXXXX' type references must have a year. Reference 'XXXXXX' does not. If you are unable to determine this, please ensure to query the authors for the year of publication._

**Action**:

#### pre-pub-id-test-1

**Warning**: _@xlink:href must start with an http:// or ftp:// protocol. - XXXXXX does not. If this information is missing, please ensure to query it with the authors._

**Action**:

#### final-pub-id-test-1

**Error**: _@xlink:href must start with an http:// or ftp:// protocol. - XXXXXX does not._

**Action**:

#### pre-pub-id-test-2

**Warning**: _pub-id is tagged as a doi, but it is not one - XXXXXX. If this information is missing, please ensure to query it with the authors._

**Action**:

#### final-pub-id-test-2

**Error**: _pub-id is tagged as a doi, but it is not one - XXXXXX_

**Action**:

#### pub-id-test-3

**Error**: _pub-id is tagged as a pmid, but it contains a character\(s\) which is not a digit - XXXXXX_

**Action**:

#### pub-id-doi-test-1

**Error**: _pub-id has a doi link - XXXXXX - but its pub-id-type is XXXXXX instead of doi._

**Action**:

#### pub-id-doi-test-2

**Error**: _pub id has a doi link - XXXXXX - but the identifier is not the doi - 'XXXXXX', which is incorrect. Either the doi link is correct, and the identifier needs changing, or the identifier is correct and needs adding after 'https://doi.org/' in order to create the real doi link._

**Action**:

#### pub-id-test-4

**Warning**: _pub id contains whitespace - XXXXXX - which is very likely to be incorrect._

**Action**:

#### pub-id-test-5

**Error**: _XXXXXX pub-id ends with a full stop - XXXXXX - which is not correct. Please remove the full stop._

**Action**:



#### duplicate-ref-test-4

**Warning:** _ref 'XXXXXX' has the same title as another reference, but a different source. Is this correct? - 'XXXXXX'_

**Action:** This warning will appear if two references have the same titles. This may happen if the authors include two separate reference lists which have been collated into one, leaving duplicate references. Check the details of both references and if the information is exactly the same, delete one of the duplicates. If the other details of the references differ \(e.g. year, author list, where the article was published\), then both references should be kept. For example, this warning will fire if the two references below are in the same article. However, as the other details of the references differ, both should be kept in the reference list. 

![](../../../.gitbook/assets/screenshot-2020-06-12-at-09.39.00.png)

![](../../../.gitbook/assets/screenshot-2020-06-12-at-09.39.52.png)

### XML structure warnings

#### pre-err-elem-cit-gen-date-1-5

**Warning**: _The numeric value of the first 4 digits of the @iso-8601-date attribute must match the first 4 digits on the &lt;year&gt; element. Reference 'XXXXXX' does not meet this requirement as the element contains the value 'XXXXXX' and the attribute contains the value 'XXXXXX'. If there is no year, and you are unable to determine this, please query with the authors._

**Action**:

#### final-err-elem-cit-gen-date-1-5

**Error**: _The numeric value of the first 4 digits of the @iso-8601-date attribute must match the first 4 digits on the &lt;year&gt; element. Reference 'XXXXXX' does not meet this requirement as the element contains the value 'XXXXXX' and the attribute contains the value 'XXXXXX'. If there is no year, and you are unable to determine this, please query with the authors._

**Action**:

#### err-elem-cit-high-1

**Error**: _The only element that is allowed as a child of &lt;ref&gt; is &lt;element-citation&gt;. Reference 'XXXXXX' has other elements._

**Action**:

#### err-elem-cit-high-3-1

**Error**: _Each &lt;ref&gt; element must have an @id attribute._

**Action**: 

#### err-elem-cit-high-3-2

**Error**: _Each &lt;ref&gt; element must have an @id attribute that starts with 'bib' and ends with a number. Reference 'XXXXXX' has the value 'XXXXXX', which is incorrect._

**Action**: 

#### pre-empty-elem-cit-des

**Warning**: _XXXXXX element is empty - this is not allowed. It must contain content. If the details are missing and cannot be determined, please query the authors._

**Action**:

#### final-empty-elem-cit-des

**Error**: _XXXXXX element is empty - this is not allowed. It must contain content._

**Action**:

#### tagging-elem-cit-des

**Error**: _XXXXXX element contains tagging, which should be removed - 'XXXXXX'._

**Action**:

