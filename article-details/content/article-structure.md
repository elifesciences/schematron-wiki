---
description: The article structure for different article types.
---

# Article structure

## What is article structure?

Article structure refers to the way in which the body of an article is organised. The main text will usually be split into multiple sections, each with a different title. Those sections may then contain sub-sections, those sub-sections may have their own sub-sections, and so on.

These sections are usually discussed in terms of the hierarchy of their titles, referred to as 'headings'.

![Example of article structure displayed in the proofing system, showing Level 1 and Level 2 headings](../../.gitbook/assets/screen-shot-2020-07-21-at-16.16.57.png)

eLife currently allows four levels of headings:

* **Level 1** - top level heading that will appear in the jump-to menu on the published HTML view:

![Level 1 &apos;Introduction&apos; heading in online view](../../.gitbook/assets/screen-shot-2020-07-14-at-16.45.13.png)

![Level 1 &apos;Introduction&apos; heading in PDF](../../.gitbook/assets/screen-shot-2020-07-14-at-16.49.07.png)

* **Level 2** - sub-section heading under a Level 1 heading:

![Level 2 heading &apos;Glycan synthesis in Golgi compartments&apos; heading in online view](../../.gitbook/assets/screen-shot-2020-07-14-at-16.51.12.png)

![Level 2 heading &apos;Glycan synthesis in Golgi compartments&apos; heading in PDF](../../.gitbook/assets/screen-shot-2020-07-14-at-16.51.30.png)

* **Level 3** - sub-section heading under a Level 2 heading:

![Level 3 heading &apos;Promiscuity&apos; in online view](../../.gitbook/assets/screen-shot-2020-07-14-at-16.53.45.png)

![Level 3 heading &apos;Promiscuity&apos; in PDF](../../.gitbook/assets/screen-shot-2020-07-14-at-16.53.21.png)

* **Level 4** - sub-section heading under a Level 3 heading.

![Level 4 heading &apos;Survival and water-electrolyte balance&apos; in online view](../../.gitbook/assets/screen-shot-2020-07-28-at-15.58.34.png)

![Level 4 heading &apos;Survival and water-electrolyte balance&apos; in PDF](../../.gitbook/assets/screen-shot-2020-07-28-at-15.59.05.png)

Any number of Level 2, 3 or 4 headings may appear within their parent sections. However, eLife limits the number of Level 1 headings in research content to between one and four in most cases.

## Allowed article structures

The following are the allowed top-level headings for various different article types. These lists cover Level 1 headings only. There are no rules concerning heading levels 2–4 within these Level 1 sections.

### Research article

The usual structure for a research article is:

* Main text
  * **Introduction**
  * **Results**
  * **Discussion**
  * **Materials and methods**

A common variant of this combines the 'Results' and 'Discussion' sections:

* Main text
  * **Introduction**
  * **Results and discussion**
  * **Materials and methods**

Occasionally, the editors will permit the authors to place their 'Materials and methods' before the 'Results' \(this is a common structure in life sciences articles\):

* Main text
  * **Introduction**
  * **Materials and methods**
  * **Results**
  * **Discussion**

In other cases, if an article is more methodological rather than experimental, 'Methods' may be substituted for 'Materials and methods'. Please note that authors often just put 'Methods' in their article file and in most cases this needs to be changed to the standard heading. Where 'Methods' should be retained, a production note indicating this will be left by Editorial.

* Main text
  * **Introduction**
  * **Methods**
  * **Results**

    **Discussion**

Finally, for modelling articles, the following structure is allowed. This will be more commonly used in tools and resources articles.

* Main text
  * **Introduction**
  * **Model**
  * **Results**
  * **Discussion**

### Research advance

Research advances share the same structure rules as research articles.

### Short report

Short reports may follow the standard research article structure:

* Main text
  * **Introduction**
  * **Results**
  * **Discussion**
  * **Materials and methods**

However, they are not required to do so. The bulk of the text can be placed in an untitled section at the start of the article, with a 'Materials and methods 'section at the end.

* Main text
  * **Materials and methods**

