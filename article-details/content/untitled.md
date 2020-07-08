---
description: How to check figures and figure supplements
---

# Figures and figure supplements

Most scientific articles include figures and figure supplements to present data. eLife figures can also have [**various assets**](allowed-assets.md) ****related to them. All figures and figure supplements must have titles, and usually also have captions \(although this is not mandatory\). 

## What needs to be checked?

* Resolution of figures
* Presence of tables in figures
* Part labels 
* Permissions information if required

## Figure files

### Resolution of figures

Figures and figure supplements should be checked to ensure they are of good quality. If an image has especially poor resolution or the text is illegible, the author should be asked to provide a higher resolution version with the following query:

* The image for this figure appears to be of low quality. Please provide a higher resolution version.

### Tables in figures

We strongly discourage authors from providing tables represented as figures or figure supplements because figures are flat images and the contents of them cannot be mined or re-used without the need to rekey the content. If the authors have provided a table as a figure, the production team will need to be queried to ask the authors to provide this information as a table in Word or Excel format. If the author has not cited this "figure" in the text \(for instance because it is a figure supplement\) they will also need to add a citation to the new table in the main text.

For example, in 55692, Figure 1 - figure supplement 3 was originally provided as an image:

![](../../.gitbook/assets/screenshot-2020-07-01-at-16.06.10.png)

The authors were asked to provide this as an editable file and it was changed to a table in the final version: 

![](../../.gitbook/assets/screenshot-2020-07-01-at-16.06.46.png)

The author may also be given the option to convert the table in the figure to source data instead depending on the content of the table. If it is a figure supplement this would become Figure x - Source data x; if it is a main figure this would become source data attached to the document as a whole.

If one of the panels in a figure is a table, this can be left as-is:

![](../../.gitbook/assets/screenshot-2020-07-01-at-16.11.54.png)

If an author provides a PDF file over multiple pages we cannot process this as a single figure. Production will need to be queried to ask the authors to provide single-page figures. If each "page" contains a small image that could be a part of a complete composite figure the author should be asked to supply the image as a single page with part labels. If the images on each page are a full figure and combining the images into one figure would render them unreadable the author should be asked to split the individual pages up into separate figures or figure supplements. 

If the authors have included unlabelled images in their article file that do not correspond to the main figures, a query should be raised with eLife Production to determine how to treat these images. In most cases, these images will need to be treated as chemical structures or schemes.

### PDF version

The following applies to research content \([**Feature content**](feature-content.md) templates have separate rules\). Figures can be either:

1. Full-page width, across the text column and the gutter \(140mm\)
2. Column width, across just the width of the text column \(100mm\)
3. Half-column width, occupying the left 50% of the width of the text column, with the text flowing around the image block on the right \(50mm\) 

![An example of a full-page width figure](../../.gitbook/assets/screenshot-2020-07-01-at-16.35.48.png)

![An example of a column-width figure](../../.gitbook/assets/screenshot-2020-07-01-at-16.34.30.png)

![An example of a half-column width figure](../../.gitbook/assets/screenshot-2020-07-01-at-16.27.02.png)

In each case, the legend should be the same width as the image block and the figure should occupy as much of the available space as possible, left aligned but preferably with little to no whitespace on the right. If the image is particularly tall, this may result in there being more whitespace on the right. The appropriate width of the figure block should be determined by the resolution and aspect ratio of the supplied image. For smaller figures, these can be left the size they are:

![](../../.gitbook/assets/screenshot-2020-07-01-at-16.38.50.png)

### Accompanying text

All figures and figure supplements should have titles. Legends are not required but will usually be provided. If titles are not present, the following author query will need to be added to ask the author to provide these:

* Please provide the title for this figure.

If the author has only provided a legend that begins with a description of panel A \(e.g. “\(a\) The high-resolution MS/MS spectrum of the H4K31ac peptide generated from . . .”\), the same query as above will need to be left to ask the authors to add an overall title.

