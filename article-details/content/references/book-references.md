# Book references

{% hint style="info" %}
For change log, click [**here**](book-references.md#change-log).
{% endhint %}

## What is a book reference?

A book reference gives bibliographic details for any electronic or in print books referred to in an article. 

\<insert book ref example>

For eLife articles, each part of the reference is formatted specifically:

\<insert book ref example including doi with formatting labels>

## What needs to be added?

The following information can be added for journal references:

| Kriya field   | Mandatory?                                                            | XML element                                                                                                        | Example                         |
| ------------- | --------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------ | ------------------------------- |
| Author(s)     | At least one author or collaboration is required; both can be present | \<person-group person-group-type="author">\<name>\<surname>Coyne\</surname>\<given-names>JA\</given-names>\</name> | Coyne JA                        |
| Editor(s)     | At least one author or editor is required; both can be present        | \<person-group person-group-type="editor">\<name>\<surname>Otte\</surname>\<given-names>D\</given-names>\</name>   | Otte D                          |
| Year          | Yes                                                                   | \<year iso-8601-date="1989">1989\</year>                                                                           | 1989                            |
| Chapter title | No                                                                    | \<chapter-title>Two rules of speciation\</chapter-title>                                                           | Two rules of speciation         |
| Book title    | Yes                                                                   | \<source>Speciation and its consequences\</source>                                                                 | Speciation and its consequences |
| Volume        | No                                                                    | \<volume>173\</volume>                                                                                             | 173                             |
| e-location ID | No (if first/last pages are present, there can be no e-location ID)   | \<elocation-id>e51381\</elocation-id>                                                                              | e51381                          |
| First page    | No (if an e-location ID is present, there can be no first/last pages) | \<fpage>917\</fpage>                                                                                               | 917                             |
| Last page     | No (if an e-location ID is present, there can be no first/last pages) | \<lpage>926\</lpage>                                                                                               | 926                             |
| DOI           | Yes (if there is one)                                                 | \<pub-id pub-id-type="doi">                                                                                        | 10.1083/jcb.200510010           |
| PMID          | Yes (if there is one)                                                 | \<pub-id pub-id-type="pmid">                                                                                       | 16769818                        |
| InPress       | No                                                                    | \<comment>In press\</comment>                                                                                      | In press                        |

Non-mandatory fields are required if they exist. Validation of references via PubMed or Crossref API tools should pull them in if the author did not provide them. Schematron warnings may also pick up incomplete references, and these should be checked at the source of the reference.

* **Authors**: Enter each author name as a surname(s) followed by initials. 
* **Collaboration: **Articles can have group or individual authors or a combination of both. Group authors should be placed in the order in which they appear in the original source. An author list can be a mix of both individual and group authors e.g. Smith J, Jones T, National Institutes of Health, Bloggs J etc.
* **Year**: This should be the year the book was published. This field can include a letter suffix (e.g. 2020a) if needed to distinguish between citations (see more [here](../reference-citations.md#what-is-a-reference-citation)).
* **Article title**: The title of the book. Can contain italics, superscript and subscript as required.
* **Journal name**: The full (not abbreviated) name of the journal in which the article was published.
* **Volume: **The volume of the journal in which the article was published (if applicable). eLife does not include issue numbers in journal references, so this information does not need to be added.
* **e-location ID:** The e-location identifier for the article (if applicable; most journal references will have either page numbers or an e-location ID).
* **First page: **The page number on which the article starts (if applicable; most journal references will have either page numbers or an e-location ID). Some page numbers will be prefixed with letters.
* **Last page:** The page number on which the article ends (if applicable; some articles are one-page long and so a last page is not required as it is the same as the first page). Some page numbers will be prefixed with letters.
* **DOI:** The Digital Object Identifier for the article (if applicable).
* **PMID: **The PubMed Identifier for the article (if applicable). This will not be supplied by the author but is added during pre-editing via the PubMed API tool.
* **InPress**: If a paper has been accepted for publication but the final publication details are not yet known, this field should have the text 'In press'. 

If any of the mandatory information is not provided, look up the book online. If the information still can't be found, please leave the following author query, replacing 'XXXXXX' with the missing information:

* Please provide the XXXXXX for this reference.

## How to add a book reference

## Finding reference details

## Schematron checks 

### Content checks

These checks relate to the content of book references. X or XXXXXX refers to quoted text which will change depending on the article.

#### book-doi-test-1

**Warning**: _XXXXXX is a book ref without a doi, but its publisher (XXXXXX) is known to register dois with some books/chapters. Should it have one?_

**Action:** This warning will appear if a book reference has no DOI and its publisher is known to register these in some cases. Look up the book online to see whether it should have a DOI and add one if so. If not, the warning can be ignored. 

#### err-elem-cit-book-2-2

**Error**:** **The only values allowed for @person-group-type in book references are "author" and "editor". Reference 'XXXXXX' has a \<person-group> type of 'XXXXXX'.

**Action:** This error will fire if a book reference has a person-group with a type other than 'author' or 'editor'. These are the only allowed types - if another type is present (e.g. 'translator') this should be removed. Double-check the reference details and update accordingly. If there is any confusion, check with the Production team.

#### pre-err-elem-cit-book-2-3

**Warning**: _In a book reference, there should be a single person-group element (either author or editor) or one person-group with @person-group-type="author" and one person-group with @person-group-type=editor. Reference 'XXXXXX' has XXXXXX \<person-group> elements. If this finromation is missing, please query it with the authors._

**Action:** This will appear as a warning at pre-author stages if a book reference has multiple person-group elements of the same type e.g.: 

```markup
<element-citation publication-type="book">
            <person-group person-group-type="author">
              <name>
                <surname>Coyne</surname>
                <given-names>JA</given-names>
              </name>
              <name>
                <surname>Orr</surname>
                <given-names>HA</given-names>
              </name>
            </person-group>
            <person-group person-group-type="author">
              <name>
                <surname>Otte</surname>
                <given-names>D</given-names>
              </name>
              <name>
...
```

In the XML, authors should all be captured under the person-group type 'author' and editors should be captured in a separate person-group - 'editor'. Look up the book reference to see what the correct formatting is and update accordingly: 

```markup
<ref id="bib1">
          <element-citation publication-type="book">
            <person-group person-group-type="author">
              <name>
                <surname>Coyne</surname>
                <given-names>JA</given-names>
              </name>
              <name>
                <surname>Orr</surname>
                <given-names>HA</given-names>
              </name>
            </person-group>
            <person-group person-group-type="editor">
              <name>
                <surname>Otte</surname>
                <given-names>D</given-names>
              </name>
...
```

If you are unsure of the correct details, please leave the following query (deleting as appropriate): 

* Please provide the author/editor list for this reference.

#### final-err-elem-cit-book-2-3

**Error**: _In a book reference, there should be a single person-group element (either author or editor) or one person-group with @person-group-type="author" and one person-group with @person-group-type=editor. Reference 'XXXXXX' has XXXXXX \<person-group> elements._

**Action: **This will appear as an error at post-author stages if a book reference has multiple person-group elements of the same type e.g.: 

```markup
<element-citation publication-type="book">
            <person-group person-group-type="author">
              <name>
                <surname>Coyne</surname>
                <given-names>JA</given-names>
              </name>
              <name>
                <surname>Orr</surname>
                <given-names>HA</given-names>
              </name>
            </person-group>
            <person-group person-group-type="author">
              <name>
                <surname>Otte</surname>
                <given-names>D</given-names>
              </name>
              <name>
...
```

In the XML, authors should all be captured under the person-group type 'author' and editors should be captured in a separate person-group - 'editor'. Look up the book reference to see what the correct formatting is and update accordingly: 

```markup
<ref id="bib1">
          <element-citation publication-type="book">
            <person-group person-group-type="author">
              <name>
                <surname>Coyne</surname>
                <given-names>JA</given-names>
              </name>
              <name>
                <surname>Orr</surname>
                <given-names>HA</given-names>
              </name>
            </person-group>
            <person-group person-group-type="editor">
              <name>
                <surname>Otte</surname>
                <given-names>D</given-names>
              </name>
...
```

If you are unsure of the correct details, email the authors to clarify.

#### pre-err-elem-cit-book-10-1

**Warning**: _Each \<element-citation> of type 'book' must contain one and only one \<source> element. Reference 'XXXXXX' has XXXXXX \<source> elements. If this information is missing, please query it with the authors._

**Action:** This warning will appear at pre-author stages if a book reference has zero or more than one source elements (i.e. the tag capturing the book title).

```markup
...
<year iso-8601-date="1989">1989</year>
            <chapter-title>Two rules of speciation</chapter-title>
            <source>Speciation and its consequences</source>
            <source/>
            <fpage>1</fpage>
...
```

This may happen if a chapter title is incorrectly tagged as a book title as well as the actual book title. Double check the reference to see how it should be formatted and correct accordingly.  

```markup
...
<year iso-8601-date="1989">1989</year>
            <chapter-title>Two rules of speciation</chapter-title>
            <source>Speciation and its consequences</source>
            <fpage>1</fpage>
...
```

If no title has been provided or you are unsure of the correct details, leave the following author query, editing as appropriate: 

* Please provide the XXXXXX for this reference.

#### final-err-elem-cit-book-10-1

**Error**: _Each \<element-citation> of type 'book' must contain one and only one \<source> element. Reference 'XXXXXX' has XXXXXX \<source> elements._

**Action:** This error will appear at post-author stages if a book reference has zero or more than one source elements (i.e. the tag capturing the book title).

```markup
...
<year iso-8601-date="1989">1989</year>
            <chapter-title>Two rules of speciation</chapter-title>
            <source>Speciation and its consequences</source>
            <source/>
            <fpage>1</fpage>
...
```

This may happen if a chapter title is incorrectly tagged as a book title as well as the actual book title. Double check the reference to see how it should be formatted and correct accordingly.  

```markup
...
<year iso-8601-date="1989">1989</year>
            <chapter-title>Two rules of speciation</chapter-title>
            <source>Speciation and its consequences</source>
            <fpage>1</fpage>
...
```

If no title has been provided or you are unsure of the correct details, email the authors to clarify.

#### err-elem-cit-book-10-2-2

**Error**: _A \<source> element within a \<element-citation> of type 'book' may only contain the child elements \<italic>, \<sub>, and \<sup>. No other elements are allowed. Reference 'XXXXXX' has child elements that are not allowed._

**Action:** This error will fire if there are formatting elements (e.g. bold text) in a book reference title. Only italics, superscripts and subscripts are allowed - check the original submission to see what the title should look like and correct accordingly. 

#### pre-err-elem-cit-book-13-1

**Warning**: _One and only one \<publisher-name> is required in a book reference. Reference 'XXXXXX' has XXXXXX \<publisher-name> elements. If this information is missing, please query it with the authors._

**Action:** What to do if this message fires

#### final-err-elem-cit-book-13-1

**Error**: _One and only one \<publisher-name> is required in a book reference. Reference 'XXXXXX' has XXXXXX \<publisher-name> elements._

**Action:** What to do if this message fires

#### warning-elem-cit-book-13-3

**Warning**: _The content of \<publisher-name> should not end with a publisher location. Reference 'XXXXXX' contains the string XXXXXX, which ends with a publisher location._

**Action:** What to do if this message fires

#### err-elem-cit-book-16

**Warning**: _Book reference 'XXXXXX' has first and/or last pages, but no chapter title. Is this correct?_

**Action:** What to do if this message fires

#### err-elem-cit-book-36

**Error**: _If both \<lpage> and \<fpage> are present, the value of \<fpage> must be less than the value of \<lpage>. Reference 'XXXXXX' has \<lpage> XXXXXX, which is less than or equal to \<fpage> XXXXXX._

**Action:** What to do if this message fires

#### err-elem-cit-book-36-2

**Error**: _If \<lpage> is present, \<fpage> must also be present. Reference 'XXXXXX' has \<lpage> but not \<fpage>._

**Action:** What to do if this message fires

#### err-elem-cit-book-36-6

**Error**: _At most one \<lpage> and one \<fpage> are allowed. Reference 'XXXXXX' has XXXXXX \<lpage> elements and XXXXXX \<fpage> elements._

**Action:** What to do if this message fires

#### err-elem-cit-book-40

**Error**: _The only tags that are allowed as children of \<element-citation> with the publication-type="book" are: \<person-group>, \<year>, \<source>, \<chapter-title>, \<publisher-loc>, \<publisher-name>, \<volume>, \<edition>, \<fpage>, \<lpage>, \<pub-id>, and \<comment>. Reference 'XXXXXX' has other elements._

**Action:** What to do if this message fires

#### err-elem-cit-book-2-1

**Error**: _Each \<person-group> must have a @person-group-type attribute. Reference 'XXXXXX' has a \<person-group> element with no @person-group-type attribute._

**Action:** What to do if this message fires

#### pre-err-elem-cit-book-22

**Warning**: _If there is a \<chapter-title> element there must be one and only one \<person-group person-group-type="author">. Reference 'XXXXXX' does not meet this requirement. If this information is missing, please query the authors for it._

**Action:** What to do if this message fires

#### final-err-elem-cit-book-22

**Error**: _If there is a \<chapter-title> element there must be one and only one \<person-group person-group-type="author">. Reference 'XXXXXX' does not meet this requirement._

**Action:** What to do if this message fires

#### err-elem-cit-book-28-1

**Error**: _If there is a \<chapter-title> element there may be a maximum of one \<person-group person-group-type="editor">. Reference 'XXXXXX' does not meet this requirement._

**Action:** What to do if this message fires

#### err-elem-cit-book-31

**Error**: _A \<chapter-title> element in a reference may contain characters and \<italic>, \<sub>, and \<sup>. No other elements are allowed. Reference 'XXXXXX' does not meet this requirement._

**Action:** What to do if this message fires

#### err-elem-cit-book-13-2

**Error**: _No elements are allowed inside \<publisher-name>. Reference 'XXXXXX' has child elements within the \<publisher-name> element._

**Action:** What to do if this message fires

#### err-elem-cit-book-15

**Error**: _No elements are allowed inside \<edition>. Reference 'XXXXXX' has child elements within the \<edition> element._

**Action:** What to do if this message fires

#### err-elem-cit-book-18

**Error**: _If \<pub-id pub-id-type="pmid"> is present, the content must be all numeric. The content of \<pub-id pub-id-type="pmid"> in Reference 'XXXXXX' is XXXXXX._

**Action:** What to do if this message fires

#### err-elem-cit-book-17

**Error**: _Each \<pub-id>, if present in a book reference, must have a @pub-id-type of one of these values: doi, pmid, isbn. The pub-id-type attribute on \<pub-id> in Reference 'XXXXXX' is XXXXXX._

**Action:** What to do if this message fires

#### err-elem-cit-book-6-4

**Error**: _If \<pub-id pub-id-type="pmid"> is present, the content must be all numeric. The content of \<pub-id pub-id-type="pmid"> in Reference 'XXXXXX' is XXXXXX._

**Action:** What to do if this message fires

#### err-elem-cit-book-13

**Error**: _Comment elements with content other than 'In press' are not allowed. Reference 'XXXXXX' has such a \<comment> element._

**Action:** What to do if this message fires

#### duplicate-ref-test-2

**Warning**: _ref 'XXXXXX' has the same doi as another reference, which might be incorrect. If they are not different chapters from the same book, then this is incorrect._

**Action:** What to do if this message fires

#### book-chapter-test-1

**Warning**: _ref 'XXXXXX' (XXXXXX) is tagged as a book reference with a chapter title, but there are no editors. Is this correct, or are these details missing?_

**Action:** What to do if this message fires

#### book-chapter-test-2

**Warning**: _ref 'XXXXXX' (XXXXXX) is tagged as a book reference with a chapter title, but there is not a first page and last page. Is this correct, or are these details missing?_

**Action:** What to do if this message fires

#### report-chapter-title-test

**Warning**: _ref 'XXXXXX' is tagged as a book reference, but the chapter title is XXXXXX. Should it be captured as a report type reference instead?_

**Action:** What to do if this message fires

#### report-book-source-test

**Warning**: _ref 'XXXXXX' is tagged as a book reference, but the book title is XXXXXX. Should it be captured as a report type reference instead?_

**Action:** What to do if this message fires

### XML Structure checks

These checks relate to the XML structure of book references. ‌X or XXXXXX refers to quoted text which will change depending on the article. For more information about what the XML should look like, see [**below**](book-references.md#xml-structure)**.**

## XML structure

## Change log