'Materials and methods' is the only mandatory top-level section for short reports.

### Tools and resources

Tools and resources articles may follow the standard research article structure:

* Main text
  * **Introduction**
  * **Results**
  * **Discussion**
  * **Materials and methods**

However, since this article type can be used to describe models, the following structure is also permitted:

* Main text
  * **Introduction**
  * **Model**
  * **Results**
  * **Discussion**

### Registered report

Registered reports will have the following article structure:

* Main text
  * **Introduction**
  * **Materials and methods**

### Replication study

Replication studies share the same structure rules as research articles.

### Scientific correspondence

Scientific correspondence articles may follow the standard research article structure:

* Main text
  * **Introduction**
  * **Results**
  * **Discussion**
  * **Materials and methods**

 However, this is not mandated and other Level 1 headings are permitted. The article structure should follow that indicated in the exported article file.

### Review article

There are no rules for Level 1 headings in review articles. The article structure should follow that indicated in the exported article file.

### Feature content

There are no rules for Level 1 headings in feature content. The article structure should follow that indicated in the exported article file.

## Schematron checks

### Content checks

#### sec-title-list-check

**Warning**: _Section title might start with a list indicator - 'XXXXXX'. Is this correct?_

**Action**: This warning will fire if a section title starts with 1\), 2\), 3\) etc., or with a\), b\), c\) etc. Check to make sure that this content is not actually intended as an entry in a list \(this may require checking the exported article file\). XXXXXX will be the title in question.

#### sec-title-appendix-check

**Warning**: Section title contains the word appendix - 'XXXXXX'. Should it be captured as an appendix?

**Action**: This warning indicates that a section title contains the word 'appendix'. This may be OK if it is a citation of an existing appendix in the article \(e.g. "Results of experiment \(detailed in Appendix 1\)"\). However if the title is just 'Appendix 1', 'Appendix A', 'Appendix: Supplementary methods', this section and its contents should be moved into an appendix at the end of the article. XXXXXX will be the title in question.

#### sec-title-appendix-check-2

**Warning**: _Should the section titled 'XXXXXX' be captured as an appendix?_

**Action**: This warning indicates that a section title contains the word 'Supplementary' or 'Supplemental'. If this occurs in the context of, for example, 'Supplemental methods' or 'Supplemental results', it likely indicates content that the authors do not want to include in their main Materials and methods or Results sections. Such sections should be tagged as appendices in the back of the article, with the section title used as the title for each appendix. XXXXXX will be the title in question.

#### sec-title-abbr-check

**Warning**: _Section title contains the word abbreviation - 'XXXXXX'. Is it an abbreviation section? eLife house style is to define abbreviations in the text when they are first mentioned._

**Action**: This warning will fire if a section title contains the text 'abbreviation', for example 'Abbreviations' or 'Abbreviation list'. Some authors will include a section like this, containing the definitions of every abbreviation used in their article. As the message states, eLife's house style is to define abbreviations within the text, at the first point they are used and at the end of figure/table/file legends. Ensure that all the abbreviations mentioned in the indicated section \(XXXXXX will be the title in question\) are defined at the first point they are used in the text, then delete the indicated section.

#### sec-title-content-mandate

**Error**: _Section title must not be empty._

**Action**: This error indicates that a section title exists without any text in it. This likely means that the text was deleted incompletely. If this fires pre-author, check that the content has been processed into the proofing system correctly. If this fires post-author, check the author's edits. If it is clear that they intended to delete the indicated section entirely \(either by removing the text or merging it into the preceding section\), delete the empty title. If this is not clear, contact the author to confirm their intentions.

#### sec-title-full-stop

**Warning**: _Section title ends with full stop, which is very likely to be incorrect - XXXXXX_

**Action**: Section titles must not end in full stops. Remove the full stop from the indicated section title.

#### sec-title-bold	

**Error**: _All section title content is captured in bold. This is incorrect - XXXXXX_

