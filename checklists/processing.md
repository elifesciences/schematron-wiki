---
description: Procedure for checking articles during content processing
---

# Content processing

The following checklists cover the initial stages following the export of articles to the content processing system and copy-editing carried out by the content processor's copy-editing team.

## Pre-editing

The following checks should be carried out in addition to acting on any warnings or errors from the schematron tests.

### Article details page

1. If there is a mismatch between the author names in the export XML and the manuscript file,  the manuscript should be followed. The affiliation, corresponding author and equal-contribution details should be taken from the manuscript file.
2. Affiliation details should be split into the correct fields \(Institution, City and Country\). The Department field is present for legacy content but should not be used for current articles.
3. Each research organism in the research organisms section should be entered separately, not grouped together \(sometimes multiple terms will be pulled into one entry\).
4. Each keyword in the keyword section should be entered separately, not grouped together.
5. If [**multiple grant numbers**](../article-details/content/funding-information.md#multiple-grant-references-in-one-entry) are present in an entry in the funding table, they should be separated into multiple entries.
6. Check that each funder validates against the [**Open Funder Registry**](https://www.crossref.org/services/funder-registry/). If one does not, make a cursory check online to ensure the funder name is correct \(see [**Funding**](../article-details/content/funding-information.md#what-needs-to-be-checked) for more information\).
7. Raise an author query if the funding information is not complete \(e.g. missing author names\).
8. Check the Data availability statement for dataset and code information \(see [**Data availability**](../article-details/content/data-availability.md#data-availability-statement) for more information\), and for data [**available on request**](../article-details/content/data-availability.md#data-available-on-request).
9. If the Data availability statement refers to code on a GitHub or other repository, check whether this needs to be [**forked and proceed accordingly**](../toolkit/forking-git-based-repos.md).
10. Check the datasets listed as generated or previously published and separate the database and identifier if required.
11. If they are missing or incomplete, check for the dataset URL, assigning-authority and pub-id type on the [**Data availability**](../article-details/content/data-availability.md#database-examples) page. If the assigning-authority is not on this page, set it to 'other'.
12. If a URL is not present, add the identifier to the URL provided on the [**Data availability**](../article-details/content/data-availability.md#database-examples) page \(or query the author if the database is not in the reference table\).
13. Check if the dataset URL is valid and resolves to a public webpage \(see [**Data availability**](../article-details/content/data-availability.md#data-that-is-not-yet-public) for more information\). Query the author to request the dataset\(s\) be made publicly available if necessary.

### Content page

1. Check for any production notes that have been sent through from the submission system. Act on any instructions provided.
2. Check that all videos play.
3. Check that the supplementary file and video download links work correctly.
4. Source code files should be zipped and re-uploaded if they are not zipped already, so that the original file name exported from the submission system is retained.
5. Double check the tables and raise a query if the [**colours**](../article-details/content/allowed-assets/tables.md#allowed-colours-in-tables) given in the table are against the eLife style.
6. If a figure file consists of [**more than one page**](../article-details/content/allowed-assets/figures.md#multi-page-files)**,** the author must be asked to provide a single-page version, or to split it into multiple figures. Please contact the eLife Production team who will email the authors to ask how they would like to proceed.
7. If the file for an asset is missing, please query the author for the missing file.
8. Make sure that all files \(figures, figure supplements, source data, source code, supplementary files, reporting standards, transparent reporting form, additional article files\) in the export package have been typeset, even if a title/legend is missing. Query the author for any missing titles.
9. Check for any journal reference missing a DOI and quickly Google to check if one exists \(see [**Journal references**](../article-details/content/references/journal-references.md#finding-reference-details) for more details\).
10. For Insight articles:
    * The details in the key information box should match those of the related article\(s\).
    * The DOI for the related article\(s\) in the key information box should be correct.
    * References to the related eLife article\(s\) must have both an e-location ID and a DOI.
11. RRIDs and PMIDs mentioned in the text should be hyperlinked, using the URL prefixes https://scicrunch.org/resolver/ and https://www.ncbi.nlm.nih.gov/pubmed/, respectively.
12. Check the Acknowledgements \(`<ack>`\) section for author funding that is not already listed in the funding section. Ignore [**third party funders**](../article-details/content/funding-information.md#third-party-funding-vs-funding-to-authors). Any funding information not already in the funding section should be added to the funding table \(see [**Funding**](../article-details/content/funding-information.md#acknowledgements-section) for more information\).
13. Footnotes to the main text are not allowed. Any such footnotes should be incorporated as a bracketed statement at the point where they are cited in the text. An author query should be added to confirm this is acceptable:
    * "As eLife does not support footnotes to the main text, we have integrated this note into the text at the point it was cited. Please confirm this is acceptable."

### PDFs

1. Ensure there are no blank pages in either the article PDF or the figures PDF.
2. Check for any 'no entity' character errors \(on Greek letters, accented characters, maths terms etc\) in either PDF.
3. Check superscript/subscript terms at the ends of lines to make sure the word spacing is correct.
4. Check that the Key Resources Table is appearing correctly in the PDF.
5. Check that the blue background and border in appendices is consistent. Any white gaps in this background, for example around tables, should be corrected.
6. Check for orphaned or widowed lines and move these up/down to avoid having, say, one line of text between two figures.
7. Check for any unnecessary page breaks, especially in figure legends or tables. If only one sentence of the figure legend is being pushed down to the next page, for example, the figure should be shrunk slightly so that the legend is fully on the same page as the image. 
8. Check that figures, tables and videos appear in numerical order and are placed as close as possible to their first citations in the text.
9. Check the figures PDF to ensure no figures are going off from the page and that all figures and figure supplements are present.
10. Check that the figures are legible in the PDFs. If they are not, the author should be queried to provide [**higher resolution images**](../article-details/content/allowed-assets/figures.md#resolution-of-figures).
11. For feature articles, ensure that the figures are sized at the correct widths, as indicated in the exported files names.

### LaTex checklist

1. For LaTex articles, this author query is mandatory:
   * "Please check and confirm that we have processed your LaTex correctly, especially with regards to the layout of any equations in the text."
2. Cross-check all equations to make sure that they are formatted the same as in the exported merged PDF file. Make sure no errors have been introduced during conversion and that formatting, layout and spacing is preserved.
3. Check equation-like numbers \(e.g. value with units such as '10 mg'\) and make sure these are in plain text rather than tagged as maths.
4. Accent characters \(e.g., `\dot`, `\bar`, `\tilde`, `\”`\) should be cross-verified against the merged PDF file.
5. Check for usage of `\overset` and \`underset`, and make sure it is not being used to apply accent characters \(e.g. `\dot` should be used instead of `\overset{•}`\).
6. Make sure that each display equation has an equation ID.
7. sin, tan, cos, log and cos should be entered as functions rather than text \(e.g. `\sin`, `\tan`, `\cos`, `\log`\).
8. Special fonts like script, calligraphy, and fracture characters should be identified and checked against the merged PDF file. Make sure they display in both the Content view and in the PDF.
9. Multiline equations should be framed correctly with the same operator alignment as in the merged PDF file.
10. Mathop, atop, sidelimits, top and bottom limits should be checked as per the manuscript file.
11. Check whether bracket usage needs to be fine tuned by means of the `\left`, `\right`, `\big`, `\bigg`, `\Big` or `\Big` commands to match the merged PDF file.

## Copy-editing

The following checks should be carried out during the copy-editing of an article. These are in addition to the schematron tests that should be completed during pre-editing, but may cover the same content.

### Article details page

1. The article title should follow sentence case, with no capitalisation except for proper nouns.
2. Colons and semi-colons are not allowed in the article title except within scientific terms. If one is present, please check the production notes and if no instructions are provided on this matter, a query should be raised with the eLife Production team.
3. Check that the impact statement is a single, complete, grammatically correct sentence of no more than 30 words in length \(see the [**Impact statement**](../article-details/content/impact-statement.md) page for more details\).
4. Make sure that any special characters, accents or diacritics in author names have transferred correctly from the manuscript file.
5. Check that allowed suffixes \(Snr, Jnr, I, II, III, IV etc.\) have been retained and that prefixes have not been included.
6. The author contributions should be a comma-separated list with each item capitalised, e.g. "Formal analysis, Supervision, Investigation, Writing - review and editing". There should not be a full stop at the end. Usually the contributions will be taken from the following preset options:

   * Conceptualization
   * Resources
   * Data curation
   * Software
   * Formal analysis
   * Supervision
   * Funding acquisition
   * Validation
   * Investigation
   * Visualization
   * Methodology
   * Writing - original draft
   * Writing - review and editing
   * Project administration

   Sometimes, however, authors will include free text contributions in addition or instead of these. In these cases, please check the following:

   * Free-text phrases should start with a capital letter. For example, "wrote computer code scripts for the experiments" should be changed to "Wrote computer code scripts for the experiments".
   * The name or the initials of the current author should be removed, if present. For example, "Investigation, John Smith assisted with a subset of the mouse perfusions and brain sectioning for Figure 6" should be changed to "Investigation, Assisted with a subset of the mouse perfusions and brain sectioning for Figure 6"
   * Contributions for other authors should not be included in an author's contributions. For example, contribution for John Smith "Investigation, Dr. John Smith and Dr. Jo Bloggs performed flow cytometry experiments." should be changed to "Investigation, Performed flow cytometry experiments". Make sure that the  contributions for the other author\(s\) mentioned reflect the shared contribution \(in this example, author Jo Bloggs' contributions should include "Performed flow cytometry experiments".
   * Related to the previous point, please note that it is acceptable for authors to refer to other authors using initials in their contributions where they are referencing specific input on the tasks they performed. For example, the following is acceptable: "Conceptualization, Investigation, Methodology, Writing - review and editing, Initiated and performed the cryo-EM analysis \(with help from JPO at later stages\) and contributed to the building and interpretation of models". Initials should follow eLife style \(no full-stops\). If a full name is used, change it to the initials.
   * Statements of equal contribution or shared corresponding author status should be removed. For instance, in the following example, "Conceptualization, Writing - original draft, Writing - review and editing, Contributed equally with CJEM", the text "Contributed equally with CJEM" should be removed. Please make sure that the status is reflected using the tagging options - in this example, CJEM and the current author should be marked as equal contributors.

7. Check that affiliations have been captured correctly, with Institution, City and Country fields completed, and remove any postal address details \(building and street names, post- or zip-codes\).
8. Check that the ethics statement is grammatically correct.
9. Research organisms should be in italics where appropriate.
10. Keywords should be in lower case except for proper nouns, or gene or protein names, and any species names should be in italics where appropriate.
11. Check that the data availability statement is grammatically correct.

### Content page

Please sense-check the content and ensure that spelling and grammar are correct. The following sections should not be copy-edited, as they have already been checked prior to being uploaded to the system: **eLife digest**, **Decision letter**, **Author response**.

The following points should be addressed during copy-editing:

1. Each article should be consistently in UK or US English. Please update the text to match whichever style is most common in the article. Please note:
   * The Oxford comma should be used in text and lists regardless of which spelling style is used.
   * The date format should match whichever style is being used e.g.:
     * 19 August 1995 for UK spelling
     * August 19, 1995 for US spelling
2. Please leave the following as the author provides:
   * List nesting and the order in which bullet or number type is used \(e.g. 1 -&gt; A -&gt; i\)
   * Plural or singular use of 'data'
   * Product information \(company, country\)
   * Use of dashes
3. Citations are only allowed in the abstract for Research Advances, where plain-text citations of the related article\(s\) are permitted. In all other cases, authors should be asked to remove any citations and reword the abstract if necessary.
4. Check that the article structure looks correct. If required sections are missing, this should be queried with the author. See the [**Article structure**](../article-details/content/article-structure.md#allowed-article-structures) page for more details.
5. Section headings and titles for figures, tables, source data etc. should be in sentence case.
6. Abbreviations should be spelled out the first time they are used, followed immediately by the abbreviation in brackets. Thereafter, the abbreviated form should be used. However, please note the following exceptions:
   * The abstract, figures and tables should be treated as separate entities and abbreviations should be redefined within them.
   * Terms on the AMA style guide list of common abbreviations do not need to be spelled out.
   * Gene/protein names can be kept in abbreviated form throughout the article \(the authors may spell them out on the first use, but this does not need to be added in if missing\).
7. Use of italics:
   * Latin terms such as et al., in vivo, in vitro, bona fide etc. should not be italicised.
   * Species names should be in italics \(e.g. _Mus musculus_, _H. sapiens_\), except where they are part of an institution name \(e.g. Caenorhabditis Genetics Center, FlyBase:Drosophila Network Resources\).
   * For other terms, the authors' use of italics should be followed as far as is reasonable.
8. Number use:
   * Numbers with five or more digits should have a comma separator e.g. 42,980. Numbers with four or less digits should not, e.g. 2400.
   * Numbers less than 10 should be spelled out unless they are a quantity with a unit, in which case digits should be retained. Numbers greater than 9 should be given in digits. However, please note the following exceptions:
     * The number begins a sentence, in which case the sentence should be restructured or the number should be spelled out.
     * There is a mixture of numbers greater than 9 and less than 10, in which case use digits, e.g. "In our study, 5 of 11 patients underwent treatment."
     * There are consecutive numerical expressions where a mix of spelled-out numbers and digits is required for clarity, e.g. "twenty eight 30-year-old patients."
   * For values of millions and above, digits and the word for the order of magnitude should be used, e.g. 6 million, 10 billion etc.
   * All decimal values should have leading zero, e.g. .001 should be changed to 0.001.
   * For whole numbers, twofold, fourfold, tenfold etc. are allowed. For fractions, the number in digits followed by '-fold' should be used e.g. 2.5-fold, 0.5-fold etc.
   * For ordinals, first through ninth should be spelled out, thereafter use 10th . . . 21st, 22nd, 23rd . . . etc. An exception to this is if there is a mixture of ordinals greater than ninth and less than 10th, in which case use digit-ordinals e.g. "The 1st through 20th experiments were analysed."
9. Units:
   * SI and non-SI units should be left as the author provides
   * Time: use abbreviations for units \(seconds \[s\], minutes \[min\], hour \[hr\]\) but spell out day, week, month or year, and spell out months in full \(e.g. 'February', not 'Feb'\)
   * Temperature: degrees centigrade should be indicated by °C, closed up with the value e.g. 8°C
   * Magnification: use a multiplication sign, preceding the number, closed up, e.g. ×100
   * Percentages: use the percentage sign, following the number, closed up, e.g. 80%
   * Volume: vol
   * Weight: wt
   * Repetition of units: this should be left as the author provides, excepting use of % and °C which should only be retained for the final number, e.g. 80–100%, 5–10°C
   * Ranges: use en-dash to indicate a range of values
10. Statistics:
    * Probability: lowercase roman p, with leading zero, e.g. p=0.01
11. Punctuation:
    * Single quotation marks should be used for emphasis \('some text'\). Double quotation marks should be used for direct quotes \("a quote from another article"\).
    * Where multiple sets of brackets are nested, square brackets should be used within parenthesis, e.g. "some text \(some more text \[reference\] text\)".
    * Fullstops are no required after 'inc', 'corp' etc, except where they occur at the end of a sentence.
12. Special characters:
    * All trademark ™, registered ®, and copyright © symbols should be deleted.
    * '&' should be changed to 'and' if used as part of a sentence. '&' should be left if used as part of a name such as 'R&D' or 'Texas A&M University'.
13. For figures, tables, and supplementary files:
    * Check that the legends make sense and that any sub-legends for specific parts of the asset are incorporated in a grammatically correct fashion \(e.g. if the author provided each sub-legend on a separate line, make sure they are punctuated correctly when placed in a single paragraph\).
    * Ensure each new sentence starts with a capital letter, unless the part label is being used as part of the sentence. That is, "\(**A**\) shows the results of . . ." is fine but "\(**A**\) results of . . . " should be corrected to "\(**A**\) Results of . . ."
    * Statements at the end of the legend such as "The following supplements are available for Figure 2:" should be removed - usually these will make sense in context of the author's original manuscript file, but are unnecessary in the typeset article.
    * Check for spelling errors in figure images. If there are any, an author query should be added asking for a new figure file and indicating what needs to be corrected.
    * The capitalisation of part labels in legends and citations \(a, b, c, . . . or A, B, C, . . .\) should match the capitalisation of the labels in the figure image or table.
    * Check for any missing panel labels in the figure legends or images. See the [**Figures and figure supplements**](../article-details/content/allowed-assets/figures.md#part-labels) page for more information:
      * If the image has panel labels but the legend does not, the authors should be asked to add panel labels to the legend.
      * If the legend has panel labels but the image does not, the authors should be asked to provide a new image file.
    * Make sure that asset citations are formatted correctly, with any sub-part labels incorporated into the linked text \(e.g. Figure 1A, Figure 2Bii\).
14. Where footnotes have been incorporated into the main text as parenthetical statements during pre-editing, check that the resulting text makes sense.
15. Check for any issues in the references that have not been picked up during pre-editing, such as duplicated references, collaborations tagged as names \(e.g. 'Team RDC' being a miss-tagging of R Development Core Team'\), or reference citations in the text where brackets have been added or removed in error.

