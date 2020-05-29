---
description: Tabulated content in an article
---

# Tables

## Where are tables allowed?

Tables can be placed in the body of an article, in appendices, in Decision Letters and in Author responses.

They display in both the HTML and in the PDF. 

## What can tables contain?

Tables can be with our without labels \(tables without labels are referred to as inline tables\). Those with labels outside of Decision Letters and Author responses _must_ have a title. They can also have a caption. 

The content of a table can be broken down into three sections:

* Table header
* Table body
* Table footer

Tables can also have source data and/or source code files.

### Permitted table labels

Tables should have an appropriate label based on their placement. The following label formats are permitted for tables in eLife content:

* Table 1
* Key resources table
* Appendix 1—table 1
* Box 1—table 1
* Author response table 1
* Decision letter table 1

### Table header

A table can technically only have one table header \(in the XML this is the `<thead>` element\). The header is the top row\(s\) of a table and serves as an indication of the content in the rows below it. If a table splits across multiple pages in the PDF, then this header is also displayed at the top of each subsequent page that is is split across \(this is important for tables that have multiple headers. More on this below\).

If a table has multiple headings throughout it, then, if necessary these can be tagged within the table body \(and depending on the table it may also be appropriate to remove the header; more on this [below](https://app.gitbook.com/@elifesciences/s/productionhowto/article-details/content/tables#tables-with-multiple-headers)\).

The text in table headers are rendered with bold formatting. On the eLife site, they are also given a grey shading:

![](../../.gitbook/assets/screen-shot-2020-05-29-at-15.08.59.png)

Every table header cell can contain the following content:

* Text \(with various different kinds of formatting - see [th-child-test](https://app.gitbook.com/@elifesciences/s/productionhowto/article-details/content/tables#th-child-test) below\)
* Hyperlinks
* Inline images

### Table body



### Table footers



## Tables with multiple headers

What actually determines the formatting of the cells is whether each cell is formatted as a heading cell or as a normal table cell \(in the XML these are `<th>` and `<td>` elements, respectively\). The table header and table body can contain either of these. It's very unusual, but possible, a header might need to contain normal, rather than header table cells. It is however relatively common for a table body to contains header cells. 

If a table has multiple headings throughout, then the cells in the table body should be captured as header cells \(`<th>`\). This has to be done by Exeter \(it currently cannot be done by eLife staff in Kriya\).

Typically an entire row should be captured as a header, although there are exceptions. See the action for [tr-test-3](https://app.gitbook.com/@elifesciences/s/productionhowto/article-details/content/tables#tr-test-3) for some examples.

If a table has multiple headers, spans numerous pages in the PDF, and each header is of equal importance \(or those in the body are more important than the top one\), then there should be **no** table header. This is because \(as stated in [the Table Header section](https://app.gitbook.com/@elifesciences/s/productionhowto/article-details/content/tables#table-header)\), the PDF will display the top heading at the top of each subsequent page, and this would be inappropriate.

## Key resources tables



## Table citations



## Schematron checks

The following tests are run on Tables.

### Content warnings

#### body-table-label-test-1

**Error**: _XXXXXX - Table label does not conform to the usual format._

**Action**: This will fire when a table \(outside of appendices\) has a label which is not in one of the following formats:

* Table 1.
* Key resources table.
* Author response table 1.

Please ensure that the table label is either in one of these formats or \(in the case where it _should not_ have a label\), the label is removed.

#### app-table-label-test-1

**Error**: _XXXXXX - Table label does not conform to the usual format._

**Action**: This will fire when a table in an appendix has a label which is not in the format 'Appendix 1—table 1.' 

Please ensure that there are no typos, missing or extra spaces, that the capitalisation is correct, and that the character between 'Appendix X' and 'table X' is an [em dash](https://www.fileformat.info/info/unicode/char/2014/index.htm).

#### app-table-label-test-2

**Error**: _XXXXXX - Table label does not begin with the title of the appendix it sits in. Either the table is in the incorrect appendix or the table has been labelled incorrectly._

**Action**: This will fire when a table in an appendix has a label which does not start with the title of the appendix that it sties in, for example 'Appendix 1—table 1.' in 'Appendix 2'.

Depending on the case, the table will either need to be moved into its appropriate appendix, or it will need to be re-labelled.

#### table-fn-label-test-1

**Warning**: _Footnote starts with label which is not in line with house style - XXXXXX. Footnote symbols should be in the order: \*, †, ‡, §, ¶, \*\*, ††, ‡‡, §§, ¶¶, etc._

**Action**: This will fire when a table in an appendix has a label which does not start with the title of the appendix that it sties in, for example 'Appendix 1—table 1.' in 'Appendix 2'.

Footnote indicators should be in the follow this sequence _,_ †, ‡, §, ¶, **, ††, ‡‡, §§, ¶¶,** , †††, ‡‡‡, §§§, ¶¶¶, \*\*, ††††, ‡‡‡‡, §§§§, ¶¶¶¶, etc. If this warning fires, it is because a footnote does not start with one of these indicators.

#### distinct-label-conformance

**Error**: _Duplicated labels - XXXXXX is present more than once in the text._

**Action**: This will fire when a Table label occurs twice in the same article. Table labels must be distinct. If this fires, action should be taken to ensure that this label is not used more than once.

#### pre-body-table-report

**Warning**: _XXXXXX_ _does not appear in sequence. Relative to the other numbered tables it is placed in position XX._

**Action**: This will fire when a table is placed out of sequence in the body of an article \(such as Table 1 being placed after Table 2\). If this warning fires, and there is no citation for that table, please add the following author query:

* Please provide an in-text citation for this table.

If there is an in-text citation, but the citations are out of sequence \(i.e. Table 1 being cited after Table 2\), then please add the following author query:

* This citation is out of sequence with the other table citations and has therefore been left unlinked \(table placement is determined by first live citation\). Please confirm this is acceptable.

#### final-body-table-report

**Error**: _XXXXXX_ _does not appear in sequence which is incorrect. Relative to the other numbered tables it is placed in position XX._

**Action**: This will fire when a table is placed out of sequence in the body of an article \(such as Table 1 being placed after Table 2\). If this error fires, Production will need to contact the authors in order to determine how they would like their tables to be labelled/presented.

#### pre-app-table-report

**Warning**: _XXXXXX_ _does not appear in sequence. Relative to the other numbered tables it is placed in position XX._

**Action**: This will fire when a table is placed out of sequence in an appendix \(such as Appendix 1—table 1 being placed after Appendix 1—table 2\). If this warning fires, and there is no citation for that table, please add the following author query:

* Please provide an in-text citation for this table.

If there is an in-text citation, but the citations are out of sequence \(i.e. Appendix 1—table 1 being cited after Appendix 1—table 2\), then please add the following author query:

* This citation is out of sequence with the other table citations and has therefore been left unlinked \(table placement is determined by first live citation\). Please confirm this is acceptable.

#### final-app-table-report

**Error**: _XXXXXX_ _does not appear in sequence which is incorrect. Relative to the other numbered tables it is placed in position XX._

**Action**: This will fire when a table is placed out of sequence in an appendix \(such as Appendix 1—table 1 being placed after Appendix 1—table 2\). If this error fires, Production will need to contact the authors in order to determine how they would like their tables to be labelled/presented.

#### text-v-object-cite-test

**Warning**: _XXXXXX has possible unlinked citations in the text._

**Action**: This will fire if a table's label text is found elsewhere in the article without citation formatting \(for example the text 'Table 1' is present in paragraph in the Introduction\). The following actions should be taken:

* If the table citation is deliberately left unlinked due to citations which are out of sequence, this warning can be ignored.
* If the table citation is obviously a reference to a table from another article or piece of work \(e.g. Table 1 from Smith et al., 2020\), then this can be ignored.
* If neither of the above two conditions is the case, then the text should be added as a citation instead.

#### missing-ref-in-text-test

**Warning**: _XXXXXX element contains possible citation which is unlinked or a missing reference - search - XXXXXXX._

**Action**: This will fire if a table cell contains a possible unlinked citation such as Smith et al., 2020. If there is no corresponding reference in the reference list, then the following author query should be added:

* This cited reference does not appear in the reference list. Please provide the full bibliographic details.

Otherwise the text should be captured as a proper citation.

#### xref-column-test

**Warning**: '_XXXXXX' citation is in a column in the Key Resources Table which usually does not include references. Is it correct?_

**Action**: This will fire if a citation is present in the 1st, 2nd or 4th column in a Key resources table. If it's clear, based on the content of the rest of the table, that the citation should be moved in the 3rd \(headed 'Source/reference'\) or 5th \(headed 'Additional information'\) column, then ensure that it is moved to one of these columns. If it is not clear, and the article is at a pre-author stage, then the following query should be added:

* Please confirm, is this citation in the correct column?

If the article is post-author, then the authors should be queried to check that this is correct \(if they haven't been already\).

#### doi-link-test

**Error**: td element containing - '_XXXXXX_' - looks like it contains a doi, but it contains no link with 'doi.org', which is incorrect.

**Action**: This will fire if a table cell in a Key resources table contains a doi. All dois should be linked in the KR table, so action should be taken to ensure that the doi text has an embedded link \(https://doi.org/{doi}\).

#### PMID-link-test

**Error**: td element containing - 'XXXXXX' - looks like it contains a PMID, but it contains no link pointing to PubMed, which is incorrect.

**Action**: This will fire if a table cell in a Key resources table contains a PMID. All PMIDs should be linked in the KR table, so action should be taken to ensure that the PMID text has an embedded link \(https://www.pubmed.ncbi.nlm.nih.gov/{PMID}\).

#### PMCID-link-test

**Error**: td element containing - 'XXXXXX' - looks like it contains a PMCID, but it contains no link pointing to PMC, which is incorrect.

**Action**: This will fire if a table cell in a Key resources table contains a PMCID. All PMCIDs should be linked in the KR table, so action should be taken to ensure that the PMCID text has an embedded link \(https://www.ncbi.nlm.nih.gov/pmc/{PMCID}\).

#### colour-check-table

**Warning**: XXXXXX element has colour background. Is this correct? It contains XXXXXX.

**Action**: This will fire if a table cell in a table has colour formatting \(a style attribute beginning with 'author-callout'\). eLife only allow the following colours in table cells -  blue, green orange, yellow, purple, red, pink and grey. When this fires an author query should be added to the table \(only 1 per table\):

* Where possible, we prefer that colours are not used in tables in the interests of accessibility. Would it be possible to capture the same meaning in this table with more common forms of emphasis \(such as bold, italic or underline\)? If so please stipulate below how the table should be revised. Please note that this is a suggestion and supported colours in tables can be published.

#### pre-colour-check-table-2

**Warning**: element containing 'XXXXXX' has an @style with an unallowed value - 'XXXXXX'. The only allowed values are 'author-callout-style-b1', 'author-callout-style-b2', 'author-callout-style-b3', 'author-callout-style-b4', 'author-callout-style-b5', 'author-callout-style-b6', 'author-callout-style-b7', 'author-callout-style-b8' for blue, green orange, yellow, purple, red, pink and grey respectively. Please ensure one of these is used. If it is clear that colours are supposed to be used, but you are not sure which ones, then please query the authors - 'eLife only supports the following colours for table cells - blue, green orange, yellow, purple, red, pink and grey. Please confirm how you would like the colour\(s\) here captured given this information.'.

**Action**: This will fire at a pre-author stage if a table cell in a table has a style attribute with an unallowed value. Usually this will be because the colour formatting is not a supported colour. If it _is_ one of the supported colours and this message fires this is a problem - it means that the content has not been typeset correctly.

In the case where it is a colour that is not supported \(brown for example\), then as the message suggests the following author query should be added:

* eLife only supports the following colours for table cells - blue, green orange, yellow, purple, red, pink and grey. Please confirm how you would like the colour\(s\) here captured given this information.

#### final-colour-check-table-2

**Error**: element containing 'XXXXXX' has an @style with an unallowed value - 'XXXXXX'. The only allowed values are 'author-callout-style-b1', 'author-callout-style-b2', 'author-callout-style-b3', 'author-callout-style-b4', 'author-callout-style-b5', 'author-callout-style-b6', 'author-callout-style-b7', 'author-callout-style-b8' for blue, green orange, yellow, purple, red, pink and grey respectively.

**Action**: This will fire at a post-author stage if a table cell in a table has a style attribute with an unallowed value. Usually this will be because the colour formatting is not a supported colour. If it _is_ one of the supported colours and this message fires this is a problem - it means that the content has not been typeset correctly. If it is not a supported colour, ensure to check the author's response to the query which should have been added pre-author. If the response isn't clear about how to proceed \(or the query was mistakenly not left\), then Production will need to contact the author to ask how they would like to proceed.

#### table-wrap-test-3

**Error**: table-wrap has an inline id XXXXX but it has a label - XXXXX, which is not correct.

**Example message**: table-wrap has an inline id inline-table1 but it has a label - Table 1., which is not correct.  

**Action**: This will fire if a table has the incorrect id. A table with a label must have an id in the format `table1`. Either the label needs removing or the table id needs correcting. The original manuscript should be checked to determine which action needs to be taken.

#### table-wrap-test-4

**Error**: table-wrap with id XXXXX has no label which is not correct.

**Action**: This is the inverse of table-wrap-test-3. It will fire if a table without a label has a label which in the format `table1`. Either the label needs adding or the table id needs correcting. The original manuscript should be checked to determine which action needs to be taken.

#### kr-table-wrap-test-1

**Error**: table-wrap has an id XXXXXX but its label is not 'Key resources table', which is incorrect.

**Action**: Key resources tables must have the label 'Key resources table', and an id `keyresource`. This will fire is a table has that id, but it does not have a label, or the label is not exactly as specified above. Action should be taken to ensure both of these conditions are met.

#### pre-table-wrap-cite-1

**Warning**: There is no citation to XXXXXX. Ensure to query the author asking for a citation.

**Action**: This will fire at pre-author stages for tables \(which are not Key resources tables\) with labels, in articles which are not corrections or retractions. If this fires \(and there are no issues with labelling or the table id\), then the following author query should be added:

* Please provide an in-text citation for this table.

The only exception to this is where the article contains an appendix and there is no appropriate place to cite the tables in the appendix \(for example if it is _only_ made up of tables\). In such cases, adding a query is not necessary.

#### final-table-wrap-cite-1

**Warning**: There is no citation to XXXXXX. Ensure this is added.

**Action**: This will fire at post-author stages for tables \(which are not Key resources tables\) with labels, in articles which are not corrections or retractions. If this fires \(and there are no issues with labelling or the table id\), and the authors have not indicated in response to a query where the citation should be, then eLife production should contact the authors to get an appropriate citation.

The only exception to this is where the article contains an appendix and there is no appropriate place to cite the tables in the appendix \(for example if it is _only_ made up of tables\).

#### feat-table-wrap-cite-1

**Warning**: There is no citation to XXXXXX. Is this correct?

**Action**: This will fire at all stages for tables \(which are not Key resources tables\) with labels, in feature content \(insights or feature articles\). 

If this fires at a **pre-author stage** \(and there are no issues with labelling or the table id\), then the following author query should be added:

* Please provide an in-text citation for this table.

If this fires at a **post-author stage**, this should be **ignored** by Exeter and eLife production should check with Features as to whether there should be a citation \(if it isn't already clear\).

#### kr-table-not-tagged

**Error**: XXXXXX has headings that are for the Key resources table, but it does not have an @id='keyresource'.

**Action**: This will at all stages fire if a table has all the KR table headings but does not have an  id `keyresource`. If this fires, ensure that the Table is captured as a Key resources table \(with the correct id, label and no title or caption\).

#### kr-table-not-tagged-2

**Warning**: XXXXXX has the title XXXXXX but it is not tagged as a key resources table. Is this correct?

**Action**: This will fire at all stages if a table has a title containing the text 'Key resource'. If it _is_ a key resources table, then this should be captured as a Key resources table \(with the correct id, label and no title or caption\). If it is not \(i.e. just a normal table, without the standard KR table headings, which happens to have the text 'Key resource' in it's title\), then this message can be ignored.

#### kr-table-header-1

**Warning**: Key resources tables should have 5 column headings \(th elements\) but this one has X. Either it is incorrectly typeset or the author will need to be queried in order to provide the table in the correct format.

**Action**: This will fire at all stages if a KR table does not have the correct number of headings. All KR tables should have 5 headings/columns. If the table is typeset correctly \(**please check this carefully**\), as the author provided it, then the following author query should be added:

* This Key resource table is not in the correct format. Please provide a revised table in the required format using this guide - [https://cdn.elifesciences.org/author-guide/key\_resources\_table.xlsx](https://cdn.elifesciences.org/author-guide/key_resources_table.xlsx). The table can be provided as an editable file \(such as word or excel\) in response to the proofing email. We regret that this was not brought to your attention earlier and apologise for the inconvenience.

#### kr-table-header-2

**Warning**: Key resources table has more than 1 row in its header, which is incorrect.

**Action**: This will fire at all stages if a KR table has more than one row in it's header. It is **very** likely that this means the table has been incorrectly typeset. If this is the case please correct. If this has been checked very carefully and the table is as the author provided it, then the following author query should be added:

* This Key resource table is not in the correct format. Please provide a revised table in the required format using this guide - [https://cdn.elifesciences.org/author-guide/key\_resources\_table.xlsx](https://cdn.elifesciences.org/author-guide/key_resources_table.xlsx). The table can be provided as an editable file \(such as word or excel\) in response to the proofing email. We regret that this was not brought to your attention earlier and apologise for the inconvenience.

#### kr-table-header-3

**Warning**: Key resources table has no rows in its header, which is incorrect.

**Action**: This will fire at all stages if a KR table has no rows in it's header. It is **very** likely that this means the table has been incorrectly typeset \(this will almost never occur\). 

#### kr-table-header-4

**Warning**: The first column header in a Key resources table is usually 'Reagent type \(species\) or resource' but this one has 'XXXXXX'.

**Action**: This will fire at all stages if the first header in a KR table is not 'Reagent type \(species\) or resource'. If it's clearly a typo, then this should be corrected. If the table is completely different to how it should be \(see above **LINK TO SECTION**\), then please add the following author query:

* This Key resource table is not in the correct format. Please provide a revised table in the required format using this guide - [https://cdn.elifesciences.org/author-guide/key\_resources\_table.xlsx](https://cdn.elifesciences.org/author-guide/key_resources_table.xlsx). The table can be provided as an editable file \(such as word or excel\) in response to the proofing email. We regret that this was not brought to your attention earlier and apologise for the inconvenience.

#### kr-table-header-5

**Warning**: The second column header in a Key resources table is usually 'Designation' but this one has 'XXXXXX'.

**Action**: This will fire at all stages if the second header in a KR table is not 'Designation'. If it's clearly a typo, then this should be corrected. If the table is completely different to how it should be \(see above **LINK TO SECTION**\), then please add the following author query:

* This Key resource table is not in the correct format. Please provide a revised table in the required format using this guide - [https://cdn.elifesciences.org/author-guide/key\_resources\_table.xlsx](https://cdn.elifesciences.org/author-guide/key_resources_table.xlsx). The table can be provided as an editable file \(such as word or excel\) in response to the proofing email. We regret that this was not brought to your attention earlier and apologise for the inconvenience.

#### kr-table-header-6

**Warning**: The third column header in a Key resources table is usually 'Source or reference' but this one has 'XXXXXX'.

**Action**: This will fire at all stages if the third header in a KR table is not 'Source or reference'. If it's clearly a typo, then this should be corrected. If the table is completely different to how it should be \(see above **LINK TO SECTION**\), then please add the following author query:

* This Key resource table is not in the correct format. Please provide a revised table in the required format using this guide - [https://cdn.elifesciences.org/author-guide/key\_resources\_table.xlsx](https://cdn.elifesciences.org/author-guide/key_resources_table.xlsx). The table can be provided as an editable file \(such as word or excel\) in response to the proofing email. We regret that this was not brought to your attention earlier and apologise for the inconvenience.

#### kr-table-header-7

**Warning**: The fourth column header in a Key resources table is usually 'Identifiers' but this one has 'XXXXXX'.

**Action**: This will fire at all stages if the fourth header in a KR table is not 'Identifiers'. If it's clearly a typo, then this should be corrected. If the table is completely different to how it should be \(see above **LINK TO SECTION**\), then please add the following author query:

* This Key resource table is not in the correct format. Please provide a revised table in the required format using this guide - [https://cdn.elifesciences.org/author-guide/key\_resources\_table.xlsx](https://cdn.elifesciences.org/author-guide/key_resources_table.xlsx). The table can be provided as an editable file \(such as word or excel\) in response to the proofing email. We regret that this was not brought to your attention earlier and apologise for the inconvenience.

#### kr-table-header-8

**Warning**: The fifth column header in a Key resources table is usually 'Additional information' but this one has 'XXXXXX'.

**Action**: This will fire at all stages if the fifth header in a KR table is not 'Additional information'. If it's clearly a typo, then this should be corrected. If the table is completely different to how it should be \(see above **LINK TO SECTION**\), then please add the following author query:

* This Key resource table is not in the correct format. Please provide a revised table in the required format using this guide - [https://cdn.elifesciences.org/author-guide/key\_resources\_table.xlsx](https://cdn.elifesciences.org/author-guide/key_resources_table.xlsx). The table can be provided as an editable file \(such as word or excel\) in response to the proofing email. We regret that this was not brought to your attention earlier and apologise for the inconvenience.

#### table-test-2

**Warning**: table doesn't have a header \(thead\). Is this correct?

**Action**: This will fire if a table does not have a header \(the &lt;table&gt; element does not have a child &lt;thead&gt; element\). This could either mean that the table has been incorrectly typeset without headers, or there could be a good reason that it does not have a header \(see **LINK TO SECTION ABOVE**\). If it is an error then this should be fixed by Exeter, otherwise the message can be ignored.

#### tbody-test-1

**Error**: tbody must have at least one row \(tr\).

**Action**: This will fire if the body of a table does not have a row. This is unlikely to occur and if it does, would indicate that the table has been typeset incorrectly, which will need to be fixed by Exeter.

#### thead-test-1

**Error**: thead must have at least one row \(tr\).

**Action**: This will fire if the header of a table does not have a row. This is unlikely to occur and if it does, would indicate that the table has been typeset incorrectly, which will need to be fixed by Exeter.

#### tr-test-1

**Error**: row \(tr\) must contain at least one heading cell \(th\) or data cell \(td\).

**Action**: This will fire if the a row does not have any table cells. This is unlikely to occur and if it does, would indicate that the table has been typeset incorrectly, which will need to be fixed by Exeter.

#### tr-test-2

**Warning**: table row in body contains a th element \(a header\), which is unusual. Please check that this is correct.

**Action**: This will fire for table cells which are styled as headers, but are in the table body. The table has numerous headers throughout it \(and is supposed to\), then this can be ignored. Otherwise Exeter will have to change this to a normal table cell.

#### tr-test-3

**Warning**: table row in body contains a td element \(table data\), which is unusual. Please check that this is correct.

**Action**: This will fire for table cells which are not styled as headers, but are in the header of the table. This is highly unusual, and would usually indicate that either the table should not have a header at all, or that the cell should be given heading formatting.

#### tr-test-3

**Warning**: Table header cell containing 'XXXXXX' has table data \(not header\) cells next to it on the same row. Is this correct? Should the whole row be header cells, or should this cell extend across the whole row?

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

**Warning**: 'XXXXXXX' citation is in a column in the Key Resources Table which usually does not include references. Is it correct?

**Action**: This will fire at all stages if a citation in a KR table is not in the third or fifth row \(the commonly used ones for citations\). If it is clear that this needs to moved to a different column or is a mistake \(for example a superscript number converted to a citation which should have been left as a number\), then it should be corrected. If not clear, and at a pre-author stage please add this author query:

* Please confirm whether this citation is in the correct column in the Key resources table.

#### rrid-test

**Warning**: 'XXXXXXX' element contains what looks like XX unlinked RRID\(s\). These should always be linked using 'https://scicrunch.org/resolver/'. Element begins with XXXXXXX.

**Action**: This will fire at all stages if a table cell or paragraph contains more instances of the text `RRID:` than there are links containing https://scicrunch.org/resolver/, meaning that there are unlinked RRIDs. All RRIDs should linked by adding the RRID to the end of https://scicrunch.org/resolver/. For example for the text `RRID:CVCL_0063`, `CVCL_0063` should have an embedded link - https://scicrunch.org/resolver/CVCL\_0063. If the author has not actually provided the RRID, i.e. the cell contains just `RRID:`, then the following author query should be added:

* Please provide the RRID here.

#### org-test

**Warning**: 'XXXXXXX' element contains an organism - XXXXXX - but there is no italic element with that correct capitalisation or spacing. Is this correct? XXXXX element begins with XXXXXX.

**Action**: This will fire at all stages if a table cell or paragraph contains the name of an organism which should be italicised, but there is not one italic element containing that text. For example, if the cell contains E. Coli then it should be italicised to _E. Coli_. Similarly if it contains _e.Coli_, then the text should be changed to _E. Coli_.

#### code-test

**Warning**: 'XXXXXXX' element contains what looks like unformatted code - 'XXXXXX' - does this need tagging with &lt;monospace/&gt; or &lt;code/&gt;?.

**Action**: This will fire at all stages if a table cell or paragraph contains text which is preceded by two hyphens, such as `--render`. In a table cell this should be given monospace formatting. \(In paragraphs it might be necessary to include it as a code block - more on this in that page\).

#### cell-spacing-test

**Warning**: 'XXXXXXX' element contains an equal sign with content directly next to one side, but a space on the other, is this correct? - XXXXXX.

**Action**: This will fire at all stages if a table cell or paragraph contains an equal sign which has a space on one side, but not the other, for example `p= 6`. The spacing should be made to be consistent either `p=6` or `p = 6`. Check how this has been done elsewhere in the article \(with spaces or without spaces\), and update the text so that it is consistent in the article.

#### equal-spacing-test

**Warning**: 'XXXXXXX' element contains the text '+cells' or '±cells' which is very likely to be incorrect spacing - XXXXXX.

**Action**: This will fire at all stages if a table cell or paragraph contains the text `+cell` or `±cell`. If this fires, it's almost certain that a space needs adding between the plus sign and the word cell. It may also be necessary to remove the space \(if there is one\) before the plus sign depending on the content. For example `Ly6G +cells` should be changed to `Ly6G+ cells`.

#### ring-diacritic-symbol-test

**Warning**: 'XXXXXXX' element contains the ring above symbol, '∘'. Should this be a \(non-superscript\) degree symbol - ° - instead?

**Action**: This will fire at all stages if a table cell or paragraph contains this symbol - ∘. Sometimes this symbol is included \(and given superscript formatting\) instead of a degree symbol. If it's clear that the authors have intended to use the degree symbol, then this should be replaced with °.

#### diabetes-1-test

**Error**: element contains the phrase 'Type one diabetes'. The number should not be spelled out, this should be 'Type 1 diabetes'.

**Action**: This will fire at all stages if a table cell or paragraph contains the text 'Type one diabetes'. As the message suggests this should always be changed to 'Type 1 diabetes'.

#### diabetes-2-test

**Error**: element contains the phrase 'Type two diabetes'. The number should not be spelled out, this should be 'Type 2 diabetes'.

**Action**: This will fire at all stages if a table cell or paragraph contains the text 'Type two diabetes'. As the message suggests this should always be changed to 'Type 2 diabetes'.

#### unlinked-url

**Warning**: 'XXXXXXX' element contains possible unlinked urls. Check - XXXXXX.

**Action**: This will fire at all stages if a table cell or paragraph \(which is not in a decision letter or author response or the ethics information\) includes what is likely a URL. If it is a URL, then it should always be formatted as a link rather than plain text.

#### year-style-test

**Warning**: 'XXXXXXX' element contains the following string\(s\) - XXXXXX. If this refers to years, then the space should be removed after the number, i.e XXXXXXX. If the text is referring to a unit then this is fine.

**Action**: This will fire at all stages if a table cell or paragraph contains text like `1990 s`. If the authors intended to refer to decades then the space between the s.and number should be removed - `1990s`. If it a number an unit \(as in 1990 seconds\) then the space should be retained and the message ignored.

#### copyright-symbol

**Error**: 'XXXXXXX' element contains the copyright symbol, '©', which is not allowed.

**Action**: This will fire at all stages if a table cell contains the copyright symbol, '©'. This is not allowed in eLife content and should be removed.

#### trademark-symbol

**Error**: 'XXXXXXX' element contains the trademark symbol, '™', which is not allowed.

**Action**: This will fire at all stages if a table cell contains the trademark symbol, '™'. This is not allowed in eLife content and should be removed.

#### reg-trademark-symbol

**Error**: 'XXXXXXX' element contains the registered trademark symbol, '®', which is not allowed.

**Action**: This will fire at all stages if a table cell contains the registered trademark symbol, '®'. This is not allowed in eLife content and should be removed.

#### Inc-presence

**Warning**: 'XXXXXXX' element contains 'Inc.' with a full stop. Remove the full stop.

**Action**: This will fire at all stages if a table cell contains the text 'Inc' or 'inc' followed by a full stop. If it is a shorthand for incorporated, and not at the end of a sentence, such a `McDonalds Inc. sell 'food'`, then the full stop should be removed `McDonalds Inc sell 'food'`. If it is at the end of a sentence \(`'Food' is sold by McDonalds Inc.`\) or not a shorthand for incorporated, then the full stop can be left.

#### andand-presence

**Warning**: 'XXXXXXX' element contains ' and and ' which is very likely to be incorrect.

**Action**: This will fire at all stages if a table cell contains the text ' and and ' \(or similar capitalised variations\). It almost certainly a mistake, so the extra 'and' can be removed.

#### figurefigure-presence

**Warning**: 'XXXXXXX' element contains ' figure figure ' which is very likely to be incorrect.

**Action**: This will fire at all stages if a table cell contains the text ' and and ' \(or similar capitalised variations\). It almost certainly a mistake and the extra 'figure' can be removed.

#### plus-minus-presence

**Warning**: 'XXXXXXX' element contains two plus or minus signs separate by a space and a forward slash \(such as '+ /-'\). Should the space be removed? - XXXXXX.

**Action**: This will fire at all stages if a table cell contains two plus or minus signs separated by a space and a forward slash \(such as '+ /-'\). It almost certainly a mistake and the extra space can be removed.

#### supplementalfigure-presence

**Warning**: 'XXXXXXX' element contains the phrase ' Supplemental figure ' which almost certainly needs updating. XXXXXX starts with - XXXXXX.

**Action**: This will fire at all stages if a table cell contains ' Supplemental figure '. If it is clear which figure supplement this refers to then it should be updated accordingly \(such as Figure 1-figure supplement 1\). If it is not, then the following author query:

* Supplemental figure X is cited in the text but has not been provided. Please either correct the citation, provide the figure file and a title and legend, or confirm that this citation refers to another article.

#### supplementalfile-presence

**Warning**: 'XXXXXXX' element contains the phrase ' Supplemental file ' which almost certainly needs updating. XXXXXX starts with - XXXXXX.

**Action**: This will fire at all stages if a table cell contains ' Supplemental file '. If it is clear which Supplementary file this refers to then it should be updated accordingly \(such as Supplementary file 1\). If it is not, then the following author query:

* Supplemental file X is cited in the text but has not been provided. Please either correct the citation, provide the figure file and a title and legend, or confirm that this citation refers to another article.

#### ref-presence

**Warning**: 'XXXXXXX'  element contains 'Ref.' which is either incorrect or unnecessary.

**Action**: This will fire at all stages if a table cell contains the text 'Ref.'. If the text is referring to a citation, i.e. `Ref. 2` in the original manuscript converted to `Ref. Smith et al., 2020`, then the text 'Ref.' should be deleted. If the text is not referring to a citation, then the full stop should be removed.

#### refs-presence

**Warning**: 'XXXXXXX'  element contains 'Refs.' which is either incorrect or unnecessary.

**Action**: This will fire at all stages if a table cell contains the text 'Refs.'. If the text is referring to a citation, i.e. `Refs. 2-3` in the original manuscript converted to `Ref. Smith et al., 2020; Smith et al., 2019`, then the text 'Refs.' should be deleted. If the text is not referring to a citation, then the full stop should be removed.

#### replacement-character-presence

**Error**: 'XXXXXXX' element contains the replacement character '�' which is not allowed.

**Action**: This will fire at all stages if a table cell contains the replacement character '�'. The original manuscript should be checked to ensure that the intended character was not incorrectly converted. Otherwise the character should be removed.

#### junk-character-presence

**Error**: 'XXXXXXX' element contains a junk character '' which should be replaced.

**Action**: This will fire at all stages if a table cell contains a junk character ''. The original manuscript should be checked to ensure that the intended character was not incorrectly converted. Otherwise the character should be removed.

#### inverterted-question-presence

**Warning**: 'XXXXXXX' element contains an inverted question mark '¿' which should very likely be replaced/removed.

**Action**: This will fire at all stages if a table cell contains an inverted question mark '¿'. The original manuscript should be checked to ensure that the intended character was not incorrectly converted. Otherwise the character should be removed.

#### empty-parentheses-presence

**Warning**: 'XXXXXXX' element contains empty parentheses \('\[\]', or '\(\)'\). Is there a missing citation within the parentheses? Or perhaps this is a piece of code that needs formatting?

**Action**: This will fire at all stages if a table cell contains empty parentheses \('\[\]', or '\(\)'\). The original manuscript should be checked to ensure that the content was not incorrectly converted. If it has been correctly converted, then if it is code \(such as `regex()`\), then the code text should be given monospace formatting. If it is not code, the the following author query should be added:

* Please add in the missing text here or remove the brackets, as necessary.

#### broken-unicode-presence

**Warning**: 'XXXXXXX' element contains what looks like a broken unicode - XXXXXX.

**Action**: This will fire at all stages if a table cell contains what looks like broken unicode characters, such as `&amp;#x21;`. The original manuscript should be checked to see what the intended character should be. If it is still not clear, then do a web search for that text \(followed by unicode\). If it's then clear what symbol it should be, then this should be added. Finally if it is still not clear, then add the following author query:

* Please confirm what this symbol should be here or delete the text, as necessary.

#### extra-full-stop-presence

**Warning**: 'XXXXXXX' element contains what looks two full stops right next to each other \(..\) - Is that correct? - XXXXXX.

**Action**: This will fire at all stages if a table cell contains two full stops right next to each other \(..\). If it is clearly a typo, the extra full stop should be removed. If it is not clear, then this warning can be ignored.

#### extra-space-presence

**Warning**: 'XXXXXXX' element contains two or more spaces right next to each other - it is very likely that only 1 space is necessary - XXXXXX.

**Action**: This will fire at all stages if a table cell contains two or more spaces right next to each other. It is very likely that the extra space should be removed.

#### operating-system-command-presence

**Error**: 'XXXXXXX' element contains a operating system command character '' which should very likely be replaced/removed. - XXXXXX.

**Action**: This will fire at all stages if a table cell contains a specific character, the operating system command character \(unicode `&#x9d;`\). If this fires, the character _must_ be removed, because otherwise the article will fail PMC ingestion.

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

**Error**: table-wrap must have one table.

**Action**: This will fire if a &lt;table-wrap&gt; element does not have a child &lt;table&gt; element. If this fires, it has been typeset incorrectly and steps should be taken to correct it.

#### table-wrap-test-2

**Warning**: table-wrap has more than one table - Is this correct?

**Action**: This will fire if a &lt;table-wrap&gt; element more than one a child &lt;table&gt; element. If the table has two or more sections in it with differing numbers of columns, but it has the same label \(and title\), then this warning can be ignored. If it does not, the table should be collated so that there is only one table element.

#### table-test-1

**Error**: table must have at least one body \(tbody\).

**Action**: This will fire if a &lt;table&gt; element does not have a child &lt;tbody&gt; element. This means that something has gone wrong with the typesetting and the table will need to be corrected.

#### td-child-test

**Error**: td cannot contain XXXXXX. Only the following elements are allowed - 'bold', 'italic', 'sup', 'sub', 'sc', 'ext-link', 'xref', 'break', 'named-content', 'monospace', 'code','inline-graphic','underline', and 'inline-formula'.

**Action**: The list of allowed elements correspond to the following types of content respectively - bold, italics, superscript, subscript, small caps, citations, hyperlinks, line breaks, colour formatting, monospace, code, inline images, underline, and inline formulae. This will fire if a table data cell contains any other type of content, and will likely need to be corrected by Exeter.

#### th-child-test

**Error**: th cannot contain XXXXXX. Only the following elements are allowed - 'bold', 'italic', 'sup', 'sub', 'sc', 'ext-link', 'xref', 'break', 'named-content', 'monospace',  'code', 'inline-graphic', and 'inline-formula'.

**Action**: The list of allowed elements correspond to the following types of content respectively - bold, italics, superscript, subscript, small caps, citations, hyperlinks, line breaks, colour formatting, monospace, code, inline images, and inline formulae. \(Note that while underline is allowed in table data cells, it is not allowed in header cells.\) This will fire if a table header cell contains any other type of content, and will likely need to be corrected by Exeter.

#### th-child-test-2

**Warning**: th contains bold. Is this correct?

**Action**: If this fires in live content, then the bold formatting should be removed. Header formatting is always in bold so the bold formatting is superfluous. The only reason this can be ignored is if this fires in an article which is being published as a new version.