**Action**: Section titles do not need to be placed in bold font to be styled correctly. Scientific terms can be placed in bold for consistency, but if the entire title is in bold, this formatting should be removed. XXXXXX indicates the affected tittle.

#### sec-title-underline

**Error**: _All section title content is captured in underline. This is incorrect - XXXXXX_

**Action**: Section titles should not be underlined. Individual terms can be underlined for consistency with the main text, but if the entire title is underlined, this formatting should be removed. XXXXXX indicates the affected tittle.

#### sec-title-italic

**Warning**: _All section title content is captured in italics. Is this incorrect? If it is just a species name, then this is likely to be fine - XXXXXX_

**Action**: Section titles should not be entirely in italics unless they only consist of a species name such as _C. elegans_. Scientific terms such as species names should be put in italics for consistency with the main text, but italics should be removed from any accompanying text. XXXXXX indicates the affected tittle.

#### sec-title-dna	

**Warning**: _Section title contains the phrase DNA, but it is not in all caps - XXXXXX_

**Action**: This warning indicates the presence of 'dna', 'dNA', 'dNa' or other variation of 'DNA' not in all caps. Correct this text to 'DNA'. XXXXXX indicates the affected title.

#### sec-title-rna

**Warning**: _Section title contains the phrase RNA, but it is not in all caps - XXXXXX_

**Action**: This warning indicates the presence of 'rna', 'rNA', 'rNa' or other variation of 'RNA' not in all caps. Correct this text to 'RNA'. XXXXXX indicates the affected title.

#### sec-title-dimension

**Warning**: _Section title contains lowercase abbreviation for dimension, when this should always be uppercase 'D' - XXXXXX_

**Action**: This warning indicates that the abbreviation for dimension in, say, 2D, 3D, 4D etc, is a lowercase 'd'. Correct 2d, 3d, 4d etc to 2D, 3D, 4D etc. XXXXXX indicates the affected title.

#### sec-title-hiv	

**Warning**: _Section title contains the word HIV, but it is not in all caps - XXXXXX_

**Action**: This warning indicates the presence of 'hiv', 'hIV', 'hIv' or other variation of 'HIV' not in all caps. Correct this text to 'HIV'. XXXXXX indicates the affected title.

#### section-title-test-1

**Warning**: _text begins a paragraph - XXXXXX - Should it be marked up as a section title \(Heading level XXXXXX\)?_

**Action**: This warning will fire if the entire first sentence of a paragraph is in bold font, italics or underlined. This may mean the authors intended this to be a section title. If this warning appears pre-author, the indicated text should be made into a section title. This should start a sub-section of whichever section originally contained this paragraph. The only exception to this rule is if this would involve making a sub-section of a Level 4 section, which is not allowed. In this case, the text should be left as it is.

If this warning appears post-author, check whether the author has reverted the above kind of change and if so, that this makes sense \(they may prefer the text to appear as bold for highlighting purposes, but do not want it as a heading\).

### XML checks

#### ra-sec-test-1

**Error**: _At least one sec should be present in body for research-article content._

**Action**: This error indicates that there are no section elements &lt;sec&gt; within an article using the research content template.

#### ra-sec-test-2

**Warning**: XXXXXX doesn't have child sec\[@sec-type='intro'\] in the main body. Is this correct?

**Action**: This warning indicates that there is no section element `<sec>` with the type attribute `@sec-type` equal to 'intro'. If an Introduction section is present in an article, it must have the `@sec-type` with a value of 'intro'. An Introduction section should be present for all research content except for short reports, which may have one but do not need to.

#### ra-sec-test-3

**Warning**: _main body in XXXXXX content doesn't have a child sec with @sec-type whose value is either 'materials\|methods', 'methods' or 'model'. Is this correct?_

**Action**: This warning indicates that there is no section element `<sec>` with the type attribute `@sec-type` equal to 'materials\|methods', 'methods' or 'model'. If a Materials and methods, Methods, or Model section is present in an article, it must have the `@sec-type` with a corresponding value. One of these sections should be present in all research content.

#### ra-sec-test-4

