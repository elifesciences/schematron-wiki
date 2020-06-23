---
description: How to handle the different types of Feature content
---

# Feature content

## What is Feature content?

At eLife, the term 'Feature content' covers all non-research content published by the journal. This is synonymous with 'Magazine content' and can be found under this heading on the eLife website: [https://elifesciences.org/magazine](https://elifesciences.org/magazine).

This content is overseen by the Features team and consists in part of blogposts and [podcasts](https://elifesciences.org/podcast) that do not required Production intervention to publish. Digests are also published in a dedicated [section](https://elifesciences.org/digests) under the magazine heading, in addition to being included in the related article.

In addition to this, however, there are four categories of Feature article that come through the Production process:

* **Insight** - a commentary article accompanying one or more research articles, usually written by the editors or reviewers who worked on the article, providing context for a broader audience and discussing the importance of the findings being reported.
* **Editorial** - an editorial piece written by one or more of eLife's deputy or senior editors, or the editor-in-chief, usually addressing a specific issue or development in the scientific community and/or eLife in particular.
* **Feature contribution** - an article that is not reporting any scientific findings but instead offers a perspective or comment on events, issues or developments in the scientific community.
* **Feature research** - an article that reports the results of meta-research; that is, studies carried out on the research community and its practices - research on how research is done. 

### Feature templates

There are five Feature templates that map to the above article types. Aside from differences in the content of the articles, these reflect different PDF layouts.

| Template number | Article type | PDF format | Possible content |
| :--- | :--- | :--- | :--- |
| Template 1 | Insight | Two column, with key information box on first page; one-sentence abstract displayed as stand-first | Labelled figures, no digest, no decision/response, no editors/reviewers |
| Template 2 | Editorial | Two column, one-sentence abstract displayed as stand-first | Illustrations, no digest, pull-quotes, no decision/response, no editors/reviewers |
| Template 3 | Feature contribution | Two column, one-sentence abstract displayed as stand-first | Illustrations, no digest, pull-quotes, no decision/response, no editors/reviewers |
| Template 4 | Feature contribution | Two column, full abstract | Labelled figures, tables, boxes, no digest, pull-quotes, no decision/response, no editors/reviewers |
| Template 5 | Feature research | Two column, full abstract | Labelled figures, tables, boxes, no digest, possible decision/response, editors/reviewers |

The template for each Feature article will be indicated using the article file name in the exported files, for example "elife50543\_template3.docx" or "elife46563\_template4.docx".





## Schematron checks



feat-custom-meta-test-1	article-meta/custom-meta-group/custom-meta\[meta-name='Template'\]/meta-value	\*Error\*: \_XXXXXX is not allowed in a Template type meta-value.\_

feat-custom-meta-test-2	article-meta/custom-meta-group/custom-meta\[meta-name='Template'\]/meta-value	\*Error\*: \_Template type meta-value must one of '1','2','3','4', or '5'.\_

feat-custom-meta-test-info	article-meta/custom-meta-group/custom-meta\[meta-name='Template'\]/meta-value	\*Info\*: \_Template XXXXXX.\_

feat-custom-meta-test-3	article-meta/custom-meta-group/custom-meta\[meta-name='Template'\]/meta-value	\*Error\*: \_XXXXXX must be a template 1. Currently it is a template XXXXXX.\_

feat-custom-meta-test-4	article-meta/custom-meta-group/custom-meta\[meta-name='Template'\]/meta-value	\*Error\*: \_XXXXXX must be a template 2. Currently it is a template XXXXXX.\_

feat-custom-meta-test-5	article-meta/custom-meta-group/custom-meta\[meta-name='Template'\]/meta-value	\*Error\*: \_XXXXXX must be a template 3, 4, or 5. Currently it is a template XXXXXX.\_





