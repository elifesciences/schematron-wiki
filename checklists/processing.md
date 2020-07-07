---
description: Procedure for checking articles during content processing
---

# Content processing

The following checklists cover the initial stages following the export of articles to the content processing system and copy-editing carried out by the content processor's copy-editing team.

## Pre-editing

### Article details page

1. The article title should follow sentence case.
2. If there is a mismatch between the author names in the export XML and the Manuscript file,  the Manuscript should be followed.
3. Affiliation details should be split into the correct fields \(Institution, City and Country\). The Department field is present for legacy content but should not be used for current articles.
4. Research organisms should be in italics as appropriate and should be entered separately, not grouped together.
5. Each keyword in keyword section should be entered separatly, not grouped together.
6. Keywords should be in lower case unless they are proper nouns.
7. Check and separate multiple grant numbers for the same funder in the funding table.
8. Check if the funder gets validated against the [Open Funder Registry](https://www.crossref.org/services/funder-registry/), if not do a cursory check online to identify a correct funder name \(see [Funding](../article-details/content/funding-information.md#what-needs-to-be-checked) for more information\).
9. Raise an author query if complete information is not provided - author names or grant number
10. Check the Data availability statement for dataset and code information \(see [Data availability](../article-details/content/data-availability.md#data-availability-statement) for more information\).
11. Check and separate the database and identifier if required.
12. Check for the dataset URL, assigning authority and Pub-id type on the [Data availability](../article-details/content/data-availability.md#database-examples) page.
13. If a URL is not present, add the identifier to the URL provided on the [Data availability](../article-details/content/data-availability.md#database-examples) page \(or query the author if the database is not in the reference table\).
14. Check if the dataset URL is valid and resolves to a public webpage \(see [Data availability](../article-details/content/data-availability.md#data-that-is-not-yet-public) for more information\).

### Content page

1. All videos should play.
2. Check that the supplementary file and video download links work correctly.
3. Check for any journal reference missing a DOI and quickly Google to check if one exists \(see [Journal references](../article-details/content/references/journal-references.md#finding-reference-details) for more details\).
4. For Insight articles, related articles reference should have eLocation ID.
5. RRIDs and PMIDs mentioned in the text should be linked, using the URL prefixes https://scicrunch.org/resolver/ and https://www.ncbi.nlm.nih.gov/pubmed/, respectively.
6. The capitalisation of figure labels \(a, b, c, . . . or A, B, C, . . .\) should match the capitalisation of the labels in the figure image.
7. Check for any missing panel labels in the figure legends or images. If the image has panel labels but the legend does not, the authors should be asked to add panel labels to the legend. If the legend has panel labels but the image does not, the authors should be asked to provide a new image file. See the [Figures and figure supplements](../article-details/content/untitled.md#part-labels) page for more information.
8. Check the Acknowledgements \(`<ack>`\) section for funder information that is not already listed in the funding section. Ignore [third party funders](../article-details/content/funding-information.md#third-party-funding-vs-funding-to-authors).
9. Footnotes to the main text are not allowed. Any such footnotes should be incorporated as a bracketed statement at the point where they are cited in the text. An author query should be added to confirm this is acceptable: "As eLife does not support footnotes to the main text, we have integrated this note into the text at the point it was cited. Please confirm this is acceptable."

### PDF

1. Check that the competing interests \(if present\) and funder links from page 1 go to the correct page.
2. Check that the eLife digest section is included \(for articles that have a digest\).
3. Double check the tables and raise a query if the colours given in the table are against the eLife style.
4. Check for any 'no entity' character errors \(on Greek letters, accented characters, maths terms etc\).
5. Check superscript/subscript terms at the ends of lines to make sure the word spacing is correct.
6. Check the figures PDF to ensure no figures are going off from the page and that all figures and figure supplements are present. There should be no blank pages in this document.
7. Check that the figures are legible in the PDFs. If they are not, the author should be queried to provide higher resolution images.
8. Check that the Key Resources Table is appearing correctly in the PDF.

### LaTex checklist

1. For LaTex articles, the equation query \("Please check and confirm that we have processed your LaTex correctly, especially with regards to the layout of any equations in the text."\) is mandatory.
2. All the equations should be formatted the same as in the exported merged PDF file.
3. Check equation-like numbers \(e.g. value with units such as '10 mg'\) and make sure these are in plain text rather than tagged as maths.
4. Accent characters \(e.g., `\dot`, `\bar`, `\tilde`, `\”`\) should be cross-verified against the merged PDF file.
5. Check for usage of `\overset` and \`underset`, and make sure it is not being used to apply accent characters \(e.g. `\dot` should be used, not `\overset{•}`\).
6. Make sure that each display equation as an equation ID.
7. sin, tan, cos, log and cos should be in roman font and should be entered as functions rather than text \(e.g. `\sin`, `\tan`, `\cos`, `\log`\).
8. Special fonts like script, calligraphy, fracture characters should be identified and checked against the merged PDF file. Make sure they display in both the Content view and in the PDF.
9. Multiline equations should be framed correctly with the same operator alignment as in the original Manuscript file.
10. Mathop, atop, sidelimits, top and bottom limits should be checked as per the Manuscript
11. Check whether bracket usage needs to be fine tuned by means of the `\left`, `\right`, `\big`, `\bigg`, `\Big` or `\Big` commands.

## Copy-editing

### Article details page

1. Check that the impact statement is a single, complete, grammatically correct sentence of no more than 30 words in length \(see the [Impact statement](../article-details/content/impact-statement.md) page for more details\).
2. Check that the data availability statement is grammatically correct.

### Content page

1. The following sections should not be copy-edited: **eLife digest**, **Decision letter**, **Author response**.
2. Each article should be consistently in UK or US English. Update the text to match whichever style is most common in the article.
3. Headers and titles for figures, tables, source data etc. should be in sentence case.
4. Latin terms such as in vivo, in vitro, bona fide and so on should not be italicised.
5. For other terms, the authors' use of italics should be followed as far a is reasonable.
6. Abbreviations should be spelled out the first time they are used, following immediately by the abbreviation in brackets. Thereafter, the abbreviated form should be used. Exceptions:
   * The abstract, figures and tables should be treated as separate entities and abbreviations should be redefined within them.
   * Terms on the AMA style guide list of common abbreviations do not need to be spelled out.
   * Gene/protein names can be kept in abbreviated form throughout the article
7. Single quotation marks should be used for emphasis. Double quotation marks should be used for direct quotes.
8. Where multiple sets of brackets are nested, square brackets should be used within parenthesis, e.g. \(some text \[reference\] some text\).
9. All trademark ™, registered ® and copyright © symbols should be deleted.
10. Numbers with five or more digits should have a comma separator e.g. 42,980. Numbers with four or less digits should not, e.g. 2400.
11. Numbers less than 10 should be spelled out unless they are a quantity with a unit, in which case digits should be retained. Numbers greater than 9 should be given in digits. Exceptions:
    * The number begins a sentence, in which case the sentence should be restructured or spelled out.
    * There is a mixture if numbers greater than 9 and less than 10, in which case use digits, e.g. "In our study, 5 of 11 patients underwent treatment."
    * There are consecutive numerical expressions where a mix of spelled-out numbers and digits is required for clarity, e.g. "twenty eight 30-year-old patients."
12. For values of millions and above, digits and the word for the order of magnitude should be used, e.g. 6 million, 10 billion etc.
13. All decimal values should have leading zero, e.g. .001 should be changed to 0.001.
14. For whole numbers, twofold, fourfold, tenfold etc. are allowed. For fractions, the number in digits followed by '-fold' should be used e.g. 2.5-fold, 0.5-fold etc.