### Part labels

Part labels should be captured as such in Kriya. Please match the figure file when adding part labels - if a figure contains labels A-G, check these have all been referred to in the legend. If they haven't, leave the following author query:

* The image file for Figure X contains panel label "Y", but this has not been provided in the figure legend. Please add a reference to this panel to the figure legend, or provide an updated figure file with this label removed.

If the legend refers to figure panels that are not in the figure file, the following author query should be left:

* The legend for Figure X refers to panel label "Y", but this has not been provided in the figure file. Please provide an updated figure file containing label "Y", or remove this label from the legend.

{% hint style="info" %}
Make sure 'X' and 'Y' are replaced with the appropriate figure number and panel letters. Make sure if there are multiple missing panels/panel references that the text is adapted to use plurals, for example:

* The image file for Figure X contains panel label**s** "**Y–Z**", but **these have** not been provided in the figure legend \[...\]
* The legend for Figure X refers to panel label**s** "**Y–Z**", but **these have** not been provided in the figure file \[...\]
{% endhint %}

If there are sub-parts that refer to figure panels \(e.g. A', A'', or A\(I\), \(II\)\) and the author has cited these in the text \(I.e. 'Figure 2Ai'\) make sure these are also captured consistently as part labels. Figure sub-parts that haven't been cited in the text don't need to be captured as part labels. The main thing is to be consistent within an article.

Make sure part labels are not automatically added to every letter/number in a figure caption. For example in Figure 8 of 56236, some of the graphs included the text 'P19' and 'P24':

![](../../.gitbook/assets/screenshot-2020-07-08-at-12.34.06.png)

These were incorrectly captured as part labels in the title:

![](../../.gitbook/assets/screenshot-2020-06-25-at-10.13.39%20%281%29.png)

As these do not refer to figure panels, they were changed to plain text in the final article.

### In-text citations

All main figures must be cited in the article text. If these have not been cited, the following query should be left:

* Please provide an in-text citation for this figure.

Figure supplements do not have to be cited in the text though it is preferable that they are. If a figure or figure supplement is cited in the text but the corresponding file has not been provided, the author must be queried to provide the missing file with one of the queries below. 

* Please provide the image file for this figure \(do we need to add this in AQ list?\)
* Please provide the image file for this figure supplement.
* Figure X is cited in the text but has not been provided. Please either correct the citation, provide the figure file and a title and legend, or confirm that this citation refers to another article.

Please be aware that sometimes authors may cite a figure from another article. Citations of figures in other articles should be left as plain text. They can be identified by the context of the citation - for instance, “Figure 1 in Smith et al., 1990” refers to Figure 1 in Smith et al., 1990 and not to Figure 1 of the current article. Similarly, “\(see Jones et al., 2000 \[their Figure 2\]\)” references Figure 2 in Jones et al., 2000 and should stay as plain text. If the context is unclear, leave the following query:

* Figure X is cited in the text but has not been provided. Please either correct the citation, provide the figure file and a title and legend, or confirm that this citation refers to another article.

### Source code/data

Source data is often associated with figures and figure supplements. Each source data or source code file should be linked with the appropriate figure or figure supplement. For example, if a source data \(or code\) file is labelled Figure 1 - source data 1 but the title makes it clear that the data refers to a figure supplement, it should be relabelled as Figure 1 - Figure supplement X - source data 1 \(or source code as appropriate\). 

### Reproduced images

If the legend for a figure or figure supplement states that the image is ‘reprinted from’ or ‘reproduced from’, we may need to add licensing information for the reproduced elements. This will usually apply to panels within images, not whole images.

If the previously published content was published under a [**CCBY**](https://creativecommons.org/licenses/) or [**CC0**](https://creativecommons.org/share-your-work/public-domain/cc0/) license, the work must be properly attributed and credited \(provide full citation details and license\). If this matches the license of this article, it does not need to be tagged differently in the underlying XML because it is following the license of the article. However, if the article you are working on is CC0, but the reproduced figure is CCBY, this needs to be indicated in the underlying XML and so requires specific tagging.

Figures and figure supplements \(or panels within these\) may be 'adapted' from previously published content. This usually means that the authors are not reproducing anything directly but are instead redrawing a figure or simply using the same data to create new content. As long as the authors provide a suitable citation and state clearly, for example, that “Panel A in Figure 2 has been adapted from Smith and Jones, 2015”, no further action is required.

However, if the authors chose to exactly reproduce a figure or section from a previously published, non-open access/non-CCBY article in part or in whole, it will need to be published under a separate license. This is because the original publication will have been published under a license that retains copyright. An article published in Nature, for example, will be copyright to the Nature Publishing Group, and articles published in Science will be copyright to the American Association for the Advancement of Science and so on. If eLife is to reproduce the contents of these articles, it must make it clear that the publisher retains copyright on that content, and that it is therefore not covered by the CCBY or CC0 license that covers the rest of the eLife article. The same issue applies when authors incorporate images from other copyrighted media into their figures \(e.g. if they use film stills or artwork\).

If the authors chose to reproduce copyrighted images in their figures, they must state what has been reproduced in the legend. In addition to this, a permissions statement must be appended to the figure in the XML giving the license details for the reproduced image. For example, [**Figure 1 in eLife article 50974**](https://elifesciences.org/articles/50974/figures) contains an image reproduced from another article.

The license statement added by eLife Production is:

© 1997, National Academy of Sciences, USA. All rights reserved. Figure 1B is reproduced from Coppin et al. \(2002\) with permission. It is not covered by the CC-BY 4.0 licence and further reproduction of this panel would need permission from the copyright holder.

In the underlying XML, this would appear as:

```markup
<fig id="fig1" position="float">
<label>Figure 1.</label>
<caption>
<title>
Force gliding assay to study multiple kinesins transporting a cargo.
</title>
<p> . . . . 
. . . . </p>
</caption>
<graphic mime-subtype="tiff" mimetype="image" xlink:href="elife-50974-fig1-v2.tif"/>
<permissions>
<copyright-statement>
© 1997, National Academy of Sciences, USA. All rights reserved 
</copyright-statement>
<copyright-year>1997</copyright-year>
<copyright-holder>National Academy of Sciences, USA.</copyright-holder>
<license>
<license-p>
<xref ref-type="fig" rid="fig1">Figure 1B</xref>
is reproduced from
<xref ref-type="bibr" rid="bib12">Coppin et al. (2002)</xref>
with permission. It is not covered by the CC-BY 4.0 licence and further reproduction of this panel would need permission from the copyright holder.
</license-p>
</license>
</permissions>
</fig>
```

## Schematron checks

### Content checks

These checks relate to the content of figures and figure supplements. X or XXXXXX refers to quoted text which will change depending on the article.

#### fig-xref-test-4

**Warning:** _XXXXXX - Figure citation is in the caption of the figure that it links to. Is it correct or necessary?_

**Action:** If the figure citation refers to a figure from another paper, this needs to be changed to plain text. If it is simply referring to a panel in the same figure, it can be changed to a part label. 

For example, if the following text is in the caption of Figure 2:

* "See Figure 2A \(Smith et al., 2020\)." The citation 'Figure 2A' should be changed to plain text as it refers to a figure from another article.
* "\(B\) Further analysis of samples in Figure 2A." The 'Figure 2A' in this example should be changed to '\(A\)' as it is referring to a part label in the same figure.

If the citation doesn't refer to a part label, again check if it refers to a figure from another paper - if so, change it to plain text. If not then the citation can be removed entirely.

#### fig-specific-test-3

**Rule:** Figure X does not appear directly after the paragraph citing it. Is that correct?

**Action:** Figures should always be placed in the XML directly after the paragraph in which they are first cited, unless the paragraph is immediately followed by a display formula, in which case the figure should be placed at the first appropriate place. This check doesn't take into account 'Figure 1-3' type links, so if the warning is linked to this type of figure citation, it can be ignored. Otherwise, make sure the figure is moved directly after its first citation.

#### fig-caption-test-1

**Rule**: Caption for Figure X contains what looks like a lower case letter at the start of a sentence.

**Action:** In some cases, a sentence will begin with a lower case letter. This is fine to leave if the word is a recognised scientific term - you can check against the rest of the article to see if it is used elsewhere. Otherwise, please make sure every sentence begins with a capital letter.

### Figure permissions rules

#### fig-permissions-test-1: Rule: Permissions for X has a copyright-statement, but not a copyright-year or copyright-holder which is incorrect.

#### fig-permissions-test-2: Rule: Permissions for X has a copyright-year, but not a copyright-statement or copyright-holder which is incorrect.

#### fig-permissions-test-3: Rule: Permissions for X has a copyright-holder, but not a copyright-statement or copyright-year which is incorrect.

**Action**: In these cases, you just need to add the copyright statement, copyright year or copyright holder depending on which is missing. See [here](Figures#reproduced-images) for an xml example of permissions information.

#### fig-permissions-test-4: Rule: Permissions for X must contain a license-p element.

#### fig-permissions-test-5: Rule: permissions for X has `<copyright-statement>` elements, when there can only be 0 or 1.

#### fig-permissions-test-6: Rule: permissions for X has `<copyright-holder>` elements, when there can only be 0 or 1.

#### fig-permissions-test-7: Rule: permissions for X has `<copyright-year>` elements, when there can only be 0 or 1.

#### fig-permissions-test-8: Rule: permissions for X has `<license>` elements, when there can only be 0 or 1.

#### fig-permissions-test-9: Rule: permissions for X has a `<license>` element, but not `<license-p>` element, which is incorrect.

#### fig-permissions-test-10: Rule: permissions for X has `<license-p>` elements, when there can only be 0 or 1.

#### fig-permissions-test-11: Rule: figure level permissions must either have a `<copyright-statement>` or a `<license>` element, but those for X have neither.

**Action**: All these messages refer to either missing or extra elements. When permissions information is required, make sure each of these elements is present. See [here](Figures#reproduced-images) for an xml example of permissions information.

#### fig-permissions-test-12: Rule: permissions - the `<license-p>` for all rights reserved type permissions should usually end with 'further reproduction of this panel/figure would need permission from the copyright holder.', but X's doesn't. Is this correct? \(There is no '[https://creativecommons.org/](https://creativecommons.org/)' type link so presumed ARR.\)

**Action**: If the `<copyright-statement>` for a figure includes 'All rights reserved', the permissions statement should end with 'further reproduction of this panel/figure would need permission from the copyright holder' - you just need to add it in if this is missing. If there is no '[https://creativecommons.org/](https://creativecommons.org/)' type link, the schematron will automatically assume the figure permission is 'All rights reserved'. See [here](Figures#reproduced-images) for an xml example of permissions information.

#### reproduce-test-1: Rule: The caption for X contains the text 'reproduced from', but has no permissions. Is this correct?

#### reproduce-test-2: Rule: The caption for X contains the text 'reproduced with permission', but has no permissions. Is this correct?

#### reproduce-test-3: Rule: The caption for X contains the text 'adapted from ...', but has no permissions. Is this correct?

#### reproduce-test-4: Rule: The caption for X contains the text 'reprinted from', but has no permissions. Is this correct?

#### reproduce-test-5: Rule: The caption for X contains the text 'reprinted with permission', but has no permissions. Is this correct?

**Action:** If the caption mentions a figure or part of a figure is reproduced/reprinted from another paper \(there should be a citation to the paper\), we may need to [add permissions](Figures#reproduced-images).

## Further reading and links

[Information about creative commons](https://creativecommons.org/)

