---
description: >-
  Asset- and article-level source files, supplementary files and other
  additional filess
---

# Additional files

## What are additional files?

Besides the figures, figure supplements, tables and videos that are presented throughout an article, eLife also allows authors to include files that can be downloaded to support their findings. These can be uploaded at the level of the entire article \(in which case they sit in an 'additional files' section at the back of the article\) or to accompany particular display assets \(that is, they will be associated with a figure, table or video\). eLife allows the following varieties of additional file.

### Article-level source files

Source data and source code may be provided to give readers access to the raw data and the scripts that were used to process it. During the submission process, authors are in fact encouraged to provide these files to aid the reviewers and, in the event of acceptance, to allow readers to easily reproduce the work.

In the event that the data is too large or extensive to be neatly captured within one or two Excel files, it may be uploaded as a generated dataset to an external repository. In such cases, it should not be listed as a source data file but instead described in the [**Data availability section**](../data-availability.md). See **below** for how to deal with cases where authors become confused on this point.

Source code may also be uploaded to an external repository such as GitHub and this is often preferable to being included as an attached file as it permits proper licensing of the code \(see [**Archiving code**](../../../toolkit/archiving-code.md) for more details on this\). Again, if source code is hosted away from the article, it should not be listed as a source code file.

These filetypes are labelled respectively Source data 1, Source data 2, etc. and Source code 1, Source code 2, etc.

### Asset-level source files

Figures \(and their supplements\), videos and tables may be accompanied by the source data and/or source code that was used to generate them. The source data will usually consist of tables of raw data but may also include unprocessed images, editable version of charts provided as flat images, or multiple-page documents that cannot be typeset as single figures/figure supplements. Source code will usually comprise scripts that were used to process the data or to generate the graphs shown in figures.

To indicate that they are associated with a display asset, these files will be named Figure 1—source data 1, Figure 2—figure supplement 1—source data 1, Table 3—source data 1, Video 4—source data 1, etc. and Figure 1—source code 1, Figure 2—figure supplement 1—source code 1, Table 3—source code 1, Video 4—source code 1, etc. The numbering restarts for each asset e.g. Figure 1—source data 1, Figure 2—source data 1, Figure 2—source data 2, Figure 3—source data 1.

### Audio files

At present, eLife cannot support inline audio-only playback so audio files \(as distinct from videos\) should be included as additional files.

They are labelled as Audio file 1, Audio file 2, etc.

### Reporting standards

Reporting standard documents describe particular protocols and standards that the authors followed when they were collecting their results. These generally take the form of check-lists. Please note that these are entirely distinct from the transparent reporting form that eLife requests authors complete on submission.

They are labelled as Reporting standard 1, Reporting standard 2, etc.

### Supplementary files

When authors have accompanying documents that do not fit into the other categories of additional file, they may include these as supplementary files. These can cover lists of plasmids, operating manuals for resources, experimental design documentation, supporting tables that do not count as source data, lists of datasets used, and so on. Broadly speaking it is preferable that authors use one of the specific categories of file and include tables in their main text but eLife accepts this is not always possible.

### Transparent reporting form



## What needs to be checked?

There are relatively few checks required for these files. A descriptive title for each is preferred but technically not required; authors should be queried to provide one during proofing but it will not cause any fatal errors to proceed without in cases where they judge that the label is sufficient description.

## Schematron checks

### Content checks

#### fig-data-test-1

**Warning**: _XXXXXX is figure level source data, but contains 1 figure citation which is a link to a figure supplement - should it be figure supplement level source data?_

**Action**: This warning indicates that the description for a source data file associated with a main figure contains a citation to a figure supplement. In cases where the source data title or legend mentions both the main figure and one or more figure supplements \(e.g. "Source data for Figure 3A and Figure 3—figure supplement 1"\) this warning can be ignored. In cases where only a figure supplement is mentioned \(e.g. "Source data for Figure 4—figure supplement 1D"\) the source data should be moved so that it is associated with the cited figure supplement.

