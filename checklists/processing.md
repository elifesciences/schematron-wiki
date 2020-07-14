---
description: Procedure for checking articles during content processing
---

# Content processing

The following checklists cover the initial stages following the export of articles to the content processing system and copy-editing carried out by the content processor's copy-editing team.

## Pre-editing

### Article details page

1. If there is a mismatch between the author names in the export XML and the Manuscript file,  the Manuscript should be followed. The affiliation, corresponding author and equal-contribution details should be taken from the Manuscript file.
2. Affiliation details should be split into the correct fields \(Institution, City and Country\). The Department field is present for legacy content but should not be used for current articles.
3. Each research organism in the research organisms section should be entered separately, not groupd together.
4. Each keyword in the keyword section should be entered separately, not grouped together.
5. Keywords should be in lower case unless they are proper nouns, or species, gene or protein names.
6. If [**multiple grant numbers**](../article-details/content/funding-information.md#multiple-grant-references-in-one-entry) are present in an entry in the funding table, they should be separated into multiple entries.
7. Check that each funder validates against the [**Open Funder Registry**](https://www.crossref.org/services/funder-registry/). If one does not, make a cursory check online to ensure the funder name is correct \(see [**Funding**](../article-details/content/funding-information.md#what-needs-to-be-checked) for more information\).
8. Raise an author query if the funding information is not complete \(e.g. missing author names\).
9. Check the Data availability statement for dataset and code information \(see [**Data availability**](../article-details/content/data-availability.md#data-availability-statement) for more information\), and for data [**available on request**](../article-details/content/data-availability.md#data-available-on-request).
10. Check and separate the database and identifier if required.
11. If they are missing or incomplete, check for the dataset URL, assigning authority and Pub-id type on the [**Data availability**](../article-details/content/data-availability.md#database-examples) page.
12. If a URL is not present, add the identifier to the URL provided on the [**Data availability**](../article-details/content/data-availability.md#database-examples) page \(or query the author if the database is not in the reference table\).
13. Check if the dataset URL is valid and resolves to a public webpage \(see [**Data availability**](../article-details/content/data-availability.md#data-that-is-not-yet-public) for more information\). Query the author to request the dataset\(s\) be made publicly available if necessary.

### Content page

1. Check that all videos play.
2. Check that the supplementary file and video download links work correctly.
3. Source code files should be zipped and re-uploaded if they are not zipped already, so that the original file name exported from the submission system is retained.
4. Check for any journal reference missing a DOI and quickly Google to check if one exists \(see [**Journal references**](../article-details/content/references/journal-references.md#finding-reference-details) for more details\).
5. For Insight articles, references to the related eLife article\(s\) must have both an eLocation ID and a DOI.
6. RRIDs and PMIDs mentioned in the text should be hyperlinked, using the URL prefixes https://scicrunch.org/resolver/ and https://www.ncbi.nlm.nih.gov/pubmed/, respectively.
7. The capitalisation of figure labels \(a, b, c, . . . or A, B, C, . . .\) should match the capitalisation of the labels in the figure image.
8. Check for any missing panel labels in the figure legends or images. If the image has panel labels but the legend does not, the authors should be asked to add panel labels to the legend. If the legend has panel labels but the image does not, the authors should be asked to provide a new image file. See the [**Figures and figure supplements**](../article-details/content/allowed-assets/untitled.md#part-labels) page for more information.
9. Check the Acknowledgements \(`<ack>`\) section for author funding that is not already listed in the funding section. Ignore [**third party funders**](../article-details/content/funding-information.md#third-party-funding-vs-funding-to-authors). Any funding information not already in the funding section should be added to the funding table \(see [**Funding**](../article-details/content/funding-information.md#acknowledgements-section) for more information\).
10. Footnotes to the main text are not allowed. Any such footnotes should be incorporated as a bracketed statement at the point where they are cited in the text. An author query should be added to confirm this is acceptable:
    * "As eLife does not support footnotes to the main text, we have integrated this note into the text at the point it was cited. Please confirm this is acceptable."

### PDFs

1. Ensure there are no blank pages in either the article PDF or the figures PDF.
2. Double check the tables and raise a query if the colours given in the table are against the eLife style.
3. Check for any 'no entity' character errors \(on Greek letters, accented characters, maths terms etc\).
4. Check superscript/subscript terms at the ends of lines to make sure the word spacing is correct.
5. Check the figures PDF to ensure no figures are going off from the page and that all figures and figure supplements are present.
6. Check that the figures are legible in the PDFs. If they are not, the author should be queried to provide higher resolution images.
7. Check that the Key Resources Table is appearing correctly in the PDF.
8. Check that the blue background and border in appendices is consistent. Any white gaps in this background, for example around tables, should be corrected.

### LaTex checklist

1. For LaTex articles, the equation query is mandatory:
   * "Please check and confirm that we have processed your LaTex correctly, especially with regards to the layout of any equations in the text."
2. Cross-check all equations to make sure that they are formatted the same as in the exported merged PDF file. Make sure no errors have been introduced during conversion and that formatting, layout and spacing is preserved.
3. Check equation-like numbers \(e.g. value with units such as '10 mg'\) and make sure these are in plain text rather than tagged as maths.
4. Accent characters \(e.g., `\dot`, `\bar`, `\tilde`, `\”`\) should be cross-verified against the merged PDF file.
5. Check for usage of `\overset` and \`underset`, and make sure it is not being used to apply accent characters \(e.g. `\dot` should be used instead of `\overset{•}`\).
6. Make sure that each display equation has an equation ID.
7. sin, tan, cos, log and cos should be in roman font and should be entered as functions rather than text \(e.g. `\sin`, `\tan`, `\cos`, `\log`\).
8. Special fonts like script, calligraphy, fracture characters should be identified and checked against the merged PDF file. Make sure they display in both the Content view and in the PDF.
9. Multiline equations should be framed correctly with the same operator alignment as in the merged PDF file.
10. Mathop, atop, sidelimits, top and bottom limits should be checked as per the Manuscript file.
11. Check whether bracket usage needs to be fine tuned by means of the `\left`, `\right`, `\big`, `\bigg`, `\Big` or `\Big` commands to match the merged PDF file.

## Copy-editing

### Article details page

1. The article title should follow sentence case, with no capitalisation except for proper nouns.
2. Check that the impact statement is a single, complete, grammatically correct sentence of no more than 30 words in length \(see the [Impact statement](../article-details/content/impact-statement.md) page for more details\).
3. Research organisms should be in italics where appropriate.
4. Keywords should be in lower case except for proper nouns, or gene or protein names, and any species names should be in italics where appropriate.
5. Check that the data availability statement is grammatically correct.

### Content page

1. The following sections should not be copy-edited: **eLife digest**, **Decision letter**, **Author response**.
2. Each article should be consistently in UK or US English. Update the text to match whichever style is most common in the article.
3. Section headings and titles for figures, tables, source data etc. should be in sentence case.
4. Latin terms such as in vivo, in vitro, bona fide etc. should not be italicised.
5. Species names should be placed in italics \(e.g. _Mus musculus_, _H. sapiens_\), except where they are part of an institution name \(e.g. Caenorhabditis Genetics Center, FlyBase:Drosophila Network Resources\).
6. For other terms, the authors' use of italics should be followed as far as is reasonable.
7. Abbreviations should be spelled out the first time they are used, following immediately by the abbreviation in brackets. Thereafter, the abbreviated form should be used. Exceptions:
   * The abstract, figures and tables should be treated as separate entities and abbreviations should be redefined within them.
   * Terms on the AMA style guide list of common abbreviations do not need to be spelled out.
   * Gene/protein names can be kept in abbreviated form throughout the article \(the authors may spell them out on the first use, but this does not need to be added in if missing\).
8. Single quotation marks should be used for emphasis. Double quotation marks should be used for direct quotes.
9. Where multiple sets of brackets are nested, square brackets should be used within parenthesis, e.g. \(some text \[reference\] some text\).
10. All trademark ™, registered ® and copyright © symbols should be deleted.
11. Numbers with five or more digits should have a comma separator e.g. 42,980. Numbers with four or less digits should not, e.g. 2400.
12. Numbers less than 10 should be spelled out unless they are a quantity with a unit, in which case digits should be retained. Numbers greater than 9 should be given in digits. Exceptions:
    * The number begins a sentence, in which case the sentence should be restructured or spelled out.
    * There is a mixture of numbers greater than 9 and less than 10, in which case use digits, e.g. "In our study, 5 of 11 patients underwent treatment."
    * There are consecutive numerical expressions where a mix of spelled-out numbers and digits is required for clarity, e.g. "twenty eight 30-year-old patients."
13. For values of millions and above, digits and the word for the order of magnitude should be used, e.g. 6 million, 10 billion etc.
14. All decimal values should have leading zero, e.g. .001 should be changed to 0.001.
15. For whole numbers, twofold, fourfold, tenfold etc. are allowed. For fractions, the number in digits followed by '-fold' should be used e.g. 2.5-fold, 0.5-fold etc.
16. Ensure the Oxford comma is used in text and lists.



