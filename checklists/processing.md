---
description: Procedure for checking articles during content processing
---

# Content processing

The following checklists cover the initial stages following the export of articles to the content processing system and copy-editing carried out by the content processor's copy-editing team.

## Article details page

1. The article title should follow sentence case.
2. If there is a mismatch between the author names in the export XML and the Manuscript file,  the Manuscript should be followed.
3. Affiliation details should be split into the correct fields \(Institution, City and Country\). The Department field is present for legacy content but should not be used for current articles.
4. Research organisms should be in italics as appropriate and should be separate terms
5. Key terms in keyword section should be separate
6. Keywords should be in lower case unless they are proper nouns
7. Check and separate multiple grant numbers for the same funder in the funding table
8. Check if the funder gets validated against the [Open Funder Registry](https://www.crossref.org/services/funder-registry/), if not do a cursory check online to identify a correct funder name \(see [Funding](../article-details/content/funding-information.md#what-needs-to-be-checked) for more information\)
9. Raise an author query if complete information is not provided - author names or grant number
10. Check the Data availability statement for dataset and code information \(see [Data availability](../article-details/content/data-availability.md#data-availability-statement) for more information\).
11. Check and separate the database and identifier if required.
12. Look for the data URL, assigning authority and Pub-id type on the [Data availability](../article-details/content/data-availability.md#database-examples) page.
13. Use the identifier in the URL provided on the [Data availability](../article-details/content/data-availability.md#database-examples) page.
14. Check if the dataset URL is valid and resolves to a public webpage \(see [Data availability](../article-details/content/data-availability.md#data-that-is-not-yet-public) for more information\).

## Content page

1. All videos should play.
2. Supplementary file and video link should work
3. Every reference should have DOI \(if not Google for confirmation\)
4. For Insight articles, related articles reference should have eLocation ID.
5. RRIDs and PMIDs mentioned in the text should be linked, using the URL prefixes https://scicrunch.org/resolver/ and https://www.ncbi.nlm.nih.gov/pubmed/, respectively.
6. Check the Acknowledgements \(`<ack>`\) section for funder information that is not already listed in the funding section. Ignore [third party funders](../article-details/content/funding-information.md#third-party-funding-vs-funding-to-authors).

## PDF

1. Check if competing interests \(funder\) link from page 1 goes to the correct page.
2. Check that the eLife digest section is included \(for articles that have a digest\).
3. Double check the tables and raise a query if the colours given in the table are against the eLife style.
4. Check if all Greek characters are present.
5. Check superscript/subscript terms and the spacing for words are correct.
6. Check the figures PDF to ensure no figures are going off from the page and that all figures and figure supplements are present. There should be no blank pages in this document.
7. Check that the Key Resources Table is appearing correctly in the PDF.

## LaTex checklist

1. For LaTex articles, the equation query is mandatory.
2. All the equations format should be same as in the exported Manuscript file.
3. Check equation like numbers and make sure that this is in plain text
4. Accent characters \(e.g., \dot, \bar, \tilde, \”\) should be cross verified.
5. Equation ID is must in the display equation
6. sin, tan, cot, log and cos should be in roman \(\sin \cos \cot ….\)
7. Special fonts like script, calligraphy, fracture characters should be identified and checked correctly
8. Multiline equation should be framed correctly with the operator alignment
9. Mathop, atop, sidelimits, top and bottom limits should be checked as per the manuscript
10. Bracket usage needs to be fine tuned by means of \left \right \big \bigg \Big \Big commands
11. \overset and \underset usage to be checked