In cases where the source data title or legend mentions multiple figure supplements \(e.g. Source data for Figure 1–figure supplements 1–4"\) it is appropriate to leave it associated with the main figure \(Figure 1 in this example\) since it wouldn't be correct to associate it with any single figure supplement.

#### fig-code-test-1

**Warning**: _XXXXXX is figure level source code, but contains 1 figure citation which is a link to a figure supplement - should it be figure supplement level source code?_

**Action**: This warning indicates that the description for a source code file associated with a main figure contains a citation to a figure supplement. In cases where the source code title or legend mentions both the main figure and one or more figure supplements \(e.g. "Source code for Figure 3A and Figure 3—figure supplement 1"\) this warning can be ignored. In cases where only a figure supplement is mentioned \(e.g. "Source code for Figure 4—figure supplement 1D"\) the source code should be moved so that it is associated with the cited figure supplement.

In cases where the source code title or legend mentions multiple figure supplements \(e.g. Source code for Figure 1–figure supplements 1–4"\) it is appropriate to leave it associated with the main figure \(Figure 1 in this example\) since it wouldn't be correct to associate it with any single figure supplement.

#### fig-data-test-2

**Error**: _'XXXXXX' ends with XXXXXX, but it is placed XXXXXX. Either it is misnumbered or it should be moved to a different position._

**Action**:

#### fig-data-id

**Error**: _The id for figure level source data must be the id of its ancestor fig, followed by 'sdata', followed by its position relative to other source data for the same figure. The id for XXXXXX, 'XXXXXX' is not in this format. It should be 'XXXXXX' instead._

**Action**:

#### fig-code-test-2

**Error**: _'XXXXXX' ends with XXXXXX, but it is placed XXXXXX. Either it is misnumbered or it should be moved to a different position._

**Action:**

#### fig-code-id

**Error**: _The id for figure level source code must be the id of its ancestor fig, followed by 'scode', followed by its position relative to other source data for the same figure. The id for XXXXXX, 'XXXXXX' is not in this format. It should be 'XXXXXX' instead._

**Action**:

#### vid-data-test-2

**Error**: 'XXXXXX' ends with XXXXXX, but it is placed XXXXXX. Either it is misnumbered or it should be moved to a different position.

**Action**:

#### vid-data-id

**Error**: _The id for video level source data must be the id of its ancestor video, followed by 'sdata', followed by its position relative to other source data for the same video. The id for XXXXXX, 'XXXXXX' is not in this format. It should be 'XXXXXX' instead._

**Action**:

#### vid-code-test-2

**Error**: _'XXXXXX' ends with XXXXXX, but it is placed XXXXXX. Either it is misnumbered or it should be moved to a different position._

**Action**:

#### vid-code-id

**Error**: _The id for video level source code must be the id of its ancestor video, followed by 'scode', followed by its position relative to other source data for the same video. The id for XXXXXX, 'XXXXXX' is not in this format. It should be 'XXXXXX' instead._

**Action:**

#### table-data-test-2

**Error**: _'XXXXXX' ends with XXXXXX, but it is placed XXXXXX. Either it is misnumbered or it should be moved to a different position._

**Action**:

#### table-data-id

**Error**: _The id for table level source data must be the id of its ancestor table-wrap, followed by 'sdata', followed by its position relative to other source data for the same table. The id for XXXXXX, 'XXXXXX' is not in this format. It should be 'XXXXXX' instead._

**Action**:

#### table-code-test-2

**Error**: _'XXXXXX' ends with XXXXXX, but it is placed XXXXXX. Either it is misnumbered or it should be moved to a different position._

**Action:**

#### table-code-id

**Error**: _The id for table level source code must be the id of its ancestor table, followed by 'scode', followed by its position relative to other source data for the same table. The id for XXXXXX, 'XXXXXX' is not in this format. It should be 'XXXXXX' instead._

**Action**:

### Structure checks

