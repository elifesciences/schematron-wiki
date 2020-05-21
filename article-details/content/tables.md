---
description: Tabulated content in an article
---

# Tables

Test test 

## Schematron checks

The following tests are run on Tables.

### Content warnings

#### body-table-label-test-1

**Error**: _XXXXXX - Table label does not conform to the usual format._

**Action**: This will fire when a table \(outside of appendices\) has a label which is not in one of the following formats:

* Table 1.
* Key resources table.
* Author response table 1.

Please ensure that the table label is either in one of these formats or \(in the case where it _should not_ have a label\), the label is removed.

#### app-table-label-test-1

**Error**: _XXXXXX - Table label does not conform to the usual format._

**Action**: This will fire when a table in an appendix has a label which is not in the format 'Appendix 1—table 1.' 

Please ensure that there are no typos, missing or extra spaces, that the capitalisation is correct, and that the character between 'Appendix X' and 'table X' is an [em dash](https://www.fileformat.info/info/unicode/char/2014/index.htm).

#### app-table-label-test-2

**Error**: _XXXXXX - Table label does not begin with the title of the appendix it sits in. Either the table is in the incorrect appendix or the table has been labelled incorrectly._

**Action**: This will fire when a table in an appendix has a label which does not start with the title of the appendix that it sties in, for example 'Appendix 1—table 1.' in 'Appendix 2'.

Depending on the case, the table will either need to be moved into its appropriate appendix, or it will need to be re-labelled.

#### table-fn-label-test-1

**Warning**: _Footnote starts with label which is not in line with house style - XXXXXX. Footnote symbols should be in the order: \*, †, ‡, §, ¶, \*\*, ††, ‡‡, §§, ¶¶, etc._

**Action**: This will fire when a table in an appendix has a label which does not start with the title of the appendix that it sties in, for example 'Appendix 1—table 1.' in 'Appendix 2'.

Footnote indicators should be in the follow this sequence _,_ †, ‡, §, ¶, **, ††, ‡‡, §§, ¶¶,** , †††, ‡‡‡, §§§, ¶¶¶, \*\*, ††††, ‡‡‡‡, §§§§, ¶¶¶¶, etc. If this warning fires, it is because a footnote does not start with one of these indicators.

#### distinct-label-conformance

**Error**: _Duplicated labels - XXXXXX is present more than once in the text._

**Action**: This will fire when a Table label occurs twice in the same article. Table labels must be distinct. If this fires, action should be taken to ensure that this label is not used more than once.

#### pre-body-table-report

**Warning**: _XXXXXX_ _does not appear in sequence. Relative to the other numbered tables it is placed in position XX._

**Action**: This will fire when a table is placed out of sequence in the body of an article \(such as Table 1 being placed after Table 2\). If this warning fires, and there is no citation for that table, please add the following author query:

* Please provide an in-text citation for this table.

If there is an in-text citation, but the citations are out of sequence \(i.e. Table 1 being cited after Table 2\), then please add the following author query:

* This citation is out of sequence with the other table citations and has therefore been left unlinked \(table placement is determined by first live citation\). Please confirm this is acceptable.

#### final-body-table-report

**Error**: _XXXXXX_ _does not appear in sequence which is incorrect. Relative to the other numbered tables it is placed in position XX._

**Action**: This will fire when a table is placed out of sequence in the body of an article \(such as Table 1 being placed after Table 2\). If this error fires, Production will need to contact the authors in order to determine how they would like their tables to be labelled/presented.

#### pre-app-table-report

**Warning**: _XXXXXX_ _does not appear in sequence. Relative to the other numbered tables it is placed in position XX._

**Action**: This will fire when a table is placed out of sequence in an appendix \(such as Appendix 1—table 1 being placed after Appendix 1—table 2\). If this warning fires, and there is no citation for that table, please add the following author query:

* Please provide an in-text citation for this table.

If there is an in-text citation, but the citations are out of sequence \(i.e. Appendix 1—table 1 being cited after Appendix 1—table 2\), then please add the following author query:

* This citation is out of sequence with the other table citations and has therefore been left unlinked \(table placement is determined by first live citation\). Please confirm this is acceptable.

#### final-app-table-report

**Error**: _XXXXXX_ _does not appear in sequence which is incorrect. Relative to the other numbered tables it is placed in position XX._

**Action**: This will fire when a table is placed out of sequence in an appendix \(such as Appendix 1—table 1 being placed after Appendix 1—table 2\). If this error fires, Production will need to contact the authors in order to determine how they would like their tables to be labelled/presented.

#### app-table-wrap-id-test-1

**Error**: _table-wrap @id in appendix must be in the format 'app0table0'. XXXXXX does not conform to this._

**Action**: This will fire when the value if the `id` attribute for a table \(with a label\) in the appendix is not in the format `app0table0`. If this fires, it either means that the Table is in the incorrect appendix, or the id needs to be corrected.

#### app-table-wrap-id-test-2

**Error**: _table-wrap @id must start with XXXXXX._

**Action**: This will fire when the value if the `id` attribute for a table \(with a label\) in the appendix does not start with `app` and the appendix number. For example, the ids for any tables in Appendix 1 should start with `app1`. If this fires, it either means that the Table is in the incorrect appendix, or the id needs to be corrected.

#### resp-table-wrap-id-test

**Warning**: _table-wrap @id in author reply must be in the format 'resptable0' or 'sa0table0' if it has a label, or in the format 'respinlinetable0' or 'sa0inlinetable0' if it does not._

**Action**: This will fire when the value if the `id` attribute for a table in the decision letter or author response is not in any of the below formats:

With a label:

* resptable0
* sa0table0

Without a label:

* respinlinetable0
* sa0inlinetable0

Exeter will need to correct this issue if it fires.

#### table-wrap-id-test

**Error**: _table-wrap @id must be in the format 'table0', unless it doesn't have a label, in which case it must be 'inlinetable0' or it is the key resource table which must be 'keyresource'._

**Action**: This will fire when the value if the `id` attribute for a table in the body of an article \(i.e. not in appendices or decision letters or author responses\) is incorrect. If it is a Key resources table, the id must be `keyresource`_._ If the table has a label, it must be in the format `table0`. It it does not have a label, it needs to be in the format `inlinetable0`.

#### unlinked-object-cite

**Warning**: _XXXXXX has possible unlinked citations in the text._

**Action**: This will fire if a table's label text is found elsewhere in the article without citation formatting \(for example the text 'Table 1' is present in paragraph in the Introduction\). The following actions should be taken:

* If the table citation is deliberately left unlinked due to citations which are out of sequence, this warning can be ignored.
* If the table citation is obviously a reference to a table from another article or piece of work \(e.g. Table 1 from Smith et al., 2020\), then this can be ignored.
* If neither of the above two conditions is the case, then the text should be added as a citation instead.



