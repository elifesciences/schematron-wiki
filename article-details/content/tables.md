---
description: Tabulated content in an article
---

# Tables

## Where are tables allowed?

Tables can be placed in the body of an article, in appendices, in Decision Letters and in Author responses.

Those outside of Decision letters and Author responses display in both the HTML and in the PDF. 

Those in Decision letters and Author responses only display in the HTML.

## What can tables contain?

Tables can be with or without labels \(tables without labels are referred to as inline tables\). Those with labels outside of Decision Letters and Author responses _must_ have a title. In Decision letters and Author responses the title is optional. All tables can also have an optional caption \(provided there is a title\). 

Note that an object labelled as one table \(with one label and optional title/caption\), can actually be made up of multiple tables. This is avoided, where possible in eLife content \(see also [XML structure](https://app.gitbook.com/@elifesciences/s/productionhowto/~/drafts/-M8jeJDGPJr4ZbU7UoIo/article-details/content/tables#xml-structure)\).

The content of a table can be broken down into three sections:

* Table header
* Table body
* Table footer

Tables can also have accompanying source data and/or source code files.

### Permitted table labels

Tables should have an appropriate label based on their placement in the content. The following label formats are permitted for tables at eLife:

* Table 1
* Key resources table
* Appendix 1—table 1
* Box 1—table 1
* Decision letter table 1
* Author response table 1

### Table header

A table can technically only have one table header \(in the XML this is the `<thead>` element, of which every `<table>` element is only allowed 1\). The header is the top row\(s\) of a table and serves as an indication of the content in the rows below it. If a table splits across multiple pages in the PDF, then this header is also displayed at the top of each subsequent page that is is split across.

If a table has multiple headings throughout it, then, if necessary these can be tagged within the table body \(and depending on the table it may also be appropriate to remove the header; more on this [below](https://app.gitbook.com/@elifesciences/s/productionhowto/article-details/content/tables#tables-with-multiple-headers)\).

The text in table headers is rendered with bold formatting. On the eLife site, headers are also given a grey shading:

![](../../.gitbook/assets/screen-shot-2020-05-29-at-15.08.59.png)

Every table cell in the header can contain the following content:

* Text \(with various different kinds of formatting\)
* Hyperlinks
* Inline images
* Code blocks
* Inline formulae
* Line breaks

See also [th-child-test](https://app.gitbook.com/@elifesciences/s/productionhowto/article-details/content/tables#th-child-test) below.

A cell can be merged with cells in rows above and below it, and can be merged with cells in the columns left and right of it.

Cells can be horizontally and vertically aligned.

### Table body

The table body is any row and cells which are not in the header. They are usually marked up as normal cells meaning that they display with no shading on the eLife site, and the text only carries the formatting which has been applied to it \(by default roman\).

A cell can be merged with cells in rows above and below it, and can be merged with cells in the columns left and right of it.

Every table cell in the body can contain the following content:

* Text \(with various different kinds of formatting\)
* Hyperlinks
* Inline images
* Code blocks
* Inline formulae
* Line breaks

See also [td-child-test](https://app.gitbook.com/@elifesciences/s/productionhowto/article-details/content/tables#td-child-test) below.

Cells can be horizontally and vertically aligned.

If a cell in the table body is entirely bold formatted, it may be appropriate to format it as a header instead of as a normal table cell. This should be clear based on what content is inside the cell and the content in the rest of the table.

### Table footers

Table footers appear at the bottom of a table. They are intended to only contain extra relevant information \(such as footnotes or attributions\), and will not contain tabulated content. eLife use the footer to contain footnotes to the table. Often these are simple paragraphs which apply to the whole table. They can however be referred to from specific cells in the table, and this is done by including an indicator at the specific place in the cell/text and at the start of the footnote in the footer.

All footnotes that have indicators should follow this sequence , †, ‡, §, ¶, , ††, ‡‡, §§, ¶¶, , †††, ‡‡‡, §§§, ¶¶¶, \*\*, ††††, ‡‡‡‡, §§§§, ¶¶¶¶, etc. in accordance with house style. Footnotes with numbers or letters as their indicators are not allowed.

In the future we would like to be able to link footnote indicators in table cells to their respective footnotes, but currently this is not done, merely the symbol is included as \(usually superscripted\) text in both places. 

Table footers can also contain more general footnotes that are not specifically referred to from cells within the table, such as a list of abbreviations or more general notes on the table. This is also fine.

### Associated source data/code files

Like figures, tables can have associated source data and source code files. These should be labelled in the format **\[Table label\]—source data 1.** and **\[Table label\]—source code 1**, for example **Table 1—source data 1.**

As with figure level source data, the label and title should be displayed underneath the table in the PDF. [Here is an example](https://elifesciences.org/articles/46883/figures#table1sdata1) from published content:

![](../../.gitbook/assets/screen-shot-2020-06-01-at-14.25.51.png)

### Allowed colours in tables

eLife allow the following colours as background shading for Table cells:

* Blue
* Green 
* Orange
* Yellow
* Purple
* Red
* Pink
* Grey

eLife allow the following colours for text \(in this case text inside table cells\):

* Blue
* Purple
* Red

![](../../.gitbook/assets/screen-shot-2020-06-01-at-17.21.42.png)

## Tables with multiple headers

What actually determines the formatting of the cells is whether each cell is formatted as a heading cell or as a normal table cell \(in the XML these are `<th>` and `<td>` elements, respectively\). The table header and table body can contain either of these. It's very unusual, but possible, that a header might need to contain normal, rather than header table cells. It is however relatively common for a table body to contain header cells.

If a table has multiple headings throughout, then the cells in the table body should be captured as header cells \(`<th>`\). This has to be done by Exeter \(it currently cannot be done by eLife staff in Kriya\).

Typically an entire row should be captured as a header, although there are exceptions. See the action for [tr-test-3](https://app.gitbook.com/@elifesciences/s/productionhowto/article-details/content/tables#tr-test-3) for some examples.

If a table has multiple headers, spans numerous pages in the PDF, and each header is of equal importance \(or those in the body are more important than the top one\), then there should be **no** table header. This is because \(as stated in [the Table Header section](https://app.gitbook.com/@elifesciences/s/productionhowto/article-details/content/tables#table-header)\), the PDF will display the top heading at the top of each subsequent page, and this would be inappropriate.

[Here is an example](https://elifesciences.org/articles/50661#table1). This is a semi-complex table with multiple headers throughout it. Since the first 'Data collection statistics' has been captured as a header, this text displays at the top of each page in the PDF, despite the fact that on the second and third page it is no longer relevant. Instead, the header should be captured as the first row of the table body and the cell in that row given table header formatting.

![](../../.gitbook/assets/screen-shot-2020-05-29-at-17.29.34.png)

![](../../.gitbook/assets/screen-shot-2020-05-29-at-17.29.45.png)

![](../../.gitbook/assets/screen-shot-2020-05-29-at-17.29.53.png)

Similarly, the Schematron check [tr-test-3](https://app.gitbook.com/@elifesciences/s/productionhowto/article-details/content/tables#tr-test-3) will fire if a table header cell is accompanied by normal table cells in the same row. See the [action](https://app.gitbook.com/@elifesciences/s/productionhowto/article-details/content/tables#tr-test-3) for examples of what to do when this fires.

A single labelled table containing multiple tables \(multiple `<table>` elements in a `<table-wrap>`\) should be avoided where possible. The only case it should be used is where a single table has multiple sections each with different numbers of columns and this cannot be represented in a single table, or where the authors have explicitly labelled a table with multiple parts, e.g. Table 1a, table 1b etc.

## Key resources tables

Key resources tables contain a list of resources \(such as Genes, Strains, Antibodies, Reagents, Chemical compounds, Software etc.\) that were used in generating the research communicated in an article. 

They are always placed at the start of the Materials and methods \(or equivalent sections, such as Model and materials\).

They have the label 'Key resources table', and no title or caption.

They have a specific structure which must be followed - there will always be 5 columns, each with a header. When creating these tables, authors should use [this template](https://cdn.elifesciences.org/author-guide/key_resources_table.xlsx). If the structure is not adhered to, then this has to be fixed during proofing. There are Schematron tests which will flag KR tables with the incorrect headers or number of columns.

In some articles, Key resources tables will be captured in a supplementary file instead. This is currently acceptable and no action needs to be taken \(although in the future we will likely not allow this\).

[Key resources table example](https://elifesciences.org/articles/57578#keyresource):

![](../../.gitbook/assets/screen-shot-2020-06-01-at-11.52.50.png)

## Table citations

Labelled tables, which are not Key resources tables, within the main text of an article _must_ have a citation. Citations are optional for tables placed anywhere else in an article \(appendices, boxes, and Decision letters/Author responses\), but citations for tables in appendices should also be sought after where appropriate. 

In the XML/HTML, tables should be placed directly after their first citation in the text.

In the PDF, tables should be placed as close to their first citation as appropriately possible unless otherwise specified by authors.

Inline tables \(that is tables with no label, title or caption\) cannot have citations and so do not require any.

## Checklist

The following should be checked for Tables:

* Appropriate capture of heading\(s\) \(see [Tables with multiple headers](https://app.gitbook.com/@elifesciences/s/productionhowto/article-details/content/tables#tables-with-multiple-headers)\).
* The presence of colours \(should be flagged by Schematron; see [colour-check-table](https://app.gitbook.com/@elifesciences/s/productionhowto/article-details/content/tables#colour-check-table)\).
* Missing links for RRIDs, DOIs, PMIDs and PMCIDs.
* That links for RRIDs, DOIs, PMIDs and PMCIDs resolve.
* References to software that requires forking or adding a citation \(see [When and how to fork repositories](https://app.gitbook.com/@elifesciences/s/productionhowto/toolkit/forking-git-based-repos) and [Software references](https://app.gitbook.com/@elifesciences/s/productionhowto/article-details/content/references/software-references)\).
* A corresponding citation in the text \(note this is not necessary for Key resources tables, tables in Decision letters or Author responses, and for certain Appendix tables\).
* That a title is present \(note this is not necessary for Key resources tables, tables in Decision letters or Author responses\).

## Schematron checks

The following tests are run on tables.

### Content warnings

#### body-table-label-test-1

**Error**: _XXXXXX - Table label does not conform to the usual format._

**Action**: This will fire when a table \(outside of appendices\) has a label which is not in one of the following formats:

* Table 1.
* Key resources table.
* Author response table 1.
* Decision letter 1.

Please ensure that the table label is either in one of these formats or \(in the case where it _should not_ have a label\), the label is removed.

#### app-table-label-test-1

**Error**: _XXXXXX - Table label does not conform to the usual format._

**Action**: This will fire when a table in an appendix has a label which is not in the format 'Appendix 1—table 1.' 

Please ensure that there are no typos, missing or extra spaces, that the capitalisation is correct, and that the character between 'Appendix X' and 'table X' is an [em dash](https://www.fileformat.info/info/unicode/char/2014/index.htm).

#### app-table-label-test-2

**Error**: _XXXXXX - Table label does not begin with the title of the appendix it sits in. Either the table is in the incorrect appendix or the table has been labelled incorrectly._

**Action**: This will fire when a table in an appendix has a label which does not start with the title of the appendix that it sits in, for example 'Appendix 1—table 1.' in 'Appendix 2'.

Depending on the case, the table will either need to be moved into its appropriate appendix, or it will need to be re-labelled.

#### table-fn-label-test-1

**Warning**: _Footnote starts with label which is not in line with house style - XXXXXX. Footnote symbols should be in the order: \*, †, ‡, §, ¶, \*\*, ††, ‡‡, §§, ¶¶, etc._

**Action**: Footnote indicators should be in the following sequence _,_ †, ‡, §, ¶, **, ††, ‡‡, §§, ¶¶,** , †††, ‡‡‡, §§§, ¶¶¶, \*\*, ††††, ‡‡‡‡, §§§§, ¶¶¶¶, etc. If this warning fires, it is because a footnote has an indicator and it one of the allowed symbols.

#### distinct-label-conformance

**Error**: _Duplicated labels - XXXXXX is present more than once in the text._

**Action**: This will fire when a Table label occurs twice in the same article for example there is a Table 1 and a Table 1. Table labels must be distinct. If this fires, action should be taken to ensure that this label is not used more than once.

#### pre-body-table-report

**Warning**: _XXXXXX_ _does not appear in sequence. Relative to the other numbered tables it is placed in position XX._

**Action**: This will fire at pre-author stages when a table is placed out of sequence in the body of an article \(such as Table 1 being placed after Table 2\). If this warning fires, and there is no citation for that table, please add the following author query:

* Please provide an in-text citation for this table.

If there is an in-text citation, but the citations are out of sequence \(i.e. Table 1 being cited after Table 2\), then please add the following author query:

* This citation is out of sequence with the other table citations and has therefore been left unlinked \(table placement is determined by first live citation\). Please confirm this is acceptable.

#### final-body-table-report

**Error**: _XXXXXX_ _does not appear in sequence which is incorrect. Relative to the other numbered tables it is placed in position XX._

**Action**: This will fire at post-author stages when a table is placed out of sequence in the body of an article \(such as Table 1 being placed after Table 2\). If this error fires, Production will need to contact the authors in order to determine how they would like their tables to be labelled/presented.

#### pre-app-table-report

**Warning**: _XXXXXX_ _does not appear in sequence. Relative to the other numbered tables it is placed in position XX._

**Action**: This will fire at pre-author stages when a table is placed out of sequence in an appendix \(such as Appendix 1—table 1 being placed after Appendix 1—table 2\). If this warning fires, and there is no citation for that table, please add the following author query:

* Please provide an in-text citation for this table.

If there is an in-text citation, but the citations are out of sequence \(i.e. Appendix 1—table 1 being cited after Appendix 1—table 2\), then please add the following author query:

* This citation is out of sequence with the other table citations and has therefore been left unlinked \(table placement is determined by first live citation\). Please confirm this is acceptable.

#### final-app-table-report

**Error**: _XXXXXX_ _does not appear in sequence which is incorrect. Relative to the other numbered tables it is placed in position XX._

**Action**: This will fire at post-author stages when a table is placed out of sequence in an appendix \(such as Appendix 1—table 1 being placed after Appendix 1—table 2\). If this error fires, Production will need to contact the authors in order to determine how they would like their tables to be labelled/presented.

#### text-v-object-cite-test

**Warning**: _XXXXXX has possible unlinked citations in the text._

**Action**: This will fire if a table's label text is found elsewhere in the article without citation formatting \(for example the text 'Table 1' is present in paragraph in the Introduction\). The following actions should be taken:

* If the table citation is deliberately left unlinked due to citations which are out of sequence, this warning can be ignored.
* If the table citation is obviously a reference to a table from another article or piece of work \(e.g. Table 1 from Smith et al., 2020\), then this can be ignored.
* If neither of the above two conditions is the case, then the text should be changed to a linked citation.

#### missing-ref-in-text-test

**Warning**: _XXXXXX element contains possible citation which is unlinked or a missing reference - search - XXXXXXX._

**Action**: This will fire if a table cell contains a possible unlinked citation such as Smith et al., 2020. If there is no corresponding reference in the reference list, then the following author query should be added:

* This cited reference does not appear in the reference list. Please provide the full bibliographic details.

Otherwise the text should be captured as a proper citation.

#### xref-column-test

**Warning**: '_XXXXXX' citation is in a column in the Key Resources Table which usually does not include references. Is it correct?_

**Action**: This will fire if a citation is present in the 1st, 2nd or 4th column in a Key resources table \(these are headed 'Reagent type \(species\) or resource', 'Designation', and 'Identifiers', respectively\). If it's clear, based on the content of the rest of the table, that the citation should be moved in the 3rd \(headed 'Source/reference'\) or 5th \(headed 'Additional information'\) column, then ensure that it is moved to one of these columns. If it is not clear, and the article is at a pre-author stage, then the following query should be added:

* Please confirm, is this citation in the correct column?

If the article is post-author, then the authors should be queried to check that this is correct \(if they haven't been already\).

#### doi-link-test

**Error**: _td element containing - 'XXXXXX' - looks like it contains a doi, but it contains no link with 'doi.org', which is incorrect._

**Action**: This will fire if a table cell in a Key resources table contains an unlinked doi. All dois should be linked in the KR table, so action should be taken to ensure that the doi text has an embedded link \(https://doi.org/{doi}\).

#### PMID-link-test

**Error**: _td element containing - 'XXXXXX' - looks like it contains a PMID, but it contains no link pointing to PubMed, which is incorrect._

**Action**: This will fire if a table cell in a Key resources table contains a PMID. All PMIDs should be linked in the KR table, so action should be taken to ensure that the PMID text has an embedded link \(https://www.pubmed.ncbi.nlm.nih.gov/{PMID}\).

#### PMCID-link-test

**Error**: _td element containing - 'XXXXXX' - looks like it contains a PMCID, but it contains no link pointing to PMC, which is incorrect._

**Action**: This will fire if a table cell in a Key resources table contains a PMCID. All PMCIDs should be linked in the KR table, so action should be taken to ensure that the PMCID text has an embedded link \(https://www.ncbi.nlm.nih.gov/pmc/{PMCID}\).

#### colour-check-table

**Warning**: _XXXXXX element has colour background. Is this correct? It contains XXXXXX._

**Action**: This will fire if a table cell in a table has colour formatting \(a style attribute beginning with 'author-callout'\). eLife only allow the following colours in table cells -  blue, green orange, yellow, purple, red, pink and grey. When this fires an author query should be added to the table \(only 1 per table\):

* Where possible, we prefer that colours are not used in tables in the interests of accessibility. Would it be possible to capture the same meaning in this table with more common forms of emphasis \(such as bold, italic or underline\)? If so please stipulate below how the table should be revised. Please note that this is a suggestion and supported colours in tables can be published.

#### pre-colour-check-table-2

**Warning**: _element containing 'XXXXXX' has an @style with an unallowed value - 'XXXXXX'. The only allowed values are 'author-callout-style-b1', 'author-callout-style-b2', 'author-callout-style-b3', 'author-callout-style-b4', 'author-callout-style-b5', 'author-callout-style-b6', 'author-callout-style-b7', 'author-callout-style-b8' for blue, green orange, yellow, purple, red, pink and grey respectively. Please ensure one of these is used. If it is clear that colours are supposed to be used, but you are not sure which ones, then please query the authors - 'eLife only supports the following colours for table cells - blue, green orange, yellow, purple, red, pink and grey. Please confirm how you would like the colour\(s\) here captured given this information.'._

**Action**: This will fire at a pre-author stage if a table cell in a table has a style attribute with an unallowed value. Usually this will be because the colour formatting is not a supported colour. If it _is_ one of the supported colours and this message fires this is a problem - it means that the content has not been typeset correctly.

In the case where it is a colour that is not supported \(brown for example\), then as the message suggests the following author query should be added:

* eLife only supports the following colours for table cells - blue, green orange, yellow, purple, red, pink and grey. Please confirm how you would like the colour\(s\) here captured given this information.

#### final-colour-check-table-2

**Error**: _element containing 'XXXXXX' has an @style with an unallowed value - 'XXXXXX'. The only allowed values are 'author-callout-style-b1', 'author-callout-style-b2', 'author-callout-style-b3', 'author-callout-style-b4', 'author-callout-style-b5', 'author-callout-style-b6', 'author-callout-style-b7', 'author-callout-style-b8' for blue, green orange, yellow, purple, red, pink and grey respectively._

**Action**: This will fire at a post-author stage if a table cell in a table has a style attribute with an unallowed value. Usually this will be because the colour formatting is not a supported colour. If it _is_ one of the supported colours and this message fires this is a problem - it means that the content has not been typeset correctly. If it is not a supported colour, ensure to check the author's response to the query which should have been added pre-author. If the response isn't clear about how to proceed \(or the query was mistakenly not left\), then Production will need to contact the author to ask how they would like to proceed.

#### table-wrap-test-3

**Error**: _table-wrap has an inline id XXXXX but it has a label - XXXXX, which is not correct._

**Example message**: table-wrap has an inline id inline-table1 but it has a label - Table 1., which is not correct.  

**Action**: This will fire if a table has the incorrect id. A table with a label must have an id in the format `table1`. Either the label needs removing or the table id needs correcting. The original manuscript should be checked to determine which action needs to be taken.

#### table-wrap-test-4

**Error**: _table-wrap with id XXXXX has no label which is not correct._

**Action**: This is the inverse of table-wrap-test-3. It will fire if a table without a label has a label which in the format `table1`. Either the label needs adding or the table id needs correcting. The original manuscript should be checked to determine which action needs to be taken.

#### kr-table-wrap-test-1

**Error**: _table-wrap has an id XXXXXX but its label is not 'Key resources table', which is incorrect._

**Action**: Key resources tables must have the label 'Key resources table', and an id `keyresource`. This will fire is a table has that id, but it does not have a label, or the label is not exactly as specified above. Action should be taken to ensure both of these conditions are met.

#### pre-table-wrap-cite-1

**Warning**: _There is no citation to XXXXXX. Ensure to query the author asking for a citation._

**Action**: This will fire at pre-author stages for tables \(which are not Key resources tables\) with labels, in articles which are not corrections or retractions. If this fires \(and there are no issues with labelling or the table id\), then the following author query should be added:

* Please provide an in-text citation for this table.

The only exception to this is where the article contains an appendix and there is no appropriate place to cite the tables in the appendix \(for example if it is _only_ made up of tables\). In such cases, adding a query is not necessary.

#### final-table-wrap-cite-1

**Warning**: _There is no citation to XXXXXX. Ensure this is added._

**Action**: This will fire at post-author stages for tables \(which are not Key resources tables\) with labels, in articles which are not corrections or retractions. If this fires \(and there are no issues with labelling or the table id\), and the authors have not indicated in response to a query where the citation should be, then eLife production should contact the authors to get an appropriate citation.

The only exception to this is where the article contains an appendix and there is no appropriate place to cite the tables in the appendix \(for example if it is _only_ made up of tables\).

#### feat-table-wrap-cite-1

**Warning**: _There is no citation to XXXXXX. Is this correct?_

**Action**: This will fire at all stages for tables \(which are not Key resources tables\) with labels, in feature content \(insights or feature articles\). 

If this fires at a **pre-author stage** \(and there are no issues with labelling or the table id\), then the following author query should be added:

* Please provide an in-text citation for this table.

If this fires at a **post-author stage**, this should be **ignored** by Exeter and eLife production should check with Features as to whether there should be a citation \(if it isn't already clear\).

#### kr-table-not-tagged

**Error**: _XXXXXX has headings that are for the Key resources table, but it does not have an @id='keyresource'._

**Action**: This will at all stages fire if a table has all the KR table headings but does not have an  id `keyresource`. If this fires, ensure that the Table is captured as a Key resources table \(with the correct id, label and no title or caption\).

#### kr-table-not-tagged-2

**Warning**: _XXXXXX has the title XXXXXX but it is not tagged as a key resources table. Is this correct?_

**Action**: This will fire at all stages if a table has a title containing the text 'Key resource'. If it _is_ a key resources table, then this should be captured as a Key resources table \(with the correct id, label and no title or caption\). If it is not \(i.e. just a normal table, without the standard KR table headings, which happens to have the text 'Key resource' in it's title\), then this message can be ignored.

#### kr-table-header-1

**Warning**: _Key resources tables should have 5 column headings \(th elements\) but this one has X. Either it is incorrectly typeset or the author will need to be queried in order to provide the table in the correct format._

**Action**: This will fire at all stages if a KR table does not have the correct number of headings. All KR tables should have 5 headings/columns. If the table is typeset correctly \(**please check this carefully**\), as the author provided it, then the following author query should be added:

* This Key resource table is not in the correct format. Please provide a revised table in the required format using this guide - [https://cdn.elifesciences.org/author-guide/key\_resources\_table.xlsx](https://cdn.elifesciences.org/author-guide/key_resources_table.xlsx). The table can be provided as an editable file \(such as word or excel\) in response to the proofing email. We regret that this was not brought to your attention earlier and apologise for the inconvenience.

#### kr-table-header-2

**Warning**: _Key resources table has more than 1 row in its header, which is incorrect._

**Action**: This will fire at all stages if a KR table has more than one row in it's header. It is **very** likely that this means the table has been incorrectly typeset. If this is the case please correct. If this has been checked very carefully and the table is as the author provided it, then the following author query should be added:

* This Key resource table is not in the correct format. Please provide a revised table in the required format using this guide - [https://cdn.elifesciences.org/author-guide/key\_resources\_table.xlsx](https://cdn.elifesciences.org/author-guide/key_resources_table.xlsx). The table can be provided as an editable file \(such as word or excel\) in response to the proofing email. We regret that this was not brought to your attention earlier and apologise for the inconvenience.

#### kr-table-header-3

**Warning**: _Key resources table has no rows in its header, which is incorrect._

**Action**: This will fire at all stages if a KR table has no rows in it's header. It is **very** likely that this means the table has been incorrectly typeset \(this will almost never occur\). 

#### kr-table-header-4

**Warning**: _The first column header in a Key resources table is usually 'Reagent type \(species\) or resource' but this one has 'XXXXXX'._

**Action**: This will fire at all stages if the first header in a KR table is not 'Reagent type \(species\) or resource'. If it's clearly a typo, then this should be corrected. If the table is completely different to how it should be \(see [above](https://app.gitbook.com/@elifesciences/s/productionhowto/article-details/content/tables#key-resources-tables)\), then please add the following author query:

* This Key resource table is not in the correct format. Please provide a revised table in the required format using this guide - [https://cdn.elifesciences.org/author-guide/key\_resources\_table.xlsx](https://cdn.elifesciences.org/author-guide/key_resources_table.xlsx). The table can be provided as an editable file \(such as word or excel\) in response to the proofing email. We regret that this was not brought to your attention earlier and apologise for the inconvenience.

#### kr-table-header-5

**Warning**: _The second column header in a Key resources table is usually 'Designation' but this one has 'XXXXXX'._

**Action**: This will fire at all stages if the second header in a KR table is not 'Designation'. If it's clearly a typo, then this should be corrected. If the table is completely different to how it should be \(see [above](https://app.gitbook.com/@elifesciences/s/productionhowto/article-details/content/tables#key-resources-tables)\), then please add the following author query:

* This Key resource table is not in the correct format. Please provide a revised table in the required format using this guide - [https://cdn.elifesciences.org/author-guide/key\_resources\_table.xlsx](https://cdn.elifesciences.org/author-guide/key_resources_table.xlsx). The table can be provided as an editable file \(such as word or excel\) in response to the proofing email. We regret that this was not brought to your attention earlier and apologise for the inconvenience.

#### kr-table-header-6

**Warning**: _The third column header in a Key resources table is usually 'Source or reference' but this one has 'XXXXXX'._

**Action**: This will fire at all stages if the third header in a KR table is not 'Source or reference'. If it's clearly a typo, then this should be corrected. If the table is completely different to how it should be \(see [above](https://app.gitbook.com/@elifesciences/s/productionhowto/article-details/content/tables#key-resources-tables)\), then please add the following author query:

* This Key resource table is not in the correct format. Please provide a revised table in the required format using this guide - [https://cdn.elifesciences.org/author-guide/key\_resources\_table.xlsx](https://cdn.elifesciences.org/author-guide/key_resources_table.xlsx). The table can be provided as an editable file \(such as word or excel\) in response to the proofing email. We regret that this was not brought to your attention earlier and apologise for the inconvenience.

#### kr-table-header-7

**Warning**: _The fourth column header in a Key resources table is usually 'Identifiers' but this one has 'XXXXXX'._

**Action**: This will fire at all stages if the fourth header in a KR table is not 'Identifiers'. If it's clearly a typo, then this should be corrected. If the table is completely different to how it should be \(see [above](https://app.gitbook.com/@elifesciences/s/productionhowto/article-details/content/tables#key-resources-tables)\), then please add the following author query:

* This Key resource table is not in the correct format. Please provide a revised table in the required format using this guide - [https://cdn.elifesciences.org/author-guide/key\_resources\_table.xlsx](https://cdn.elifesciences.org/author-guide/key_resources_table.xlsx). The table can be provided as an editable file \(such as word or excel\) in response to the proofing email. We regret that this was not brought to your attention earlier and apologise for the inconvenience.

#### kr-table-header-8

**Warning**: _The fifth column header in a Key resources table is usually 'Additional information' but this one has 'XXXXXX'._

**Action**: This will fire at all stages if the fifth header in a KR table is not 'Additional information'. If it's clearly a typo, then this should be corrected. If the table is completely different to how it should be \(see [above](https://app.gitbook.com/@elifesciences/s/productionhowto/article-details/content/tables#key-resources-tables)\), then please add the following author query:

* This Key resource table is not in the correct format. Please provide a revised table in the required format using this guide - [https://cdn.elifesciences.org/author-guide/key\_resources\_table.xlsx](https://cdn.elifesciences.org/author-guide/key_resources_table.xlsx). The table can be provided as an editable file \(such as word or excel\) in response to the proofing email. We regret that this was not brought to your attention earlier and apologise for the inconvenience.

#### kr-table-body-1

**Error**: _Table cell in KR table containing 'XXXXXX' is captured as a table header cell \(th\), which is not allowed. Ensure that this is changed to a normal table cell \(td\)._

**Action**: This will fire for any table cell in the body of a Key Resources table which is captured with heading formatting \(as a `<th>` element\). This should always be changed to a normal table cell \(`<td>` element\).

#### table-test-2

**Warning**: _table doesn't have a header \(thead\). Is this correct?_

**Action**: This will fire if a table does not have a header \(the &lt;table&gt; element does not have a child &lt;thead&gt; element\). This could either mean that the table has been incorrectly typeset without headers, or there could be a good reason that it does not have a header \(see [Tables with multiple headers](https://app.gitbook.com/@elifesciences/s/productionhowto/article-details/content/tables#tables-with-multiple-headers)\). If it is an error then this should be fixed by Exeter, otherwise the message can be ignored.

#### tbody-test-1

**Error**: _tbody must have at least one row \(tr\)._

**Action**: This will fire if the body of a table does not have a row. This is unlikely to occur and if it does, would indicate that the table has been typeset incorrectly, which will need to be fixed by Exeter.

#### thead-test-1

**Error**: _thead must have at least one row \(tr\)._

**Action**: This will fire if the header of a table does not have a row. This is unlikely to occur and if it does, would indicate that the table has been typeset incorrectly, which will need to be fixed by Exeter.

#### tr-test-1

**Error**: _row \(tr\) must contain at least one heading cell \(th\) or data cell \(td\)._

**Action**: This will fire if the a row does not have any table cells. This is unlikely to occur and if it does, would indicate that the table has been typeset incorrectly, which will need to be fixed by Exeter.

#### tr-test-2

**Warning**: _table row in body contains a th element \(a header\). Please check that this is correct._

**Action**: This will fire for table cells which are styled as headers, but are in the table body. The table has numerous headers throughout it \(and is supposed to\), then this can be ignored. Otherwise Exeter will have to change this to a normal table cell.

#### tr-test-3

**Warning**: _table row in header contains a td element \(table data\), which is unusual. Please check that this is correct._

**Action**: This will fire for table cells which are not styled as headers, but are in the header of the table. This is highly unusual, and would usually indicate that either the table should not have a header at all, or that the cell should be given heading formatting.

#### tr-test-3

**Warning**: _Table header cell containing 'XXXXXX' has table data \(not header\) cells next to it on the same row. Is this correct? Should the whole row be header cells, or should this cell extend across the whole row?_

**Action**: This will fire if a table row contains a mixture of table header cells and normal table cells. This is unusual, although there are a small number of cases where this would be appropriate. Checking the table in the original manuscript will give some indication of how the headings in a table should look like, and if any changes are required these will need to be implemented by Exeter. 

In a case like [this ](https://elifesciences.org/articles/53910#table1)

![](../../.gitbook/assets/screen-shot-2020-05-29-at-13.02.24.png)

all the table cells next to 'Refinement \(Phenix\)' and 'Validation' \(in their rows\) should be given table header formatting.

In a case like [this](https://elifesciences.org/articles/52505#table1) 

![](../../.gitbook/assets/screen-shot-2020-05-29-at-12.58.10.png)

'Map resolution' should be made into one cell spanning across its entire row \(formatted as a header\).

In a case like [this](https://elifesciences.org/articles/53498#table1)

![](../../.gitbook/assets/screen-shot-2020-05-29-at-12.54.58.png)

the warning can be ignored, as all the cells in the first column serve as another header.

#### xref-column-test

**Warning**: _'XXXXXXX' citation is in a column in the Key Resources Table which usually does not include references. Is it correct?_

**Action**: This will fire at all stages if a citation in a KR table is not in the third or fifth row \(the commonly used ones for citations\). If it is clear that this needs to moved to a different column or is a mistake \(for example a superscript number converted to a citation which should have been left as a number\), then it should be corrected. If not clear, and at a pre-author stage please add this author query:

* Please confirm whether this citation is in the correct column in the Key resources table.

#### rrid-test

**Warning**: _'XXXXXXX' element contains what looks like XX unlinked RRID\(s\). These should always be linked using 'https://scicrunch.org/resolver/'. Element begins with XXXXXXX._

**Action**: This will fire at all stages if a table cell or paragraph contains more instances of the text `RRID:` than there are links containing https://scicrunch.org/resolver/, meaning that there are unlinked RRIDs. All RRIDs should linked by adding the RRID to the end of https://scicrunch.org/resolver/. For example for the text `RRID:CVCL_0063`, `CVCL_0063` should have an embedded link - https://scicrunch.org/resolver/CVCL\_0063. If the author has not actually provided the RRID, i.e. the cell contains just `RRID:`, then the following author query should be added:

* Please provide the RRID here.

#### org-test

**Warning**: _'XXXXXXX' element contains an organism - XXXXXX - but there is no italic element with that correct capitalisation or spacing. Is this correct? XXXXX element begins with XXXXXX._

**Action**: This will fire at all stages if a table cell or paragraph contains the name of an organism which should be italicised, but there is not one italic element containing that text. For example, if the cell contains E. Coli then it should be italicised to _E. Coli_. Similarly if it contains _e.Coli_, then the text should be changed to _E. Coli_.

#### code-test

**Warning**: _'XXXXXXX' element contains what looks like unformatted code - 'XXXXXX' - does this need tagging with &lt;monospace/&gt; or &lt;code/&gt;?_

**Action**: This will fire at all stages if a table cell or paragraph contains text which is preceded by two hyphens, such as `--render`. In a table cell this should be given monospace formatting if it is just a snippet of code. If it is a full block of code going over multiple lines, then this should be captured as a code block.

#### cell-spacing-test

**Warning**: _'XXXXXXX' element contains an equal sign with content directly next to one side, but a space on the other, is this correct? - XXXXXX._

**Action**: This will fire at all stages if a table cell or paragraph contains an equal sign which has a space on one side, but not the other, for example `p= 6`. The spacing should be made to be consistent either `p=6` or `p = 6`. Check how this has been done elsewhere in the article \(with spaces or without spaces\), and update the text so that it is consistent in the article.

#### equal-spacing-test

**Warning**: _'XXXXXXX' element contains the text '+cells' or '±cells' which is very likely to be incorrect spacing - XXXXXX._

**Action**: This will fire at all stages if a table cell or paragraph contains the text `+cell` or `±cell`. If this fires, it's almost certain that a space needs adding between the plus sign and the word cell. It may also be necessary to remove the space \(if there is one\) before the plus sign depending on the content. For example `Ly6G +cells` should be changed to `Ly6G+ cells`.

#### ring-diacritic-symbol-test

**Warning**: _'XXXXXXX' element contains the ring above symbol, '∘'. Should this be a \(non-superscript\) degree symbol - ° - instead?_

**Action**: This will fire at all stages if a table cell or paragraph contains this symbol - ∘. Sometimes this symbol is included \(and given superscript formatting\) instead of a degree symbol. If it's clear that the authors have intended to use the degree symbol, then this should be replaced with °.

#### diabetes-1-test

**Error**: _element contains the phrase 'Type one diabetes'. The number should not be spelled out, this should be 'Type 1 diabetes'._

**Action**: This will fire at all stages if a table cell or paragraph contains the text 'Type one diabetes'. As the message suggests this should always be changed to 'Type 1 diabetes'.

#### diabetes-2-test

**Error**: _element contains the phrase 'Type two diabetes'. The number should not be spelled out, this should be 'Type 2 diabetes'._

**Action**: This will fire at all stages if a table cell or paragraph contains the text 'Type two diabetes'. As the message suggests this should always be changed to 'Type 2 diabetes'.

#### unlinked-url

**Warning**: _'XXXXXXX' element contains possible unlinked urls. Check - XXXXXX._

**Action**: This will fire at all stages if a table cell or paragraph \(which is not in a decision letter or author response or the ethics information\) includes what is likely a URL. If it is a URL, then it should always be formatted as a link rather than plain text.

#### year-style-test

**Warning**: _'XXXXXXX' element contains the following string\(s\) - XXXXXX. If this refers to years, then the space should be removed after the number, i.e XXXXXXX. If the text is referring to a unit then this is fine._

**Action**: This will fire at all stages if a table cell or paragraph contains text like `1990 s`. If the authors intended to refer to decades then the space between the s.and number should be removed - `1990s`. If it a number an unit \(as in 1990 seconds\) then the space should be retained and the message ignored.

#### copyright-symbol

**Error**: _'XXXXXXX' element contains the copyright symbol, '©', which is not allowed._

**Action**: This will fire at all stages if a table cell contains the copyright symbol, '©'. This is not allowed in eLife content and should be removed.

#### trademark-symbol

**Error**: _'XXXXXXX' element contains the trademark symbol, '™', which is not allowed._

**Action**: This will fire at all stages if a table cell contains the trademark symbol, '™'. This is not allowed in eLife content and should be removed.

#### reg-trademark-symbol

**Error**: _'XXXXXXX' element contains the registered trademark symbol, '®', which is not allowed._

**Action**: This will fire at all stages if a table cell contains the registered trademark symbol, '®'. This is not allowed in eLife content and should be removed.

#### Inc-presence

**Warning**: _'XXXXXXX' element contains 'Inc.' with a full stop. Remove the full stop._

**Action**: This will fire at all stages if a table cell contains the text 'Inc' or 'inc' followed by a full stop. If it is a shorthand for incorporated, and not at the end of a sentence, such a `McDonalds Inc. sell 'food'`, then the full stop should be removed `McDonalds Inc sell 'food'`. If it is at the end of a sentence \(`'Food' is sold by McDonalds Inc.`\) or not a shorthand for incorporated, then the full stop can be left.

#### andand-presence

**Warning**: _'XXXXXXX' element contains ' and and ' which is very likely to be incorrect._

**Action**: This will fire at all stages if a table cell contains the text ' and and ' \(or similar capitalised variations\). It almost certainly a mistake, so the extra 'and' can be removed.

#### figurefigure-presence

**Warning**: _'XXXXXXX' element contains ' figure figure ' which is very likely to be incorrect._

**Action**: This will fire at all stages if a table cell contains the text ' and and ' \(or similar capitalised variations\). It almost certainly a mistake and the extra 'figure' can be removed.

#### plus-minus-presence

**Warning**: _'XXXXXXX' element contains two plus or minus signs separate by a space and a forward slash \(such as '+ /-'\). Should the space be removed? - XXXXXX._

**Action**: This will fire at all stages if a table cell contains two plus or minus signs separated by a space and a forward slash \(such as '+ /-'\). It almost certainly a mistake and the extra space can be removed.

#### supplementalfigure-presence

**Warning**: _'XXXXXXX' element contains the phrase ' Supplemental figure ' which almost certainly needs updating. XXXXXX starts with - XXXXXX._

**Action**: This will fire at all stages if a table cell contains ' Supplemental figure '. If it is clear which figure supplement this refers to then it should be updated accordingly \(such as Figure 1-figure supplement 1\). If it is not, then the following author query:

* Supplemental figure X is cited in the text but has not been provided. Please either correct the citation, provide the figure file and a title and legend, or confirm that this citation refers to another article.

#### supplementalfile-presence

**Warning**: _'XXXXXXX' element contains the phrase ' Supplemental file ' which almost certainly needs updating. XXXXXX starts with - XXXXXX._

**Action**: This will fire at all stages if a table cell contains ' Supplemental file '. If it is clear which Supplementary file this refers to then it should be updated accordingly \(such as Supplementary file 1\). If it is not, then the following author query:

* Supplemental file X is cited in the text but has not been provided. Please either correct the citation, provide the figure file and a title and legend, or confirm that this citation refers to another article.

#### ref-presence

**Warning**: _'XXXXXXX'  element contains 'Ref.' which is either incorrect or unnecessary._

**Action**: This will fire at all stages if a table cell contains the text 'Ref.'. If the text is referring to a citation, i.e. `Ref. 2` in the original manuscript converted to `Ref. Smith et al., 2020`, then the text 'Ref.' should be deleted. If the text is not referring to a citation, then the full stop should be removed.

#### refs-presence

**Warning**: _'XXXXXXX'  element contains 'Refs.' which is either incorrect or unnecessary._

**Action**: This will fire at all stages if a table cell contains the text 'Refs.'. If the text is referring to a citation, i.e. `Refs. 2-3` in the original manuscript converted to `Ref. Smith et al., 2020; Smith et al., 2019`, then the text 'Refs.' should be deleted. If the text is not referring to a citation, then the full stop should be removed.

#### replacement-character-presence

**Error**: _'XXXXXXX' element contains the replacement character '�' which is not allowed._

**Action**: This will fire at all stages if a table cell contains the replacement character '�'. The original manuscript should be checked to ensure that the intended character was not incorrectly converted. Otherwise the character should be removed.

#### junk-character-presence

**Error**: _'XXXXXXX' element contains a junk character '' which should be replaced._

**Action**: This will fire at all stages if a table cell contains a junk character ''. The original manuscript should be checked to ensure that the intended character was not incorrectly converted. Otherwise the character should be removed.

#### inverterted-question-presence

**Warning**: _'XXXXXXX' element contains an inverted question mark '¿' which should very likely be replaced/removed._

**Action**: This will fire at all stages if a table cell contains an inverted question mark '¿'. The original manuscript should be checked to ensure that the intended character was not incorrectly converted. Otherwise the character should be removed.

#### empty-parentheses-presence

**Warning**: _'XXXXXXX' element contains empty parentheses \('\[\]', or '\(\)'\). Is there a missing citation within the parentheses? Or perhaps this is a piece of code that needs formatting?_

**Action**: This will fire at all stages if a table cell contains empty parentheses \('\[\]', or '\(\)'\). The original manuscript should be checked to ensure that the content was not incorrectly converted. If it has been correctly converted, then if it is code \(such as `regex()`\), then the code text should be given monospace formatting. If it is not code, the the following author query should be added:

* Please add in the missing text here or remove the brackets, as necessary.

#### broken-unicode-presence

**Warning**: _'XXXXXXX' element contains what looks like a broken unicode - XXXXXX._

**Action**: This will fire at all stages if a table cell contains what looks like broken unicode characters, such as `&amp;#x21;`. The original manuscript should be checked to see what the intended character should be. If it is still not clear, then do a web search for that text \(followed by unicode\). If it's then clear what symbol it should be, then this should be added. Finally if it is still not clear, then add the following author query:

* Please confirm what this symbol should be here or delete the text, as necessary.

#### extra-full-stop-presence

**Warning**: _'XXXXXXX' element contains what looks two full stops right next to each other \(..\) - Is that correct? - XXXXXX._

**Action**: This will fire at all stages if a table cell contains two full stops right next to each other \(..\). If it is clearly a typo, the extra full stop should be removed. If it is not clear, then this warning can be ignored.

#### extra-space-presence

**Warning**: _'XXXXXXX' element contains two or more spaces right next to each other - it is very likely that only 1 space is necessary - XXXXXX._

**Action**: This will fire at all stages if a table cell contains two or more spaces right next to each other. It is very likely that the extra space should be removed.

#### operating-system-command-presence

**Error**: _'XXXXXXX' element contains a operating system command character '' which should very likely be replaced/removed. - XXXXXX._

**Action**: This will fire at all stages if a table cell contains a specific character, the operating system command character \(unicode `&#x9d;`\). If this fires, the character _must_ be removed, because otherwise the article will fail PMC ingestion.

#### table-xref-conformity-1

**Warning**: _'XXXXXXX' - citation points to table, but does not include the string 'Table', which is very unusual._

**Action**: This will fire at all stages if a main text table citation does not contain the word 'Table'. In cases where this fires for text like 'See **Tables 1** and **2**', the test will fire for the **2** and can be ignored. If this fires for any other reason it likely indicated that the citation directs to the incorrect location.

#### table-xref-conformity-2

**Warning**: _'XXXXXXX' - citation points to an Appendix table, but does not include the string 'table', which is very unusual._

**Action**: This will fire at all stages if an Appendix text table citation does not contain the word 'table'. In cases where this fires for text like 'See **Appendix 1–tables 1** and **2**', the test will fire for the **2** and can be ignored. If this fires for any other reason it likely indicated that the citation directs to the incorrect location.

#### table-xref-conformity-3

**Warning**: _'XXXXXXX' - Citation content does not match what it directs to._

**Action**: This will fire at all stages if the text in a main text table citation does not contain the number of the label that the table directs to. For example if **Table 2**, links to Table 3. 

#### table-xref-conformity-4

**Warning**: _'XXXXXXX' - Citation content does not match what it directs to._

**Action**: This will fire at all stages if the text in an appendix table citation does not contain the number of the label that the table directs to. For example if **Appendix 1–table 1**, links to Appendix 1–table 2. 

#### table-xref-test-1

**Warning**: _'XXXXXXX' - Citation is in the caption of the Table that it links to. Is it correct or necessary?_

**Action**: This will fire at all stages if a table citation is in the caption of the table that it links to. This would indicate either an unnecessary link, or that the citation is incorrect and needs to be updated. This should be queries with the authors:

* XXXXX - Please confirm whether this citation is correct and if not, what it should be updated to.

#### table-xref-test-2

**Warning**: _citation is preceded by a letter or number immediately followed by '\('. Is there a space missing before the '\('?  - 'XXXXX'._

**Action**: This will fire at all stages for text such as 'found at the end\(**Table 1**\).'. In this case, the missing space needs to be added between 'end' and '\(**Table 1**\)'.

#### table-xref-test-3

**Warning**: _citation is followed by a '\)' which in turns is immediately followed by a letter or number. Is there a space missing after the '\)'?  -  'XXXXX'._

**Action**: This will fire at all stages for text such as ' end \(**Table 1**\)and in **Figure 1**'. In this case, the missing space needs to be added between '\(**Table 1**\)' and 'and'.

#### table-xref-test-4

**Warning**: _'Incomplete citation. Table citation is followed by text which suggests it should instead be a link to source data or code - 'XXXXXX'._

**Action**: This will fire at all stages for pieces of text like - 'See **Table 1**–Source data 1', where only Table 1 is linked. In these cases, the citation should be updated to link to the source data file \(provided there is one\).

#### table-xref-test-5

**Warning**: _citation is preceded by 'XXXXXX'. The 'cf.' is unnecessary and should be removed._

**Action**: This will fire at all stages if a table citation is preceded by the text 'cf.'. Shorthand for confer is unnecessary and, as the message text suggests, the 'cf.' should be removed.

#### table-data-test-2

**Warning**: _XXXXXX ends with X, but it is placed XXX. Either it is misnumbered or it should be moved to a different position._

**Example:** _'Table 2—source data 2.' ends with 2, but it is placed 1st. Either it is misnumbered or it should be moved to a different position._

**Action**: This will fire at all stages if source data for a table is not placed in the correct sequence based upon its label, for example Table 2—source data 2 is placed before Table 2—source data 1. If this fires, the action should be to re-order the source data files based on their labels.

#### table-code-test-2

**Warning**: _XXXXXX ends with X, but it is placed XXX. Either it is misnumbered or it should be moved to a different position._

**Example:** _'Table 2—source code 2.' ends with 2, but it is placed 1st. Either it is misnumbered or it should be moved to a different position._

**Action**: This will fire at all stages if source code for a table is not placed in the correct sequence based upon its label, for example Table 2—source code 2 is placed before Table 2—source code 1. If this fires, the action should be to re-order the source data files based on their labels.

### **XML structure warnings**

#### app-table-wrap-id-test-1

**Error**: _table-wrap @id in appendix must be in the format 'app0table0'. XXXXXX does not conform to this._

**Action**: This will fire when the value if the `id` attribute for a table \(with a label\) in the appendix is not in the format `app0table0`. If this fires, it either means that the Table is in the incorrect appendix, or the id needs to be corrected.

#### app-table-wrap-id-test-2

**Error**: _table-wrap @id must start with XXXXXX._

**Action**: This will fire when the value if the `id` attribute for a table \(with a label\) in the appendix does not start with `app` and the appendix number. For example, the ids for any tables in Appendix 1 should start with `app1`. If this fires, it either means that the Table is in the incorrect appendix, or the id needs to be corrected.

#### resp-table-wrap-id-test

**Warning**: _table-wrap @id in author reply must be in the format 'resptable0' or 'sa0table0' if it has a label, or in the format 'respinlinetable0' or 'sa0inlinetable0' if it does not._

**Action**: This will fire when the value if the `id` attribute for a table in the decision letter or author response is not in any of the below formats:

With a label:

* resptable0
* sa0table0

Without a label:

* respinlinetable0
* sa0inlinetable0

Exeter will need to correct this issue if it fires.

#### table-wrap-id-test

**Error**: _table-wrap @id must be in the format 'table0', unless it doesn't have a label, in which case it must be 'inlinetable0' or it is the key resource table which must be 'keyresource'._

**Action**: This will fire when the value if the `id` attribute for a table in the body of an article \(i.e. not in appendices or decision letters or author responses\) is incorrect. If it is a Key resources table, the id must be `keyresource`_._ If the table has a label, it must be in the format `table0`. It it does not have a label, it needs to be in the format `inlinetable0`.

#### table-wrap-test-1

**Error**: _table-wrap must have one table._

**Action**: This will fire if a &lt;table-wrap&gt; element does not have a child &lt;table&gt; element. If this fires, it has been typeset incorrectly and steps should be taken to correct it.

#### table-wrap-test-2

**Warning**: _table-wrap has more than one table - Is this correct?_

**Action**: This will fire if a &lt;table-wrap&gt; element more than one a child &lt;table&gt; element. If the table has two or more sections in it with differing numbers of columns, but it has the same label \(and title\), then this warning can be ignored. If it does not, the table should be collated so that there is only one table element.

#### table-test-1

**Error**: _table must have at least one body \(tbody\)._

**Action**: This will fire if a &lt;table&gt; element does not have a child &lt;tbody&gt; element. This means that something has gone wrong with the typesetting and the table will need to be corrected.

#### td-child-test

**Error**: _td cannot contain XXXXXX. Only the following elements are allowed - 'bold', 'italic', 'sup', 'sub', 'sc', 'ext-link', 'xref', 'break', 'named-content', 'monospace', 'code','inline-graphic','underline', and 'inline-formula'._

**Action**: The list of allowed elements correspond to the following types of content respectively - bold, italics, superscript, subscript, small caps, citations, hyperlinks, line breaks, colour formatting, monospace, code, inline images, underline, and inline formulae. This will fire if a table data cell contains any other type of content, and will likely need to be corrected by Exeter.

#### th-child-test

**Error**: _th cannot contain XXXXXX. Only the following elements are allowed - 'bold', 'italic', 'sup', 'sub', 'sc', 'ext-link', 'xref', 'break', 'named-content', 'monospace',  'code', 'inline-graphic', and 'inline-formula'._

**Action**: The list of allowed elements correspond to the following types of content respectively - bold, italics, superscript, subscript, small caps, citations, hyperlinks, line breaks, colour formatting, monospace, code, inline images, and inline formulae. \(Note that while underline is allowed in table data cells, it is not allowed in header cells.\) This will fire if a table header cell contains any other type of content, and will likely need to be corrected by Exeter.

#### th-child-test-2

**Warning**: _th contains bold. Is this correct?_

**Action**: If this fires in live content, then the bold formatting should be removed. Header formatting is always in bold so the bold formatting is superfluous. The only reason this can be ignored is if this fires in an article which is being published as a new version.

## XML structure

Each Table is wrapped in a `<table-wrap>` element.

The table itself is captured in a `<table>` element. A `<table-wrap>` can contain numerous `<table>` elements, so a table with one label, can in fact be made up of numerous tables. More than one `<table>` in a `<table-wrap>` should be avoided where possible. The only case it should be used is where a single table has multiple sections each with different numbers of columns, or where the authors have explicitly labelled a table with multiple parts, e.g. Table 1a, table 1b etc.

Each table header is captured in a `<thead>` element, as a child of `<table>`.

The body of a table is wrapped in a `<tbody>` element.

Table footers should be captured using the `<table-wrap-foot>` element, which is captured as a child of `<table-wrap>`.

Each table row is captured in a `<tr>` element, which can contain either table data cells \(`<td>`\) or table header cells \(`<th>`\).

An empty `<break/>` element should be used to break text between two lines in a table cell.

### Example of [a simple table](https://elifesciences.org/articles/56451#table1):

```markup
<table-wrap id="table1" position="float">
    <label>Table 1.</label>
    <caption>
        <title>Kinetics of the transitions between IF and OF conformations</title>
    </caption>
    <table frame="hsides" rules="groups">
        <thead>
            <tr>
                <th valign="top">Condition</th>
                <th valign="top"><italic>t</italic><sub>IF</sub> (s)</th>
                <th valign="top"><italic>t</italic><sub>OF</sub> (s)</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td valign="top">WT, 5 mM ATP</td>
                <td valign="top">16.1 ± 2.2</td>
                <td valign="top">28.8 ± 4.8</td>
            </tr>
            <tr>
                <td valign="top">WT, 5 mM ATP + 10 µM LTC<sub>4</sub></td>
                <td valign="top">4.7 ± 0.8</td>
                <td valign="top">30.8 ± 5.2</td>
            </tr>
            <tr>
                <td valign="top">E1454Q, 5 mM ATP + 10 µM LTC<sub>4</sub></td>
                <td valign="top">7.7 ± 1.5</td>
                <td valign="top">31.7 ± 5.5</td>
            </tr>
        </tbody>
    </table>
    <table-wrap-foot>
        <fn>
            <p>Shown are the average lifetimes (mean ± SEM) of the composite IF state and the OF
                state for WT and E1454Q MRP1 with indicated ATP and substrate concentrations. The
                effect of dye photobleaching on the apparent IF/OF lifetime has been corrected
                for.</p>
        </fn>
    </table-wrap-foot>
</table-wrap>
```

### Example of a [table with multiple `<table>` elements](https://elifesciences.org/articles/49679#table1):

```markup
<table-wrap id="table1" position="float">
    <label>Table 1.</label>
    <caption>
        <title>Genes up- and down-regulated in injured trigeminal neurons.</title>
        <p>Genes that are affected by IOT were identified by comparing expression in the two injured
            neuron classes relative to other classes. (a) Selected up-regulated genes, their
            proposed functional role and previous assignment as injury-related transcripts (<xref
                ref-type="bibr" rid="bib7">Cobos et al., 2018</xref>; <xref ref-type="bibr"
                rid="bib13">Guan et al., 2016</xref>; <xref ref-type="bibr" rid="bib25">Shin et al.,
                2019</xref>; <xref ref-type="bibr" rid="bib32">Wlaschin et al., 2018</xref>) and/or
            as genes involved in neural regeneration (<xref ref-type="bibr" rid="bib21">Mahar and
                Cavalli, 2018</xref>). (b) Selected down-regulated genes, their functional
            classification and previous assignment as injury-related transcripts (<xref
                ref-type="bibr" rid="bib25">Shin et al., 2019</xref>). See <xref
                ref-type="supplementary-material" rid="supp2">Supplementary file 2</xref>; <xref
                ref-type="supplementary-material" rid="supp3">Supplementary file 3</xref>; <xref
                ref-type="supplementary-material" rid="supp4">Supplementary file 4</xref> for more
            information about genes expression changes in injured neurons including magnitude of
            changes and probability that expression is altered and <xref ref-type="fig" rid="fig2s3"
                >Figure 2—figure supplement 3</xref> for GO-analysis.</p>
    </caption>
    <table frame="hsides" rules="groups">
        <thead>
            <tr>
                <th colspan="3" valign="top">Table 1a</th>
            </tr>
            <tr>
                <th valign="top">Gene</th>
                <th valign="top">Reported functional roles</th>
                <th valign="top">Reported previously<sup>1, 2</sup></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td valign="top">
                    <italic>Atf3</italic>
                </td>
                <td valign="top">Transcriptional regulation: (up and downregulation) ATF/CREB family
                    of transcription factors</td>
                <td valign="top">a, b, c, D</td>
            </tr>
            <tr>
                <td valign="top">
                    <italic>Sema6a</italic>
                </td>
                <td valign="top">Semaphorin: receptor for Plxna2 role in cell-cell signaling and
                    appropriate neural projection</td>
                <td valign="top">a, b, c</td>
            </tr>
            <tr>
                <td valign="top">
                    <italic>Sox11</italic>
                </td>
                <td valign="top">Transcription factor: regulates survival and axonal growth in
                    embryonic sensory neurons</td>
                <td valign="top">a, b, D</td>
            </tr>
            <tr>
                <td valign="top">
                    <italic>Gal</italic>
                </td>
                <td valign="top">Neuropeptide: modulation and inhibition of action potentials</td>
                <td valign="top">a, b, c</td>
            </tr>
            <tr>
                <td valign="top">
                    <italic>Npy</italic>
                </td>
                <td valign="top">Neuropeptide: neuropeptide with multiple roles including reducing
                    pain perception</td>
                <td valign="top">a, b, c</td>
            </tr>
            <tr>
                <td valign="top">
                    <italic>Nts</italic>
                </td>
                <td valign="top">Neuropeptide: multiple roles in neurotransmission/modulation</td>
                <td valign="top">a, b, c</td>
            </tr>
            <tr>
                <td valign="top">
                    <italic>Mmp16</italic>
                </td>
                <td valign="top">Metallopeptidase: extracellular matrix degradation</td>
                <td valign="top">a, b, c</td>
            </tr>
            <tr>
                <td valign="top">
                    <italic>Itgb6</italic>
                </td>
                <td valign="top">Integrin subunit: cell-cell interactions</td>
                <td valign="top"/>
            </tr>
            <tr>
                <td valign="top">
                    <italic>Itga7</italic>
                </td>
                <td valign="top">Integrin subunit: cell-cell interactions</td>
                <td valign="top">a, c</td>
            </tr>
            <tr>
                <td valign="top">
                    <italic>Myo10</italic>
                </td>
                <td valign="top">Headless myosin: roles in development and cell migration</td>
                <td valign="top">a, c</td>
            </tr>
            <tr>
                <td valign="top">
                    <italic>Gfra1</italic>
                </td>
                <td valign="top">Receptor for GDNF: promotes neural survival and differentiation of
                    neurons</td>
                <td valign="top">a</td>
            </tr>
            <tr>
                <td valign="top">
                    <italic>Lmo7</italic>
                </td>
                <td valign="top">Signaling: negative feedback regulator of transforming growth
                    factor</td>
                <td valign="top">a, b</td>
            </tr>
            <tr>
                <td valign="top">
                    <italic>Pou2f1</italic>
                </td>
                <td valign="top">Transcription factor: prominent in development</td>
                <td valign="top">a, c</td>
            </tr>
        </tbody>
    </table>
    <table frame="hsides" rules="groups">
        <thead>
            <tr>
                <th colspan="3" valign="top">Table 1b</th>
            </tr>
            <tr>
                <th valign="top">Gene</th>
                <th valign="top">Reported functional roles</th>
                <th valign="top">Reported previously<sup>3</sup></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td valign="top">
                    <italic>Grik1</italic>
                </td>
                <td valign="top">Ligand-gated ion channel subunit: kainate receptor type 1</td>
                <td valign="top">a</td>
            </tr>
            <tr>
                <td valign="top">
                    <italic>Prkca</italic>
                </td>
                <td valign="top">Signal transduction: protein kinase c alpha</td>
                <td valign="top"/>
            </tr>
            <tr>
                <td valign="top">
                    <italic>Trpc3</italic>
                </td>
                <td valign="top">Ion channel: Trpc3 linked to mechanosensory transduction</td>
                <td valign="top"/>
            </tr>
            <tr>
                <td valign="top">
                    <italic>Scn10a</italic>
                </td>
                <td valign="top">Sodium ion channel subunit: Nav1.8 linked to pain sensation in
                    humans and mice</td>
                <td valign="top">a</td>
            </tr>
            <tr>
                <td valign="top">
                    <italic>Scn9a</italic>
                </td>
                <td valign="top">Sodium ion channel subunit: Nav1.7 linked to pain sensation in
                    humans and mice</td>
                <td valign="top"/>
            </tr>
            <tr>
                <td valign="top">
                    <italic>Scn1a</italic>
                </td>
                <td valign="top">Sodium ion channel subunit: Nav1.1 linked to pain sensation in
                    humans and mice</td>
                <td valign="top">a</td>
            </tr>
            <tr>
                <td valign="top">
                    <italic>Calca</italic>
                </td>
                <td valign="top">Neuropeptide: CGRP, role in neuroinflammation and pain</td>
                <td valign="top"/>
            </tr>
            <tr>
                <td valign="top">
                    <italic>Tac1</italic>
                </td>
                <td valign="top">Neuropeptide: substance P, acts as a neurotransmitter/modulator,
                    role in pain</td>
                <td valign="top">a</td>
            </tr>
            <tr>
                <td valign="top">
                    <italic>Kcnb2</italic>
                </td>
                <td valign="top">Potassium channel subunit</td>
                <td valign="top">a</td>
            </tr>
            <tr>
                <td valign="top">
                    <italic>Cacnb4</italic>
                </td>
                <td valign="top">Calcium channel subunit</td>
                <td valign="top"/>
            </tr>
            <tr>
                <td valign="top">
                    <italic>Trpm3</italic>
                </td>
                <td valign="top">Ion channel: Trpm3 linked to pain signaling in mice</td>
                <td valign="top"/>
            </tr>
            <tr>
                <td valign="top">
                    <italic>Oprm1</italic>
                </td>
                <td valign="top">G protein coupled receptor: mu-opioid receptor</td>
                <td valign="top"/>
            </tr>
            <tr>
                <td valign="top">
                    <italic>Snap25</italic>
                </td>
                <td valign="top">Synaptosome associated protein: role in neurotransmitter
                    release</td>
                <td valign="top">a</td>
            </tr>
        </tbody>
    </table>
    <table-wrap-foot>
        <fn>
            <p><sup>1</sup>Upregulated after SNI (a) <xref ref-type="bibr" rid="bib25">Shin et al.
                    (2019)</xref>, (b) <xref ref-type="bibr" rid="bib32">Wlaschin et al.
                    (2018)</xref>, (c) <xref ref-type="bibr" rid="bib7">Cobos et al.
                (2018)</xref>.</p>
            <p><sup>2</sup>Role in neural regeneration (D) <xref ref-type="bibr" rid="bib21">Mahar
                    and Cavalli (2018)</xref>.</p>
        </fn>
        <fn>
            <p><sup>3</sup>Downregulated after SNI (a) <xref ref-type="bibr" rid="bib25">Shin et al.
                    (2019)</xref>.</p>
        </fn>
    </table-wrap-foot>
</table-wrap>
```

### Example of an ['inline' table containing inline images and inline formula](https://elifesciences.org/articles/45413#s8-6):

```markup
<table-wrap id="inlinetable7" position="anchor">
    <table frame="hsides" rules="groups">
        <thead>
            <tr>
                <th valign="top">#</th>
                <th valign="top">Name</th>
                <th valign="top">Units</th>
                <th valign="top">Description</th>
                <th valign="top">Mathematical formula</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td valign="top">1</td>
                <td valign="top">Interface Contour <break/><inline-graphic mime-subtype="tiff"
                        mimetype="image" xlink:href="elife-45413-inf1-v2.tif"/></td>
                <td valign="top">[pixels]</td>
                <td valign="top">Distance between two corners of the defined cell edge</td>
                <td valign="top"><break/><inline-formula><mml:math id="inf1"><mml:mstyle
                                displaystyle="true" scriptlevel="0"
                                            ><mml:mrow><mml:msub><mml:mi>L</mml:mi><mml:mrow><mml:mi>E</mml:mi></mml:mrow></mml:msub><mml:mo>=</mml:mo><mml:munderover><mml:mo
                                            movablelimits="false"
                                                >∑</mml:mo><mml:mrow><mml:mi>i</mml:mi><mml:mo>=</mml:mo><mml:mn>1</mml:mn></mml:mrow><mml:mrow><mml:mi>n</mml:mi></mml:mrow></mml:munderover><mml:mrow><mml:msqrt><mml:mo
                                                stretchy="false"
                                                  >(</mml:mo><mml:msub><mml:mi>x</mml:mi><mml:mrow><mml:mi>i</mml:mi></mml:mrow></mml:msub><mml:mo>−</mml:mo><mml:msub><mml:mi>x</mml:mi><mml:mrow><mml:mi>i</mml:mi><mml:mo>+</mml:mo><mml:mn>1</mml:mn></mml:mrow></mml:msub><mml:msup><mml:mo
                                                  stretchy="false"
                                                  >)</mml:mo><mml:mrow><mml:mn>2</mml:mn></mml:mrow></mml:msup><mml:mo>+</mml:mo><mml:mo
                                                stretchy="false"
                                                  >(</mml:mo><mml:msub><mml:mi>y</mml:mi><mml:mrow><mml:mi>i</mml:mi></mml:mrow></mml:msub><mml:mo>−</mml:mo><mml:msub><mml:mi>y</mml:mi><mml:mrow><mml:mi>i</mml:mi><mml:mo>+</mml:mo><mml:mn>1</mml:mn></mml:mrow></mml:msub><mml:msup><mml:mo
                                                  stretchy="false"
                                                  >)</mml:mo><mml:mrow><mml:mn>2</mml:mn></mml:mrow></mml:msup></mml:msqrt></mml:mrow></mml:mrow></mml:mstyle></mml:math></inline-formula>
                    <break/>Where L<sub>E</sub> is the interface contour length,
                        <break/>p(x<sub>i</sub>,y<sub>i</sub>) is an edge pixel from an ordered list
                    of edge pixels with cornerpixel1(x<sub>1</sub>,y<sub>1</sub>) and
                        cornerpixel2(x<sub>n+1</sub>,y<sub>n+1</sub>)</td>
            </tr>
            <tr>
                <td valign="top">2</td>
                <td valign="top">Straight-line Interface Length <break/><inline-graphic
                        mime-subtype="tiff" mimetype="image" xlink:href="elife-45413-inf2-v2.tif"
                    /></td>
                <td valign="top">[pixels]</td>
                <td valign="top">Straight line distance between two corner points</td>
                <td valign="top"><break/><inline-formula><mml:math id="inf2"><mml:mstyle
                                displaystyle="true" scriptlevel="0"
                                            ><mml:mrow><mml:msub><mml:mi>L</mml:mi><mml:mrow><mml:mi>S</mml:mi></mml:mrow></mml:msub><mml:mo>=</mml:mo><mml:msqrt><mml:mo
                                            stretchy="false"
                                                  >(</mml:mo><mml:msub><mml:mi>x</mml:mi><mml:mrow><mml:mn>1</mml:mn></mml:mrow></mml:msub><mml:mo>−</mml:mo><mml:msub><mml:mi>x</mml:mi><mml:mrow><mml:mn>2</mml:mn></mml:mrow></mml:msub><mml:msup><mml:mo
                                                stretchy="false"
                                                  >)</mml:mo><mml:mrow><mml:mn>2</mml:mn></mml:mrow></mml:msup><mml:mo>+</mml:mo><mml:mo
                                            stretchy="false"
                                                  >(</mml:mo><mml:msub><mml:mi>y</mml:mi><mml:mrow><mml:mn>1</mml:mn></mml:mrow></mml:msub><mml:mo>−</mml:mo><mml:msub><mml:mi>y</mml:mi><mml:mrow><mml:mn>2</mml:mn></mml:mrow></mml:msub><mml:msup><mml:mo
                                                stretchy="false"
                                                  >)</mml:mo><mml:mrow><mml:mn>2</mml:mn></mml:mrow></mml:msup></mml:msqrt></mml:mrow></mml:mstyle></mml:math></inline-formula>
                    <break/>L<sub>s</sub> is the straight-line interface length where
                        p(x<sub>1</sub>,y<sub>1</sub>) is the first corner pixel on the cell edge
                        p(x<sub>2</sub>,y<sub>2</sub>) is the last corner pixel on the cell
                    edge</td>
            </tr>
            <tr>
                <td valign="top">3</td>
                <td valign="top">Fragmented Junction Contour <break/><inline-graphic
                        mime-subtype="tiff" mimetype="image" xlink:href="elife-45413-inf3-v2.tif"
                    /></td>
                <td valign="top">[pixels]</td>
                <td valign="top">Sum of stained fragments along the single pixel edge</td>
                <td valign="top"><break/><inline-formula><mml:math id="inf3"><mml:mstyle
                                displaystyle="true" scriptlevel="0"
                                            ><mml:mrow><mml:msub><mml:mi>L</mml:mi><mml:mrow><mml:mi>F</mml:mi></mml:mrow></mml:msub><mml:mo>=</mml:mo><mml:munderover><mml:mo
                                            movablelimits="false"
                                                >∑</mml:mo><mml:mrow><mml:mi>j</mml:mi><mml:mo>=</mml:mo><mml:mn>1</mml:mn></mml:mrow><mml:mrow><mml:mi>n</mml:mi></mml:mrow></mml:munderover><mml:mrow><mml:msqrt><mml:mo
                                                stretchy="false"
                                                  >(</mml:mo><mml:msub><mml:mi>x</mml:mi><mml:mrow><mml:mi>j</mml:mi></mml:mrow></mml:msub><mml:mo>−</mml:mo><mml:msub><mml:mi>x</mml:mi><mml:mrow><mml:mi>j</mml:mi><mml:mo>+</mml:mo><mml:mn>1</mml:mn></mml:mrow></mml:msub><mml:msup><mml:mo
                                                  stretchy="false"
                                                  >)</mml:mo><mml:mrow><mml:mn>2</mml:mn></mml:mrow></mml:msup><mml:mo>+</mml:mo><mml:mo
                                                stretchy="false"
                                                  >(</mml:mo><mml:msub><mml:mi>y</mml:mi><mml:mrow><mml:mi>j</mml:mi></mml:mrow></mml:msub><mml:mo>−</mml:mo><mml:msub><mml:mi>y</mml:mi><mml:mrow><mml:mi>j</mml:mi><mml:mo>+</mml:mo><mml:mn>1</mml:mn></mml:mrow></mml:msub><mml:msup><mml:mo
                                                  stretchy="false"
                                                  >)</mml:mo><mml:mrow><mml:mn>2</mml:mn></mml:mrow></mml:msup></mml:msqrt></mml:mrow></mml:mrow></mml:mstyle></mml:math></inline-formula>
                    <break/>Where L<sub>F</sub> is the fragmented junction contour length as the sum
                    of the contour length of each junction fragment, p(x<sub>j</sub>,y<sub>j</sub>)
                    is an edge pixel from an ordered list of edge pixels with
                        p(x<sub>1</sub>,y<sub>1</sub>) being the first pixel on the cell edge
                    fulfilling I(p(x<sub>j</sub>,y<sub>j</sub>)) &gt; Θ<sub>I</sub> AND
                        p(x<sub>n+1</sub>,y<sub>n+1</sub>) being the last pixel on the cell edge
                    fulfilling I(p(x<sub>j</sub>,y<sub>j</sub>)) &gt; Θ<sub>I</sub>, where
                        <break/>Θ<sub>I</sub> is the a priori defined intensity threshold, and
                        <break/>I(p(x<sub>j</sub>,y<sub>j</sub>)) being the intensity of a given
                    pixel <break/>Fragments must be at least two pixels</td>
            </tr>
            <tr>
                <td valign="top">4</td>
                <td valign="top">Dilation Cycles</td>
                <td valign="top">[unitless]</td>
                <td valign="top">Number of cycles used to dilate the defined edge</td>
                <td valign="top">Number of times the binary image dilate algorithm is used to expand
                    the defined edge. Essentially one dilation cycle changes a line of pixel width
                    one to a line of pixel width 3. Two dilation cycles make the line five
                    pixels-wide, etc.</td>
            </tr>
            <tr>
                <td valign="top">5</td>
                <td valign="top">Interface Area <break/><inline-graphic mime-subtype="tiff"
                        mimetype="image" xlink:href="elife-45413-inf4-v2.tif"/></td>
                <td valign="top">[pixels<sup>2</sup>]</td>
                <td valign="top">Area in pixels of the dilated edge area between two corners</td>
                <td valign="top"><inline-formula><mml:math id="inf4"><mml:mstyle displaystyle="true"
                                scriptlevel="0"
                                                ><mml:mrow><mml:msub><mml:mi>A</mml:mi><mml:mrow><mml:mi>E</mml:mi></mml:mrow></mml:msub><mml:mo>=</mml:mo><mml:munderover><mml:mo
                                            movablelimits="false"
                                                >∑</mml:mo><mml:mrow><mml:mi>i</mml:mi><mml:mo>=</mml:mo><mml:mn>1</mml:mn></mml:mrow><mml:mrow><mml:mi>o</mml:mi></mml:mrow></mml:munderover><mml:mrow><mml:mo
                                            stretchy="false"
                                                  >(</mml:mo><mml:msub><mml:mi>A</mml:mi><mml:mrow><mml:mi>p</mml:mi></mml:mrow></mml:msub><mml:msub><mml:mo
                                                stretchy="false"
                                                  >)</mml:mo><mml:mrow><mml:mi>l</mml:mi></mml:mrow></mml:msub></mml:mrow></mml:mrow></mml:mstyle></mml:math></inline-formula>
                    <break/>Where A<sub>E</sub> is the interface area as the sum of pixel area
                        A<sub>p</sub> of all pixels in the dilated edge area and where
                        <break/>A<sub>p</sub> is the pixel area with
                        A<sub>p</sub> = 1px*1px = 1px<sup>2</sup> and <break/>o is the number of
                    pixels in the interface area</td>
            </tr>
            <tr>
                <td valign="top">6</td>
                <td valign="top">Junction marker 1 Area <break/><inline-graphic mime-subtype="tiff"
                        mimetype="image" xlink:href="elife-45413-inf5-v2.tif"/></td>
                <td valign="top">[pixels<sup>2</sup>]</td>
                <td valign="top">Area covered by junction marker staining within the interface
                    area</td>
                <td valign="top"><inline-formula><mml:math id="inf5"><mml:mstyle displaystyle="true"
                                scriptlevel="0"
                                                ><mml:mrow><mml:msub><mml:mi>A</mml:mi><mml:mrow><mml:mi>F</mml:mi><mml:mi>T</mml:mi></mml:mrow></mml:msub><mml:mo>=</mml:mo><mml:munderover><mml:mo
                                            movablelimits="false"
                                                >∑</mml:mo><mml:mrow><mml:mi>k</mml:mi><mml:mo>=</mml:mo><mml:mn>1</mml:mn></mml:mrow><mml:mrow><mml:mi>m</mml:mi></mml:mrow></mml:munderover><mml:mrow><mml:mo
                                            stretchy="false"
                                                  >(</mml:mo><mml:msub><mml:mi>A</mml:mi><mml:mrow><mml:mi>p</mml:mi></mml:mrow></mml:msub><mml:msub><mml:mo
                                                stretchy="false"
                                                  >)</mml:mo><mml:mrow><mml:mi>k</mml:mi></mml:mrow></mml:msub></mml:mrow></mml:mrow></mml:mstyle></mml:math></inline-formula>
                    <break/>Where A<sub>FT</sub> is the junction marker area as the sum of pixel
                    area A<sub>P</sub> of all pixels fulfilling the conditions
                        <break/>p(x<sub>k</sub>,y<sub>k</sub>) Є A<sub>E</sub>, AND
                        <break/>I(p(x<sub>k</sub>,y<sub>k</sub>)) &gt; Θ<sub>I</sub> and where
                        <break/>A<sub>P</sub> is the pixel area with
                        A<sub>P</sub> = 1px*1px = 1px<sup>2</sup> and <break/>m is the number of
                    pixels in the fragmented interface area A<sub>FT</sub></td>
            </tr>
            <tr>
                <td valign="top">7</td>
                <td valign="top">Junction marker 1 Intensity <break/><inline-graphic
                        mime-subtype="tiff" mimetype="image" xlink:href="elife-45413-inf6-v2.tif"
                    /></td>
                <td valign="top">[A.U.]</td>
                <td valign="top">Sum of cadherin (junctional protein) Intensity within the interface
                    area.</td>
                <td valign="top">
                    <break/><break/><inline-formula><mml:math id="inf6"><mml:mstyle
                                displaystyle="true" scriptlevel="0"
                                            ><mml:mrow><mml:msub><mml:mi>I</mml:mi><mml:mrow><mml:mi>F</mml:mi><mml:mi>T</mml:mi></mml:mrow></mml:msub><mml:mo>=</mml:mo><mml:munderover><mml:mo
                                            movablelimits="false"
                                                >∑</mml:mo><mml:mrow><mml:mi>k</mml:mi><mml:mo>=</mml:mo><mml:mn>1</mml:mn></mml:mrow><mml:mrow><mml:mi>m</mml:mi></mml:mrow></mml:munderover><mml:mrow><mml:msub><mml:mi>I</mml:mi><mml:mrow><mml:mi>k</mml:mi></mml:mrow></mml:msub></mml:mrow></mml:mrow></mml:mstyle></mml:math></inline-formula>
                    <break/>Where, I<sub>FT</sub> is the junction marker intensity as the sum of
                    intensities I<sub>k</sub> of all pixels fulfilling the conditions <break/>1)
                        p(x<sub>k</sub>,y<sub>k</sub>) Є A<sub>E</sub>, AND <break/>2)
                        I(p(x<sub>k</sub>,y<sub>k</sub>)) &gt; Θ<sub>I</sub> with m being the number
                    of pixels in the fragmented interface area A<sub>FT</sub></td>
            </tr>
            <tr>
                <td valign="top">8</td>
                <td valign="top">Junction Contour <break/><inline-graphic mime-subtype="tiff"
                        mimetype="image" xlink:href="elife-45413-inf7-v2.tif"/></td>
                <td valign="top">[pixels]</td>
                <td valign="top">Sum of pixel distances between the first and last junction marker
                    pixels along the interface contour</td>
                <td valign="top"><break/><inline-formula><mml:math id="inf7"><mml:mstyle
                                displaystyle="true" scriptlevel="0"
                                            ><mml:mrow><mml:msub><mml:mi>L</mml:mi><mml:mrow><mml:mi>j</mml:mi></mml:mrow></mml:msub><mml:mo>=</mml:mo><mml:munderover><mml:mo
                                            movablelimits="false"
                                                >∑</mml:mo><mml:mrow><mml:mi>j</mml:mi><mml:mo>=</mml:mo><mml:mn>1</mml:mn></mml:mrow><mml:mrow><mml:mi>n</mml:mi></mml:mrow></mml:munderover><mml:mrow><mml:msqrt><mml:mo
                                                stretchy="false"
                                                  >(</mml:mo><mml:msub><mml:mi>x</mml:mi><mml:mrow><mml:mi>j</mml:mi></mml:mrow></mml:msub><mml:mo>−</mml:mo><mml:msub><mml:mi>x</mml:mi><mml:mrow><mml:mi>j</mml:mi><mml:mo>+</mml:mo><mml:mn>1</mml:mn></mml:mrow></mml:msub><mml:msup><mml:mo
                                                  stretchy="false"
                                                  >)</mml:mo><mml:mrow><mml:mn>2</mml:mn></mml:mrow></mml:msup><mml:mo>+</mml:mo><mml:mo
                                                stretchy="false"
                                                  >(</mml:mo><mml:msub><mml:mi>y</mml:mi><mml:mrow><mml:mi>j</mml:mi></mml:mrow></mml:msub><mml:mo>−</mml:mo><mml:msub><mml:mi>y</mml:mi><mml:mrow><mml:mi>j</mml:mi><mml:mo>+</mml:mo><mml:mn>1</mml:mn></mml:mrow></mml:msub><mml:msup><mml:mo
                                                  stretchy="false"
                                                  >)</mml:mo><mml:mrow><mml:mn>2</mml:mn></mml:mrow></mml:msup></mml:msqrt></mml:mrow></mml:mrow></mml:mstyle></mml:math></inline-formula>
                    <break/>Where L<sub>J</sub> is the junction contour length and
                        p(x<sub>j</sub>,y<sub>j</sub>) is an edge pixel from an ordered list of edge
                    pixels with p(x<sub>1</sub>,y<sub>1</sub>) being the first pixel on the cell
                    edge fulfilling I(p(x<sub>k</sub>,y<sub>k</sub>)) &gt; Θ<sub>I</sub> AND
                        p(x<sub>n+1</sub>,y<sub>n+1</sub>) being the last pixel on the cell edge
                    fulfilling I(p(x<sub>k</sub>,y<sub>k</sub>)) &gt; Θ<sub>I</sub></td>
            </tr>
            <tr>
                <td valign="top">9</td>
                <td valign="top">Straight-line Junction Length <break/><inline-graphic
                        mime-subtype="tiff" mimetype="image" xlink:href="elife-45413-inf8-v2.tif"
                    /></td>
                <td valign="top">[pixels]</td>
                <td valign="top">Euclidian distance from first to the last pixel of junction marker
                    one on the interface contour</td>
                <td valign="top"><inline-formula><mml:math id="inf8"><mml:mstyle displaystyle="true"
                                scriptlevel="0"
                                                ><mml:mrow><mml:msub><mml:mi>L</mml:mi><mml:mrow><mml:mi>J</mml:mi><mml:mi>S</mml:mi></mml:mrow></mml:msub><mml:mo>=</mml:mo><mml:msqrt><mml:mo
                                            stretchy="false"
                                                  >(</mml:mo><mml:msub><mml:mi>x</mml:mi><mml:mrow><mml:mn>1</mml:mn></mml:mrow></mml:msub><mml:mo>−</mml:mo><mml:msub><mml:mi>x</mml:mi><mml:mrow><mml:mn>2</mml:mn></mml:mrow></mml:msub><mml:msup><mml:mo
                                                stretchy="false"
                                                  >)</mml:mo><mml:mrow><mml:mn>2</mml:mn></mml:mrow></mml:msup><mml:mo>+</mml:mo><mml:mo
                                            stretchy="false"
                                                  >(</mml:mo><mml:msub><mml:mi>y</mml:mi><mml:mrow><mml:mn>1</mml:mn></mml:mrow></mml:msub><mml:mo>−</mml:mo><mml:msub><mml:mi>y</mml:mi><mml:mrow><mml:mn>2</mml:mn></mml:mrow></mml:msub><mml:msup><mml:mo
                                                stretchy="false"
                                                  >)</mml:mo><mml:mrow><mml:mn>2</mml:mn></mml:mrow></mml:msup></mml:msqrt></mml:mrow></mml:mstyle></mml:math></inline-formula>
                    <break/><break/>L<sub>JS</sub> is the straight-line junction length where
                        p(x<sub>1</sub>,y<sub>1</sub>) is the first pixel on the edge fulfilling
                        I(p(x<sub>1</sub>,y<sub>1</sub>)) &gt; Θ<sub>I</sub> and
                        p(x<sub>2</sub>,y<sub>2</sub>) is the last pixel on the edge fulfilling
                        I(p(x<sub>2</sub>,y<sub>2</sub>) &gt; Θ<sub>I</sub>
                    <break/>Θ<sub>I</sub> is the a priori defined intensity threshold, and
                        <break/>I(p(x<sub>j</sub>,y<sub>j</sub>)) being the intensity of a given
                    pixel</td>
            </tr>
        </tbody>
    </table>
</table-wrap>
```