Warning: \_main body in XXXXXX content doesn't have either a child sec\[@sec-type='results\|discussion'\] or a sec\[@sec-type='results'\] and a sec\[@sec-type='discussion'\]. Is this correct?

**Action**: This warning indicates that there is no section element `<sec>` with the type attribute `@sec-type` equal to 'results\|discussion', 'results' or 'discussion'. If a Results and discussion, Results, or Discussion section is present in an article, it must have the `@sec-type` with a corresponding value. One of these sections should be present in all research content.

#### top-sec-id

**Error**: _top-level must have @id in the format 's0', where 0 relates to the position of the sec. It should be XXXXXX._

**Action**: The Level 1 section elements `<sec>` in an article should each have an `@id` attribute, the value of which is determined by the order of the sections. The first Level 1 section should the id 's1', the second and id of 's2' and so on.

#### sec-conformity

**Warning**: _top level sec with title - XXXXXX - is not a usual title for XXXXXX content. Should this be captured as a sub-level of XXXXXX?_

**Action**: 

#### lower-sec-test-1

**Error**: This sec @id must be a concatenation of the parent sec @id, '-', and the position of this sec relative to other sibling secs - XXXXXX.

**Action**: Each sub-section element &lt;sec&gt; should have 

#### sec-type-title-test

**Warning**: title of a sec with an @sec-type='XXXXXX' should usually be 'XXXXXX'.

**Action**: The title of a section should correspond to the value of the `@sec-type`, if present. The full list of these values and the corresponding title text is as follows:

| Title | @sec-type |
| :--- | :--- |
| Introduction | intro |
| Results | results |
| Results and discussion | results\|discussion |
| Discussion | discussion |
| Materials and methods | materials\|methods |
| Methods | methods |
| Model | model |

Correct the title to match the `@sec-type` value.

#### body-top-level-sec-id-test

**Error**: _This sec id must be a concatenation of 's' and this element's position relative to it's siblings. It must be XXXXXX._

**Action**: The `@id` attribute on a section should reflect its position within higher-level sections. So, for example, Level 2 sections, within a Level 1 section with the id s4, would have the ids s4-1, s4-2, s4-3 and so on. A Level 3 section within the third of these would have the ids s4-3-1, s4-3-2, s4-3-3 and so on. Correct the id value to match the one recommended by the error message \(XXXXXX\).

#### low-level-sec-id-test

**Error**: _sec id must be a concatenation of it's parent sec id and this element's position relative to it's sibling secs. It must be XXXXXX._

**Action:** The `@id` attribute on a section should reflect its position within higher-level sections. So, for example, Level 2 sections, within a Level 1 section with the id s4, would have the ids s4-1, s4-2, s4-3 and so on. A Level 3 section within the third of these would have the ids s4-3-1, s4-3-2, s4-3-3 and so on. Correct the id value to match the one recommended by the error message \(XXXXXX\).

#### sec-test-1

**Error**: _sec must have a title_

**Action**: Each section should have a title. Check that the text for the title has not been captured as part of the first paragraph.

#### sec-test-2

**Error**: _sec appears to contain no content. This cannot be correct._

**Action**: Each section should contain a title and either one or more paragraphs, or one or more sub-sections.

## XML structure

```markup
<sec sec-type="intro" id="s1">
    <title>Introduction (Level 1 heading)</title>
    <p>Some text, in a paragraph.</p>   
    <sec id="s1-1"> 
        <title>A level 2 heading</title>
        <p>Some reference citation (<xref ref-type="bibr" rid="bib6">Brettar
        et al., 2004b</xref>).</p>
        <sec id="s1-1-1"> 
            <title>A level 3 heading</title> 
            <p>More text.</p>
            <p>More text.</p>
        </sec>      
        <sec id="s1-1-2"> 
            <title>Another level 3 heading</title>
            <p>Yet more text.</p>
            <p>Yet more text.</p>
            <sec id="s1-1-2-1">
                <title>A level 4 heading</title> 
                <p>More text.</p>
                <p>More text.</p>
            </sec>
        </sec>
    </sec>
</sec>
        
```

