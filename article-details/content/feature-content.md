---
description: How to handle the different types of feature content
---

# Insights, Editorials, and Feature articles

{% hint style="info" %}
For the changelog, click [**here**](feature-content.md#changelog).
{% endhint %}

## What is feature content?

At eLife, the term 'feature content' covers all non-research content published by the journal. This is synonymous with 'magazine content' and can be found under this heading on the eLife website: [**https://elifesciences.org/magazine**](https://elifesciences.org/magazine).

This content is overseen by the Features team and there categories of feature article come through the production process:

* **Insight** - a commentary article accompanying one or more research articles, usually written by the editors or reviewers who worked on the article, to provide context for a broader audience and highlight the importance of the findings being reported.
* **Editorial** - an editorial piece written by eLife staff, one or more of eLife's deputy or senior editors, or the editor-in-chief, usually addressing a specific issue or development in the scientific community in general and/or at eLife in particular.
* **Feature article** - a general article type that covers a variety of content, ranging from short essays and opinion articles that do not have decision/response sections, supporting files etc., to substantial meta-research articles that can contain multiple figures, figure supplements, source data, decision/response sections etc.

### Magazine templates

There are five content templates that map to the above article types. Aside from differences in the content of the articles, these templates reflect different PDF layouts.

| Template number                                                                                         | Article type    | PDF format                                                                                         | Possible content                                                                                                                                                                  |
| ------------------------------------------------------------------------------------------------------- | --------------- | -------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| ****[**Template 1**](https://drive.google.com/file/d/0B2wDI5EMHiJ-Y1gyNVVySENwMmM/view?usp=sharing)**** | Insight         | Two column, with key information box on first page; one-sentence abstract displayed as stand-first | Labelled figures, no digest, no decision/response, no editors/reviewers, no funding, no data availability                                                                         |
| ****[**Template 2**](https://drive.google.com/file/d/0B2wDI5EMHiJ-Zm5VR0dxTlk4dGc/view?usp=sharing)**** | Editorial       | Two column, one-sentence abstract displayed as stand-first                                         | Illustrations and pull-quotes, no digest, no decision/response, no editors/reviewers, no funding, no data availability                                                            |
| ****[**Template 3**](https://drive.google.com/file/d/0B2wDI5EMHiJ-VENsOTczcExQRjQ/view?usp=sharing)**** | Feature article | Two column, one-sentence abstract displayed as stand-first                                         | Illustrations and pull-quotes, no digest, no decision/response, no editors/reviewers, no funding, no data availability                                                            |
| ****[**Template 4**](https://drive.google.com/file/d/0B2wDI5EMHiJ-NVJEekI2UUNyaGM/view?usp=sharing)**** | Feature article | Two column, full abstract                                                                          | Labelled figures, tables, boxes, additional files, no digest, pull-quotes, no decision/response, no editors/reviewers, no funding, no data availability                           |
| ****[**Template 5**](https://drive.google.com/file/d/0B2wDI5EMHiJ-TDU1bFpfWm9OX3c/view?usp=sharing)**** | Feature article | Two column, full abstract                                                                          | Labelled figures, tables, boxes, additional files, no digest, possible decision/response, editors/reviewers, funding information, data availability section, author contributions |

The required template will be indicated using the article file name in the exported files, for example "elife50543\_template3.docx" or "elife46563\_template4.docx".

### Unique features of feature content

Feature content includes the following items not found in research content:

* **Title prefix **- a brief category label displayed in front of the title, currently captured in the XML as a 'sub-display-channel' subject element. There is no predefined list of these prefixes - while some are used to categorise feature articles (e.g. 'Living Science' or 'Meta-Research'), those used in Insights will be chosen based on the specific content being covered. The text should be in title case.

![Example sub-display channels](../../.gitbook/assets/screen-shot-2020-06-23-at-15.52.41.png)

* **Author bio** - a short description of the author's affiliation and any notable positions held. This is given in addition to author affiliations, rather than replacing them, but supersedes them for display in the PDF and online.

![Example of an author bio](../../.gitbook/assets/screen-shot-2020-06-23-at-15.55.43.png)

* **No set article structure** - Insights, Editorials and Feature articles do not have predefined structures or set level 1 headings. Further details on this can be found on the [**Article structure**](article-structure/#feature-content) page.
* **Illustrations** - unlabelled figures with a single sentence description. May also include an attribution.

![Example of an illustration](../../.gitbook/assets/screen-shot-2020-06-23-at-15.58.57.png)

* **Key info box** - in Insights specifically, the details of the article(s) being commented upon are given in a box on the first page of the PDF. This content is not currently displayed online (as with other instances of related articles, the related research article will appear in the right-hand column).

![Example of a key info box](../../.gitbook/assets/screen-shot-2020-06-23-at-16.03.20.png)

![Example of related article display in an Insight](../../.gitbook/assets/screen-shot-2020-10-06-at-14.40.55.png)

* **Pull-quotes** - in Templates 2-4, pull-quotes can be used to highlight key points in the text.

![Example of a pull-quote](../../.gitbook/assets/screen-shot-2020-07-07-at-15.47.06.png)

## Submission and export of feature content

Feature content is submitted to eLife via two paths: an article arrives through the normal submission process, or an article is commissioned or invited by the Features team. When articles are submitted via the normal process, they will go through peer review, usually overseen by the Features editors, and will likely have a decision letter and author response as a result. Commissioned articles are not reviewed and so will have no editors or review materials associated with them. These will be uploaded to the submissions system by the Features team, who will use the 'auto-accept' option to bypass the reviewing process.

In both cases, the Features team will carry out checks and editing tasks before the articles are exported for production. Part of this involves formatting the article files using 'pseudo-tagging' to designate the various parts of the content for processing. If the article needs to be published as an accepted manuscript (PoA), then this will need to be done before being tagged to ensure a clean accepted manuscript is published. When the PoA process has been carried out, the article should be held in the export queue until the pseudo-tagging has been added.

![Example of pseudo tagging in the article file for an Editorial](../../.gitbook/assets/screen-shot-2020-07-01-at-17.47.09.png)

The article file will be renamed to indicate which template should be used and any figure files will be renamed to indicate the width at which they should be placed in the PDF. Since feature content uses a two-column PDF template, there are more options for figure placement than in research content. These are described using the following classes:

* **Class A** = 1 column wide
* **Class B** = 1 column plus the margin wide
* **Class C** = 2 columns wide
* **Class D** = 2 columns plus the margin wide (i.e. full page)

The class chosen for each figure will be indicated in the file name.

![Examples of updated file names for feature content in the submission system](../../.gitbook/assets/screen-shot-2020-07-01-at-18.16.03.png)

Once the files have been edited, the article will be exported. At this point, the Features team will contact the Production team by email to advise them whether a decision/response will be included, or if there are unusual elements (such as complex boxes, animations etc.), or to give a specific deadline for getting the proof to the authors.

## Production process for feature content

* ****[**Pre-editing**](feature-content.md#pre-editing) - handled by the content processors
* ****[**Pre-author checks**](feature-content.md#pre-author-checks) - carried out by the Production team
* ****[**Author proofing**](feature-content.md#author-proofing) - the author checks the proof
* ****[**Feature review**](feature-content.md#feature-review) - a post-author check carried out by the Features team
* ****[**Post-author checks**](feature-content.md#post-author-checks) - final checks carried out by the Production team
* ****[**Publication**](feature-content.md#publication) - carried out by the Production team

### Pre-editing

Feature content should be processed as soon as possible after export (within 24 hours for Insights, Editorials and Template 3/4 content, within 48 hours for Template 5 content). If more time is required, the content processors should let the Production team know as soon as possible.

No copy-editing should be required for feature content as this will already have been carried out by the Features team prior to export. In very rare cases where copy-editing is required, the Features team will advise the Production team, who will request that the article is moved into the copy-editing workflow.

Once a feature article has been processed, it will be moved to the pre-author check stage to allow the Production team to check the content prior to author proofing.

### Pre-author checks

The Production team will check feature content before it goes out to the author to ensure that it has been processed correctly, and to make sure any special requirements have been fulfilled. In order to do this, it will be necessary to open the article in the submission system to compare against the processed version.

The following items should be checked:

#### Title prefix

The title prefix is displayed as the 'sub display channel' in the article details page. This should be in title case (as opposed to the sentence case used for all other eLife headings).

![Title prefix in the proofing system](../../.gitbook/assets/screen-shot-2020-06-30-at-15.47.36.png)

#### Author bio

The author bio displays under the author name and can be edited in the author details panel.

![Author bio in the proofing system](../../.gitbook/assets/screen-shot-2020-06-30-at-15.47.55.png)

The author bio and the affiliations for each author should be consistent, but they do not need to be identical. For example, the author bio might say that "**Louise Smith** is in the Department of Genetics and the Institute of Neuroscience, University of Bristol, Bristol, United Kingdom", whereas the affiliations will be given separately as "Department of Genetics, University of Bristol, Bristol, United Kingdom" and "Institute of Neuroscience, University of Bristol, Bristol, United Kingdom".

In the text of the bio, the author's name should be bold and the bio should not end in a full-stop.

#### Key info box

In Insight articles, a key info box will be displayed at the start of the Content page, just below the Abstract. It should contain the details of the related research article(s), with the DOI hyperlinked to the correct page. 

![Key info box in the proofing system](../../.gitbook/assets/screen-shot-2020-07-07-at-15.40.35.png)

#### Pull-quotes

Pull-quotes should be placed after the same paragraphs indicated in the article file.

![Pseudo-tagging for a pull-quote in an article file](../../.gitbook/assets/screen-shot-2020-07-07-at-15.50.26.png)

![Pull-quote in proofing system](../../.gitbook/assets/screen-shot-2020-07-07-at-15.56.01.png)

Pull-quotes should ideally appear at a similar point in the PDF; however this may not be possible if the figure and column layout does not allow it.

#### PDF display

Figures in the PDF should display at the correct width corresponding to the class given in the file name (see [**above**](feature-content.md#submission-and-export-of-feature-content)).

### Author proofing

Author proofing for feature content proceeds in the same manner as for research content. However, the proofing email will be copied to the Features team and the Features editor. Author correspondence during proofing should be handled by whichever of the Production or Features teams is most appropriate. That is, technical questions about the proofing system and problems with the proof should be handled by the Production team while requests to make extensive changes should be referred to the Features team.

### Feature review

Once author proofing is complete, the article will move into the 'Feature Review' stage to allow the Features team to check over the authors' edits. They will be alerted with an email notification when this occurs.

After they have completed their checks, they will sign the article off to 'Post Author Validation' with the content processors (the same stage research content goes into following Author Review). If the Features team cannot make required corrections via the proofing system, they will send instructions to the Production team via email or slack. Production will either pass the instructions on to the content processors or make a note to fix the outstanding issues at the post-author check stage.

### Post-author checks

The Production team will carry out final post-author/post-Features team checks in the same manner as post-author checks for research content. Any remaining issues should be resolved and the author/feature changes should be checked and accepted. If the authors have requested an additional proof, the article should be sent back to them following the normal procedure (signing the article off to Author review for a second time). However, if the Features team have requested an additional proof, a PDF should be shared with them via email or Slack. Any further changes they request should be carried out by the Production team.

### Publication

Insight articles should be published alongside the research content to which they are related. Usually, the typeset version of record for this content will be ready by the time the Insight has gone through proofing. In the event that the research content is not ready for VoR publication and it has not been published as an accepted manuscript, the Insight will ideally be held until the related article is ready. If the article has been published on acceptance (PoA), the Features team should be contacted to ask if the related Insight should be held until the VoR is ready. They may decide to go ahead with publication of the Insight as it will be linked to the PoA version of the research content.

Publication of other feature content follows the same process as for research content. If no specific date has been requested for Editorials or Feature articles, they should be published as soon as they are ready to go.

## Schematron checks

### Content

#### feature-title-test-1

**Error**: _title starts with the sub-display-channel. This is certainly incorrect._

**Action**: This error indicates that the title prefix (`sub-display-channel`) has been included at the start of the article title as well as in the correct field. Remove the repeated text from the article title.

#### feature-subj-test-2

**Error**: _The content of the sub-display-channel should be in title case - XXXXXX_

**Action**: Correct the title prefix (`sub-display-channel`) so that it is in title case rather than, for example, in sentence case. XXXXXX will be the text of the title prefix.

#### feature-subj-test-3

**Error**: _sub-display-channel ends with a colon. This is incorrect._

**Action**: Delete the colon from the end of the title prefix (`sub-display-channel`).

#### feature-author-test-1

**Error**: _Author must contain child bio in feature content._

**Action**: Every author in a feature article should have a bio element. The text for this should be given in the exported article file. Ensure that this is added to the author indicated. If the bio has not been provided, the Production team should be alerted and they may need to contact the Features team to get the required text.

#### feature-bio-test-1

**Error**: _bio must contain a bold element that contains the name of the author - XXXXXX._

**Action**: The author's name in the bio should be in bold. Check that this has been done and that the bold formatting does not spill over into the rest of the text. XXXXXX will be the affected author.

#### feature-bio-test-2

**Warning**: _bio does not contain the institution text as it appears in their affiliation ('XXXXXX'). Is this correct?_

**Action**: This warning indicates that an author's bio does not contain the affiliation text as it appears in the affiliation associated with that author. This may indicate that there is an error in one or the other, such as a misspelling in the affiliation text. Check and correct this if necessary. However, it might also be the case that the bio text combines two departments in one mention. For example, the following bio and affiliations will not contain the exact same text, but this is acceptable:

> **Louise Smith** is in the Department of Genetics and the Institute of Neuroscience, University of Bristol, Bristol, United Kingdom
>
> > Affiliation 1: "Department of Genetics, University of Bristol, Bristol, United Kingdom"
> >
> > Affiliation 2: "Institute of Neuroscience, University of Bristol, Bristol, United Kingdom".

#### feature-bio-test-6

**Warning**: _Some of the text from XXXXXX's affiliations does not appear in their bio - XXXXXX. Is this correct?_

**Action**: This warning indicates that an author's bio does not contain the affiliation text as it appears in the affiliation associated with that author. This may indicate that there is an error in one or the other, such as a misspelling in the affiliation text. Check and correct where necessary. If it is not clear which are the correct affiliation details, the Features team should be queried.

#### feature-bio-test-3

**Error**: _bio cannot end with a full stop - 'XXXXXX'._

**Action**: Remove the full-stop from the end of the author bio. XXXXXX will be the text of the affected bio.

#### feature-bio-test-4

**Error**: _One and only 1 \<p> is allowed as a child of bio. XXXXXX_

**Action**: Only a single paragraph should be present in the author bio. If more than one paragraph is present, the text should be reformatted into a single paragraph. XXXXXX will be the text of the affected bio.

#### feature-template-test-1

**Error**: _XXXXXX is a template XXXXXX but it has a decision letter or author response, which cannot be correct, as only template 5s are allowed these._

**Action**: Only Template 5 feature articles should have decision letter and author response sections. This error indicates that an article using another template has a decision letter or author response section. This will need to be resolved, either by removing the inappropriate sections or by changing the article to Template 5. The Features team will likely need to be asked which is the correct course of action, unless it is clear that the decision/response has been added in error.

#### feature-template-test-2

**Error**: _XXXXXX is a template XXXXXX so the article element must have a @article-type="research-article". Instead the @article-type="XXXXXX"._

**Action**: Template 5 feature articles must have an attribute of `@article-type="research-article"` on their `<article>` element. If this error fires, it indicates that the article-type attribute has another value and this needs to be corrected to "research-article". 

#### feature-template-test-3

**Warning**: _XXXXXX is a template XXXXXX but it does not (currently) have a decision letter. Is that OK?_

**Action**: This warning will fire if a Template 5 article does not have a decision letter section. Check the article notes - if no decision/response was expected for the current article, this should have been recorded. If there are no notes, the Production team should contact the Features team to check the status of the decision/response for the article.

#### feature-template-test-4

**Warning**: _XXXXXX is a template XXXXXX but it does not (currently) have an author response. Is that OK?_

Action: This warning will fire if a Template 5 article does not have an author response section. Check the article notes - if no decision/response was expected for the current article, this should have been recorded. If there are no notes, the Production team should contact the Features team to check the status of the decision/response for the article.

#### final-test-r-article-d-letter-feat

**Warning**: _A decision letter should be present for research articles. Feature template 5s almost always have a decision letter, but this one does not. Is that correct?_

**Action**: This warning will fire if a Template 5 article does not have a decision letter section. Check the article notes - if no decision/response was expected for the current article, this should have been recorded. If there are no notes, the Production team should contact the Features team to check the status of the decision/response for the article.

#### feature-templates-no-bre

**Error**: _XXXXXX is a template XXXXXX, which means that it should not have any BREs. This XXXXXX has XXXXXX. Please remove any senior/reviewing editors._

**Action**: Template 1–4 articles should not have any editor or reviewer information. Remove this information from the article to clear this error.

#### feature-templates-author-cont

**Warning**: _XXXXXX is a template XXXXXX, which means that it should very likely not have any Author contributions. This XXXXXX has XXXXXX. Please check with eLife production whether author contributions should be present._

**Action**: This warning indicates that the authors of a Template 1, 2, 3 or 4 article have author contributions. This is highly unusual as articles using these templates do not typically include contributions. However, they are allowed in unusual cases. Check for any notes indicating that contributions are required for the current article. If there are no notes, the Production team will need to contact the Features team to determine if contributions should be included.

#### insight-box-test-1

**Warning**: A citation for related article XXXXXX is not included in the related-article box text in the body of the article. 'XXXXXX' is not present (or is different to the relevant passage) in 'XXXXXX'

**Action**: This warning indicates that one of the related articles to which the Insight is linked does not appear in a Key info box at the start of the Insight's content. The details for the indicated related article should be added to the Key info box.

#### insight-related-article-test-1

**Error**: Insight related article links must have the related-article-type 'commentary-article'. The link for XXXXXX has 'XXXXXX'.

**Action**: The link from an Insight article to the related research article should have the type 'commentary-article'. If another type has been used, the link type must be corrected (this may require removing the existing link and then re-linking the article from the proofing system dashboard).

#### final-feat-ok-test

**Error**:_ XXXXXX element contains \[OK] or \[OK?] which should be removed - XXXXXX_

**Action**: This error indicates that the text "**\[OK]**" or "**\[OK?]**" is present in the article. The Features team use this text as a way of querying the author during pre-production editing. It should be removed before final publication.

### Structure

#### feat-custom-meta-test-1

**Error**: _XXXXXX is not allowed in a Template type meta-value._

**Action**: In the template type element `<custom-meta specific-use="meta-only">` (that is, one with the `<meta-name>Template</meta-name>`), the value (provided in a `<meta-value>` element) should be a single digit with no other elements. This error will fire if additional elements are present within `<meta-value>`. These elements (e.g. formatting, bold, italics) should be removed. An example of a correction template `<custom-meta>` element is shown below:

```markup
<custom-meta-group>
    . . .
    <custom-meta specific-use="meta-only">
        <meta-name>Template</meta-name>
        <meta-value>4</meta-value>
    </custom-meta>
</custom-meta-group>
```

#### feat-custom-meta-test-2	

**Error**: _Template type meta-value must one of '1','2','3','4', or '5'._

**Action**: This error indicates the template type in the XML (see above) is not 1, 2, 3, 4 or 5. Correct the template type to the one indicated by the name of the article file in the export package (e.g. ). If the template number given in the article file name is a value other than 1, 2, 3, 4 or 5, the Production team should check which value the Features team intended for the article and instruct the content processors accordingly.

#### feat-custom-meta-test-info	

**Info**: _Template X._

**Action**: No action required, this is just an information message stating the template used for the article. X will be the number of the template being used (1, 2, 3, 4 ,5).

#### feat-custom-meta-test-3	

**Error**: _XXXXXX must be a template 1. Currently it is a template XXXXXX._

**Action**: An article with the article type 'Insight' must use Template 1. The content processor will need to change the article to this template.

#### feat-custom-meta-test-4	

**Error**: _XXXXXX must be a template 2. Currently it is a template XXXXXX._

**Action**: An article with the article type 'Editorial' must use Template 2. The content processor will need to change the article to this template.

#### feat-custom-meta-test-5

**Error**: _XXXXXX must be a template 3, 4, or 5. Currently it is a template XXXXXX._

**Action**: Any feature article that is not an Insight or an Editorial must use Template 3, 4 or 5. This error indicates that a feature article has been assigned Template 1 or 2. Check the exported article package to confirm which template should have been used. If this also indicates an incorrect template, the Features team will need to be asked to provide the correct template.

#### feature-article-category-test-1

**Error**: _article categories for XXXXXX must contain one and only one subj-group\[@subj-group-type='sub-display-channel'._

**Action**: Only one title prefix (sub-display-channel) is allowed per article. This is captured in the XML as the element  \<subj-group subj-group-type="sub-display-channel">. This error indicates that zero or more than one element of this type are present. Remove any extra title prefixes. If no title prefix is present in the article file, the Features team must be contacted to provide one. XXXXXX will be the article type.

#### feature-subj-test-4

**Error**: _There is more than one sub-display-channel subject. This is incorrect._

**Action**: Only one title prefix (sub-display-channel) is allowed per article. This error indicates that two `<subject>` elements have been included in  `<subj-group subj-group-type="sub-display-channel">`. Remove any extra title prefixes/`<subject>` elements to correct this.

#### feature-bio-test-5

**Error**: _XXXXXX is not allowed as a child of \<bio>. - XXXXXX_

**Action**: The only child element allowed of the `<bio>` element is paragraph `<p>`. If this error fires, it indicates that another element has been included as a child of `<bio>`. The content processors will need to correct this.

#### features-custom-meta-presence

**Error**: _2 custom-meta\[@specific-use='meta-only'] must be present in custom-meta-group for XXXXXX._

**Action**: Two and only two `<custom-meta>` elements with the attribute `specific-use='meta-only'` should be present in the `<custom-meta-group>` element (the impact statement and the template value). This warning will fire if there are different numbers of \<custom-meta> elements in this group. Remove any extra elements and add in any that are missing. The correct XML will look like:

```markup
<custom-meta-group>
    <custom-meta specific-use="meta-only">
        <meta-name>Author impact statement</meta-name>
        <meta-value>The linguistic characteristics of peer review reports are not 
        influenced by research area, type of review or reviewer gender, which is
        evidence for the robustness of peer review.</meta-value>
    </custom-meta>
    <custom-meta specific-use="meta-only">
        <meta-name>Template</meta-name>
        <meta-value>5</meta-value>
    </custom-meta>
</custom-meta-group>
```

## Changelog

