# Asset citations

## What is an asset citation?

An asset citation is an in-text citation for an [**asset**](./#main-text-assets) that is part of an article. This is in contrast to [**reference citations**](../reference-citations.md). These are rendered as links in the final article. Clicking them in the PDF will take the reader to the relevant asset in the PDF and HTML view.

![A figure and supplementary file citation](../../../.gitbook/assets/screenshot-2021-01-06-at-15.12.24.png)

Asset citations may appear inside or outside brackets. Where multiple assets are cited in one set of brackets, each citation should be separated from the next by a comma or semi-colon followed by a space \(depending on context and what the author has provided\). 

## What needs to be checked?

Most of the major possible issues with asset citations will be picked up by schematron rules. It is, however, important to be aware of the style rules relating to the following when adding or removing asset citations:

* Citation order
* Citing asset parts 
* Identifying unconverted citations

Examples of these can be found in the next section. 

## Examples

### Citation order

Asset placement is determined by first live citation. If figures or tables are cited out of order, queries should be left for the authors. This is covered further on the [**tables**](tables.md#tables-cited-out-of-sequence) and [**figures**](figures.md#pre-fig-specific-test-2) page. 

### Citing asset parts

Some assets can have parts which may be included in the citation link text. For example, figures, tables and supplementary files may have multiple parts. If several parts of an asset are cited and the letters run on an en dash should be used - for example, Figure 1A–D. 

If several parts are cited but they don’t run on, the part labels should be formatted as a comma-separated list - for example, Figure 1A, C, and E. 

Supplementary files with parts should have those parts included in the link text. In the example below, 'table 1' should be included in the citation link.

![](../../../.gitbook/assets/screenshot-2020-12-04-at-12.10.02.png)

### Identifying unconverted citations

Occasionally, citations may be intentionally left unlinked to maintain the required asset order. In most other cases however, all asset citations should be linked. Sometimes, authors will use 'Fig' or 'Supp file' which may result in these citations being missed - these should be checked for and linked. Note however, that authors may be citing assets from other publications, for example “Figure 1 in Smith et al., 1990”. See more [**here**](figures.md#figures-that-havent-been-provided). 

## Schematron checks

### Content checks

These checks relate to the content of asset citations. X or XXXXXX refers to quoted text which will change depending on the article.

#### fig-xref-target-test

**Error:** _xref with @ref-type='XXXXXX' points to XXXXXX. This is not correct._

**Action:** This means that the `ref-type` attribute on the `xref` is not correct with respect to what the link points to. If it is meant to point to a figure, then the `ref-type` attribute value must be 'fig'. If the link it meant to point to something else, which is not a figure, then the link points to the incorrect location and will need to be updated. Exeter will need to correct the link in either case.

#### vid-xref-target-test

**Error**: _xref with @ref-type='XXXXXX' must point to a media\[@mimetype="video"\] element. Either this links to the incorrect location or the xref/@ref-type is incorrect._

**Action:** This means that the `ref-type` attribute on the `xref` is not correct with respect to what the link points to. If it is meant to point to a video, then the `ref-type` attribute value must be 'video'. If the link it meant to point to something else, which is not a video, then the link points to the incorrect location and will need to be updated. Exeter will need to correct the link in either case.

#### supplementary-material-xref-target-test

**Error**: _xref with @ref-type='XXXXXX' points to XXXXXX. This is not correct._

**Action:** This means that the `ref-type` attribute on the `xref` is not correct with respect to what the link points to. If it is meant to point to a supplementary file, then the `ref-type` attribute value must be 'supplementary-material'. If the link it meant to point to something else, which is not a supplementary file, then the link points to the incorrect location and will need to be updated. Exeter will need to correct the link in either case.

#### other-xref-target-test

**Error**: _xref with @ref-type='XXXXXX' points to XXXXXX. This is not correct._

**Action:** This means that the `ref-type` attribute on the `xref` is not correct with respect to what the link points to. If it is meant to point to a video, then the `ref-type` attribute value must be 'video'. If the link it meant to point to something else, which is not a figure, then the link points to the incorrect location and will need to be updated. Exeter will need to correct the link in either case.

#### table-xref-target-test

**Error**: _xref with @ref-type='XXXXXX' points to XXXXXX. This is not correct._

**Action:** This means that the `ref-type` attribute on the `xref` is not correct with respect to what the link points to. If it is meant to point to a video, then the `ref-type` attribute value must be 'video'. If the link it meant to point to something else, which is not a figure, then the link points to the incorrect location and will need to be updated. Exeter will need to correct the link in either case.

#### box-xref-target-test

**Error**: _xref with @ref-type='XXXXXX' points to XXXXXX. This is not correct._

**Action:** This means that the `ref-type` attribute on the `xref` is not correct with respect to what the link points to. If it is meant to point to a video, then the `ref-type` attribute value must be 'video'. If the link it meant to point to something else, which is not a figure, then the link points to the incorrect location and will need to be updated. Exeter will need to correct the link in either case.

#### box-xref-target-test

**Error**: _xref with @ref-type='XXXXXX' points to XXXXXX. This is not correct._

**Action:** This means that the `ref-type` attribute on the `xref` is not correct with respect to what the link points to. If it is meant to point to a video, then the `ref-type` attribute value must be 'video'. If the link it meant to point to something else, which is not a figure, then the link points to the incorrect location and will need to be updated. Exeter will need to correct the link in either case.

#### fig-xref-conformity-1

**Error:** _XXXXXX - figure citation does not contain any numbers which must be incorrect._

**Action:** This error will fire if a figure citation does not include any numbers e.g. 'Figure A'. Compare with the original submission to see what the correct citation should be. Exeter may need to fix this.

#### fig-xref-conformity-2

**Error:** _XXXXXX - figure citation does not appear to link to the same place as the content of the citation suggests it should._

**Action:** This error will fire if a figure citation links to a different figure from the citation text e.g. if Figure 2 links to Figure 3:

```text
<xref ref-type="fig" rid="fig3">Figure 2</xref>
```

Try to add the citation again through Kriya - if this doesn't work, Exeter will need to fix this.

#### fig-xref-conformity-3

**Warning:** _XXXXXX - figure citation does not appear to link to the same place as the content of the citation suggests it should._

**Action:** This warning will fire if a figure citation links to a different figure from what the citation text suggests it should link to e.g. if the link text says 'Figure 21' but links to Figure 2. Note, fig-xref-conformity-2 would not fire in this case, because the number 2 is contained in the link text. 

```text
<xref ref-type="fig" rid="fig2">Figure 21</xref>
```

Check the citation links to the correct figure - if it does not, try to add the citation again through Kriya - if this doesn't work, Exeter will need to fix this.

This will also fire if the link text refers to part labels, for example 'Figure 4E2'. As long as the citation links to the correct figure \(Figure 4 in this case\), this warning can be ignored. 

#### fig-xref-conformity-4

**Error:** _XXXXXX - figure citation links to a figure, but it contains the string 'supplement'. It cannot be correct._

**Action:** This error will fire if the text of a figure citation includes 'supplement' but links to a main figure e.g. if Figure 1_—_figure supplement 1 links to Figure 1. Try to add the citation again through Kriya - if this doesn't work, Exeter will need to fix this.

#### fig-xref-conformity-5

**Warning:** _figure citation stands alone, contains the text XXXXXX, and links to a figure supplement, but it does not contain the string 'supplement'. Is it correct? Preceding text - 'XXXXXX'_

**Action:** This warning will fire if a figure citation links to a figure supplement but the citation text doesn't include the word 'supplement'. This is ok to leave if, for example the citation text says 'Figure 1_—_figure supplements 2, 3' and links correctly to both Figure 1_—_figure supplement 2 and Figure 1_—_figure supplement 3. However, if the citation text says 'Figure 1' but links to Figure 1_—_figure supplement 1, this will need to be corrected. Try to add the citation again through Kriya - if this doesn't work, Exeter will need to fix this.

#### fig-xref-conformity-6

**Error:** _figure citation contains the text XXXXXX but links to a figure supplement with the id XXXXXX which cannot be correct._

**Action:** This error will fire if a figure citation links to the wrong figure supplement e.g. if the citation 'Figure 1_—_figure supplement 1' links to Figure 1_—_figure supplement 2. Try to add the citation again through Kriya - if this doesn't work, Exeter will need to fix this.

#### fig-xref-test-2

**Warning:** _There is no space between citation and the preceding text - XXXXXX - Is this correct?_

**Action:** This error will fire if there is no space between a figure citation and the text before it, for example 'SeeFigure 2.' Add a space between the citation and the preceding text. However, if the text is 'See Figures 2,3' this is ok to leave.

#### fig-xref-test-3

**Warning:** _There is no space between citation and the following text - XXXXXX - Is this correct?_

**Action:** This error will fire if there is no space between a figure citation and the text after it, for example 'See Figure 2for.' Add a space between the citation and the following text.

#### fig-xref-test-4

**Warning:** _XXXXXX - Figure citation is in the caption of the figure that it links to. Is it correct or necessary?_

**Action:** If the figure citation refers to a figure from another paper, this needs to be changed to plain text. If it is simply referring to a panel in the same figure, it can be changed to a part label. 

For example, if the following text is in the caption of Figure 2:

* "See Figure 2A \(Smith et al., 2020\)." The citation 'Figure 2A' should be changed to plain text as it refers to a figure from another article.
* "\(B\) Further analysis of samples in Figure 2A." The 'Figure 2A' in this example should be changed to '\(A\)' as it is referring to a part label in the same figure.

If the citation doesn't refer to a part label, again check if it refers to a figure from another paper - if so, change it to plain text. If the authors are simply referring to the figure in general, the citation can be left as is. If the figure has been incorrectly captured, for example, if the authors wrote 'Figure 1 - Supplemental Figure 4' and 'Figure 4' has been linked, this needs to be corrected \(in this example, to Figure 1_—_figure supplement 4\).

#### fig-xref-test-5

**Error:** _XXXXXX - Figure citation is in a reference to a figure from a different paper, and therefore must be unlinked._

**Action:** This error will fire if a figure citation appears before a reference e.g. 'See Figure 1 from Smith et al., 1992' \(see more [**here**](figures.md#figures-that-havent-been-provided)\). This figure citation needs to be changed to plain text. 

#### fig-xref-test-6

**Error:** _citation is preceded by a letter or number immediately followed by '\('. Is there a space missing before the '\('? - 'XXXXXX'._

**Action:** This error will fire if a figure citation appears after a letter or number immediately followed by '\('. If there is a missing space, this should be added in, for example in 'DNA\(Figure 2\).' 

#### fig-xref-test-7

**Error:** _citation is followed by a '\)' which in turns is immediately followed by a letter or number. Is there a space missing after the '\)'? - 'XXXXXX'._

**Action:** This error will fire if a figure citation is followed by a '\)' and a letter or number immediately after. If there is a missing space, this should be added in, for example in '\(Figure 2\)DNA.' 

#### fig-xref-test-8

**Warning:** _Figure citation is preceded by 'their'. Does this refer to a figure in other content \(and as such should be captured as plain text\)? - 'XXXXXX'._

**Action:** This warning will fire if a figure citation is preceded by the word _'_their', for example 'Smith et al., 1992, their Figure 2.' As this is referring to Figure 2 in a different paper, this citation should be unlinked. If it isn't possible to tell from the context whether the authors are referring to a figure in a different paper, a query should be left - see more [**here**](figures.md#in-text-citations). 

#### fig-xref-test-9

**Warning:** _Is this figure citation a reference to a figure from other content \(and as such should be captured instead as plain text\)? - XXXXXX'._

**Action:** This warning will fire if a figure citation is followed by the word _'_of', for example 'Figure 2 of Smith et al., 1992.' As this is referring to Figure 2 in a different paper, this citation should be unlinked. If it isn't possible to tell from the context whether the authors are referring to a figure in a different paper, a query should be left - see more [**here**](figures.md#in-text-citations). 

#### fig-xref-test-10

**Error:** _Incomplete citation. Figure citation is followed by text which suggests it should instead be a link to a Figure supplement - XXXXXX'._

**Action:** This error will fire if a figure citation is __followed by text which suggests it should be a link to a figure supplement - for example, if the linked citation text is 'Figure 1' but it is followed by '—figure supplement 1' in plain text. In this example, a citation to Figure 1—figure supplement 1 should replace the citation for Figure 1.

#### fig-xref-test-11

**Error:** _Incomplete citation. Figure citation is followed by text which suggests it should instead be a link to a video supplement - XXXXXX'._

**Action:** This error will fire if a figure citation is __followed by text which suggests it should be a link to a figure video - for example, if the linked citation text is 'Figure 1' but it is followed by '—video 1' in plain text. In this example, a citation to Figure 1—video 1 should replace the citation for Figure 1.

#### fig-xref-test-12

**Warning:** _Incomplete citation. Figure citation is followed by text which suggests it should instead be a link to source data or code - XXXXXX'._

**Action:** This warning will fire if a figure citation is __followed by text which suggests it should be a link to a source data or code supplement - for example, if the linked citation text is 'Figure 1' but it is followed by '—source code 1' or '—source data 1' in plain text. In this example, a citation to Figure 1—source code 1 or Figure 1—source data 1 should replace the citation for Figure 1.

#### fig-xref-test-13

**Warning:** _Figure citation is followed by text which suggests it could be an incomplete citation - XXXXXX'. Is this OK?_

**Action:** This warning will fire if a figure citation is __followed by text which suggests the citation is incomplete, for example if it is followed by the word 'supplement', 'video', or 'source'. Check the context to see whether the citation should be updated to a figure supplement, figure video or source data or code. 

#### fig-xref-test-14

**Warning:** _citation is preceded by 'XXXXXX'. The 'cf.' is unnecessary and should be removed._

**Action:** This warning will fire if a figure citation is preceded by 'cf.', which means 'compare' and is sometimes used to refer the reader to other material for comparison. The 'cf.' can be deleted as it is not eLife's house style to use this. 

#### fig-xref-test-15

**Error:** _Link - 'XXXXXX' - is incomplete. It should have 'figure' or 'Figure' spelt out._

**Action:** This error will fire if a figure citation uses an abbreviation e.g. 'Appendix 1 Fig. 1'. Make sure this is spelled out in full and formatted correctly - in this case, the citation would be corrected to 'Appendix 1_—_figure 1'.

#### fig-xref-test-16

**Warning:** _Figure citation - 'XXXXXX' - is preceded by the text 'XXXXXX' - should it be a figure supplement citation instead?_

**Action:** This warning will fire if a figure citation is preceded by the text 'supp', 'suppl', 'supplemental\(s\)' or 'supplementary', suggesting the citation should link to a figure supplement. Check the context and update the citation as necessary. 

#### fig-xref-test-17

**Warning:** _Figure citation - 'XXXXXX' - is followed by the text 'XXXXXX' - should this text be included in the link text too \(i.e. 'XXXXXX'\)?_

**Action:** This warning will fire if a figure citation includes part labels and is __followed by a letter, for example if the citation text 'Figure 1A-F' is followed by 'and H' in plain text. In this case, 'and H' should also be included in the link text. Check the context and update the citation as necessary. 

#### fig-xref-test-18

**Warning**: _Figure citation - 'XXXXXX' - is followed by the text 'XXXXXX' - should some or all of that text be included in the citation text?_

**Action:** This will fire at all stages for any figure citation which is immediately followed by a hyphen \(or variant such as en dash or em dash\), and a letter or number. For example in this case **Figure 1a**-ai, where the bolded text \(in this example\) is linked. If this fires, check whether the text following the link should instead be included in the link text. This can be done, for example, by checking the panel indicators in the image being linked to.

#### table-xref-conformity-1

**Warning**: _'XXXXXXX' - citation points to table, but does not include the string 'Table', which is very unusual._

**Action**: This will fire at all stages if a main text table citation does not contain the word 'Table'. In cases where this fires for text like 'See **Tables 1** and **2**', the test will fire for the **2** and can be ignored. If this fires for any other reason it likely indicates that the citation directs to the incorrect location.

#### table-xref-conformity-2

**Warning**: _'XXXXXXX' - citation points to an Appendix table, but does not include the string 'table', which is very unusual._

**Action**: This will fire at all stages if an Appendix text table citation does not contain the word 'table'. In cases where this fires for text like 'See **Appendix 1–tables 1** and **2**', the test will fire for the **2** and can be ignored. If this fires for any other reason it likely indicates that the citation directs to the incorrect location.

#### table-xref-conformity-3

**Warning**: _'XXXXXXX' - Citation content does not match what it directs to._

**Action**: This will fire at all stages if the text in a main text table citation does not contain the number of the label that the table directs to. For example if **Table 2**, links to Table 3. 

#### table-xref-conformity-4

**Warning**: _'XXXXXXX' - Citation content does not match what it directs to._

**Action**: This will fire at all stages if the text in an appendix table citation does not contain the number of the label that the table directs to. For example if **Appendix 1–table 1**, links to Appendix 1–table 2. 

#### table-xref-test-1

**Warning**: _'XXXXXXX' - Citation is in the caption of the Table that it links to. Is it correct or necessary?_

**Action**: This will fire at all stages if a table citation is in the caption of the table that it links to. This would indicate either an unnecessary link, or that the citation is incorrect and needs to be updated. This should be queried with the authors:

* XXXXX - Please confirm whether this citation is correct and if not, what it should be updated to.

#### table-xref-test-2

**Warning**: _citation is preceded by a letter or number immediately followed by '\('. Is there a space missing before the '\('?  - 'XXXXX'._

**Action**: This will fire at all stages for text such as 'found at the end\(**Table 1**\).'. In this case, the missing space needs to be added between 'end' and '\(**Table 1**\)'.

#### table-xref-test-3

**Warning**: _citation is followed by a '\)' which in turns is immediately followed by a letter or number. Is there a space missing after the '\)'?  -  'XXXXX'._

**Action**: This will fire at all stages for text such as ' end \(**Table 1**\)and in **Figure 1**'. In this case, the missing space needs to be added between '\(**Table 1**\)' and 'and'.

#### table-xref-test-4

**Warning**: _'Incomplete citation. Table citation is followed by text which suggests it should instead be a link to source data or code - 'XXXXXX'._

**Action**: This will fire at all stages for pieces of text like - 'See **Table 1**–Source data 1', where only Table 1 is linked. In these cases, the citation should be updated to link to the source data file \(provided there is one\). If there is no source data, but it has been referred to, then the following author query needs to be added:

* XXXXXX is cited in the text but has not been provided. Please either correct the citation, provide the file and a title and legend, or confirm that this citation refers to another article.

#### table-xref-test-5

**Warning**: _citation is preceded by 'XXXXXX'. The 'cf.' is unnecessary and should be removed._

**Action**: This will fire at all stages if a table citation is preceded by the text 'cf.'. Shorthand for confer is unnecessary and, as the message text suggests, the 'cf.' should be removed.

#### table-xref-test-6

**Warning**: _Table citation - 'XXXXXX' - is preceded by the text 'XXXXXX - should it be a Supplementary file citation instead?_

**Action**: This will fire at all stages if a table citation is preceded by text such as 'Supplementary' or 'supplemental'. Often when authors have referred to supplementary tables in their original manuscript, what they actually mean is a file which will now have been labelled as a Supplementary file. If it can be determined that the original intention was to refer to a supplementary file \(this can sometimes be determined by using that supplementary file's title/caption and looking at how the authors have referred to the file in the text\), then the text and citation should be updated with a Supplementary file citation. If you are unable to determine this, then the following author query should be added:

* XXXXXXX is cited in the text but has not been provided. Please either correct the citation, provide the file and a title and legend, or confirm that this citation refers to another article.

#### supplementary-material-xref-target-test

**Error**: _xref with @ref-type='XXXXXX' points to XXXXXX. This is not correct._

**Action**: This error will fire if a reference citation `<xref>` element \(e.g. one with the attribute `ref-type="bibr"`\) does not point to a reference but instead to some other element such as a figure. So, for example, a figure citation with the type "bibr" is not allowed: `<xref ref-type="bibr" rid="fig1">Figure 1</xref>`. The tagging should be corrected to use the correct ref-type \(`ref-type="fig"` in this example\).

## 

