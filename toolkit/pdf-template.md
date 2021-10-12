---
description: This page describes the PDF template.
---

# PDF template

## What is the PDF template?

The PDF is built from the underlying XML and is one of the main outputs of the production process. It is a typeset version of the article, which means it is easily recognisable as an eLife article. Many authors still consider this the only output of their journal article, despite the effort we put into the underlying XML so it is machine-readable and can be sent in XML format to many different places, including the eLife website.

## What are the features of the eLife research article template?

### Running heads

These are the headers on the page, above the content. They are built from metadata in the XML.

#### First page running heads

![](<../.gitbook/assets/Screenshot 2021-10-12 at 10.13.30.png>)

**First page left**: This is the eLife logo, which should be a clickable link that takes the reader to the eLife homepage: [https://elifesciences.org/](https://elifesciences.org)

**First page right**: This contains the article type in all caps (e.g. RESEARCH ARTICLE) followed by a pipe symbol. Next is the open access unlocked logo, which is a clickable link to: [https://en.wikipedia.org/wiki/Open_access](https://en.wikipedia.org/wiki/Open_access). This is followed by another pipe and then the CC logo, which is a clickable link to creative commons ([https://creativecommons.org/](https://creativecommons.org)). Creative commons is the home of the licenses we apply to eLife content.

#### Follow on pages running heads

On the follow-on pages the headers change, but remain the same for all follow on pages of the PDF for a single article.

![](<../.gitbook/assets/Screenshot 2021-10-12 at 10.19.02.png>)

* **Follow-on page left**: This is a standardised eLife "logo" followed by the article type, in this case 'Research article". Sentence case is used for this text
* **Follow-on page right**: The major subject area(s) in blue colour. If there is more than one major subject area they are seperated using a pipe symbol.

### Page footers

These are the footers on the page, below the content. They are built from metadata in the XML. They are the same for every PDF page and do not differ on the first page.

![](<../.gitbook/assets/Screenshot 2021-10-12 at 10.26.43.png>)

* A line separates the footer from the main text of the article
* The left contains some citations details: the authors. journal title (eLife) publication year; publication volume: elocation id. DOI:
* The author details follow a specific format

1. If there is one author just their surname is listed
2. If there are 2 authors both their surnames are listed with an & separating the names
3. If there are more than 3 authors the first author surname is followed by et al (italics) 
4. Exception to point 3 - if successive authors (first 3 authors only) contribute equally to the work they are all listed in the footer (see the screenshot above - the first 2 authors contributed equally and so are both listed)

* The punctuation of this line is specific, as indicated in the second bullet above
* The DOI is formatted as a link and contains the full https:// URL
* The right contains the page numbers, this page of however many pages there are in the PDF, eg 1 of 15, 2 of 15 etc. 

### Gutters

There is a gutter on the left-hand side of the PDF page. This contains metadata on the first page, but therearfter it remains but is empty. The original design concept was based on feedback from the editors who use PDFs - this was a space for annotation. Also, the original PDF design specification was to have plenty of white space to escape the legacy of cramped PDFs to reduce pagination costs for publishers. 

### Article title

The article title is presented in blue text under the headers on the first page

![](<../.gitbook/assets/Screenshot 2021-10-12 at 10.59.29.png>)

### Author details

Author names are printed in bold, comma-separated, under the title. The link to their affiliations is indicated using a superscript number before the comma. The affiliations are listed directly below and the superscript number proceeds the affiliation; each affiliation is semicolon separated. Any other footnotes concerning the authors use the standardised symbols: \*, †, ‡, §, ¶ 

![](<../.gitbook/assets/Screenshot 2021-10-12 at 10.58.28.png>)

* The affiliation order follows the author order. For instance, if author 3 has two affiliations and one is shared with the first with author 1, this will be their first affiliation listed. 
* Every article has corresponding author(s) so this is denoted using the \* footnote and the corresponding author details are listed as the first item in the gutter. This means the usual order of \*, †, ‡, §, ¶  for footnotes is sometimes wrong because often the corresponding author is the last author and so any other footnotes attached to the authors preceed it (for instance authors contributing equally)
* If there are two sets of authors contributing equally, and they are distinct sets, this is indicated with two different footnotes:
