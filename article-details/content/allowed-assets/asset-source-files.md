---
description: 'Source data and source code for assets (figures, videos, tables)'
---

# Asset source files

## What are asset source files?

Figures \(and their supplements\), videos and tables may be accompanied by the source data and/or source code that was used to generate them. The source data will usually consist of tables of raw data but may also include unprocessed images, editable version of charts provided as flat images, or multiple-page documents that cannot be typeset as single figures/figure supplements. Source code will usually comprise scripts that were used to process the data or to generate the graphs shown in figures.

Source data accompanying an article asset is far more common than source code since scripts and other code are more usually to be uploaded at the article level, or submitted to an online repository \(see [**Archiving code**](../../../toolkit/archiving-code.md) for more details on this\).

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

