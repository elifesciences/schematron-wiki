# General Content

## Schematron checks

The following tests are run on general content.

### Content warnings

#### rrid-test

**Warning**: _'XXXXXXX' element contains what looks like XX unlinked RRID\(s\). These should always be linked using 'https://scicrunch.org/resolver/'. Element begins with XXXXXXX._

**Action**: This will fire at all stages if a table cell or paragraph contains more instances of the text `RRID:` than there are links containing https://scicrunch.org/resolver/, meaning that there are unlinked RRIDs. All RRIDs should linked by adding the RRID to the end of https://scicrunch.org/resolver/. For example for the text `RRID:CVCL_0063`, `CVCL_0063` should have an embedded link - https://scicrunch.org/resolver/CVCL\_0063. If the author has not actually provided the RRID, i.e. the cell contains just `RRID:`, then the following author query should be added:

* Please provide the RRID here.

#### org-test

**Warning**: _'XXXXXXX' element contains an organism - XXXXXX - but there is no italic element with that correct capitalisation or spacing. Is this correct? XXXXX element begins with XXXXXX._

**Action**: This will fire at all stages if a table cell or paragraph contains the name of an organism which should be italicised, but there is not one italic element containing that text. For example, if the cell contains E. Coli then it should be italicised to _E. Coli_. Similarly if it contains _e.Coli_, then the text should be changed to _E. Coli_.

#### code-test

**Warning**: _'XXXXXXX' element contains what looks like unformatted code - 'XXXXXX' - does this need tagging with &lt;monospace/&gt; or &lt;code/&gt;?_

**Action**: This will fire at all stages if a table cell or paragraph contains text which is preceded by two hyphens, such as `--render`. In a table cell this should be given monospace formatting if it is just a snippet of code. If it is a full block of code going over multiple lines, then this should be captured as a code block.

#### cell-spacing-test

**Warning**: _'XXXXXXX' element contains an equal sign with content directly next to one side, but a space on the other, is this correct? - XXXXXX._

**Action**: This will fire at all stages if a table cell or paragraph contains an equal sign which has a space on one side, but not the other, for example `p= 6`. The spacing should be made to be consistent either `p=6` or `p = 6`. Check how this has been done elsewhere in the article \(with spaces or without spaces\), and update the text so that it is consistent in the article.

#### equal-spacing-test

**Warning**: _'XXXXXXX' element contains the text '+cells' or '±cells' which is very likely to be incorrect spacing - XXXXXX._

**Action**: This will fire at all stages if a table cell or paragraph contains the text `+cell` or `±cell`. If this fires, it's almost certain that a space needs adding between the plus sign and the word cell. It may also be necessary to remove the space \(if there is one\) before the plus sign depending on the content. For example `Ly6G +cells` should be changed to `Ly6G+ cells`.

#### ring-diacritic-symbol-test

**Warning**: _'XXXXXXX' element contains the ring above symbol, '∘'. Should this be a \(non-superscript\) degree symbol - ° - instead?_

**Action**: This will fire at all stages if a table cell or paragraph contains this symbol - ∘. Sometimes this symbol is included \(and given superscript formatting\) instead of a degree symbol. If it's clear that the authors have intended to use the degree symbol, then this should be replaced with °.

#### diabetes-1-test

**Error**: _element contains the phrase 'Type one diabetes'. The number should not be spelled out, this should be 'Type 1 diabetes'._

**Action**: This will fire at all stages if a table cell or paragraph contains the text 'Type one diabetes'. As the message suggests this should always be changed to 'Type 1 diabetes'.

#### diabetes-2-test

**Error**: _element contains the phrase 'Type two diabetes'. The number should not be spelled out, this should be 'Type 2 diabetes'._

**Action**: This will fire at all stages if a table cell or paragraph contains the text 'Type two diabetes'. As the message suggests this should always be changed to 'Type 2 diabetes'.

#### unlinked-url

**Warning**: _'XXXXXXX' element contains possible unlinked urls. Check - XXXXXX._

**Action**: This will fire at all stages if a table cell or paragraph \(which is not in a decision letter or author response or the ethics information\) includes what is likely a URL. If it is a URL, then it should always be formatted as a link rather than plain text.

#### year-style-test

**Warning**: _'XXXXXXX' element contains the following string\(s\) - XXXXXX. If this refers to years, then the space should be removed after the number, i.e XXXXXXX. If the text is referring to a unit then this is fine._

**Action**: This will fire at all stages if a table cell or paragraph contains text like `1990 s`. If the authors intended to refer to decades then the space between the s.and number should be removed - `1990s`. If it a number an unit \(as in 1990 seconds\) then the space should be retained and the message ignored.

#### copyright-symbol

**Error**: _'XXXXXXX' element contains the copyright symbol, '©', which is not allowed._

**Action**: This will fire at all stages if a table cell contains the copyright symbol, '©'. This is not allowed in eLife content and should be removed.

#### trademark-symbol

**Error**: _'XXXXXXX' element contains the trademark symbol, '™', which is not allowed._

**Action**: This will fire at all stages if a table cell contains the trademark symbol, '™'. This is not allowed in eLife content and should be removed.

#### reg-trademark-symbol

**Error**: _'XXXXXXX' element contains the registered trademark symbol, '®', which is not allowed._

**Action**: This will fire at all stages if a table cell contains the registered trademark symbol, '®'. This is not allowed in eLife content and should be removed.

#### Inc-presence

**Warning**: _'XXXXXXX' element contains 'Inc.' with a full stop. Remove the full stop._

**Action**: This will fire at all stages if a table cell contains the text 'Inc' or 'inc' followed by a full stop. If it is a shorthand for incorporated, and not at the end of a sentence, such a `McDonalds Inc. sell 'food'`, then the full stop should be removed `McDonalds Inc sell 'food'`. If it is at the end of a sentence \(`'Food' is sold by McDonalds Inc.`\) or not a shorthand for incorporated, then the full stop can be left.

#### andand-presence

**Warning**: _'XXXXXXX' element contains ' and and ' which is very likely to be incorrect._

**Action**: This will fire at all stages if a table cell contains the text ' and and ' \(or similar capitalised variations\). It almost certainly a mistake, so the extra 'and' can be removed.

#### figurefigure-presence

**Warning**: _'XXXXXXX' element contains ' figure figure ' which is very likely to be incorrect._

**Action**: This will fire at all stages if a table cell contains the text ' and and ' \(or similar capitalised variations\). It almost certainly a mistake and the extra 'figure' can be removed.

#### plus-minus-presence

**Warning**: _'XXXXXXX' element contains two plus or minus signs separate by a space and a forward slash \(such as '+ /-'\). Should the space be removed? - XXXXXX._

**Action**: This will fire at all stages if a table cell contains two plus or minus signs separated by a space and a forward slash \(such as '+ /-'\). It almost certainly a mistake and the extra space can be removed.

#### supplementalfigure-presence

**Warning**: _'XXXXXXX' element contains the phrase ' Supplemental figure ' which almost certainly needs updating. XXXXXX starts with - XXXXXX._

**Action**: This will fire at all stages if a table cell contains ' Supplemental figure '. If it is clear which figure supplement this refers to then it should be updated accordingly \(such as Figure 1-figure supplement 1\). If it is not, then the following author query:

* Supplemental figure X is cited in the text but has not been provided. Please either correct the citation, provide the figure file and a title and legend, or confirm that this citation refers to another article.

#### supplementalfile-presence

**Warning**: _'XXXXXXX' element contains the phrase ' Supplemental file ' which almost certainly needs updating. XXXXXX starts with - XXXXXX._

**Action**: This will fire at all stages if a table cell contains ' Supplemental file '. If it is clear which Supplementary file this refers to then it should be updated accordingly \(such as Supplementary file 1\). If it is not, then the following author query:

* Supplemental file X is cited in the text but has not been provided. Please either correct the citation, provide the figure file and a title and legend, or confirm that this citation refers to another article.

#### ref-presence

**Warning**: _'XXXXXXX'  element contains 'Ref.' which is either incorrect or unnecessary._

**Action**: This will fire at all stages if a table cell contains the text 'Ref.'. If the text is referring to a citation, i.e. `Ref. 2` in the original manuscript converted to `Ref. Smith et al., 2020`, then the text 'Ref.' should be deleted. If the text is not referring to a citation, then the full stop should be removed.

#### refs-presence

**Warning**: _'XXXXXXX'  element contains 'Refs.' which is either incorrect or unnecessary._

**Action**: This will fire at all stages if a table cell contains the text 'Refs.'. If the text is referring to a citation, i.e. `Refs. 2-3` in the original manuscript converted to `Ref. Smith et al., 2020; Smith et al., 2019`, then the text 'Refs.' should be deleted. If the text is not referring to a citation, then the full stop should be removed.

#### replacement-character-presence

**Error**: _'XXXXXXX' element contains the replacement character '�' which is not allowed._

**Action**: This will fire at all stages if a table cell contains the replacement character '�'. The original manuscript should be checked to ensure that the intended character was not incorrectly converted. Otherwise the character should be removed.

#### junk-character-presence

**Error**: _'XXXXXXX' element contains a junk character '' which should be replaced._

**Action**: This will fire at all stages if a table cell contains a junk character ''. The original manuscript should be checked to ensure that the intended character was not incorrectly converted. Otherwise the character should be removed.

#### inverterted-question-presence

**Warning**: _'XXXXXXX' element contains an inverted question mark '¿' which should very likely be replaced/removed._

**Action**: This will fire at all stages if a table cell contains an inverted question mark '¿'. The original manuscript should be checked to ensure that the intended character was not incorrectly converted. Otherwise the character should be removed.

#### empty-parentheses-presence

**Warning**: _'XXXXXXX' element contains empty parentheses \('\[\]', or '\(\)'\). Is there a missing citation within the parentheses? Or perhaps this is a piece of code that needs formatting?_

**Action**: This will fire at all stages if a table cell contains empty parentheses \('\[\]', or '\(\)'\). The original manuscript should be checked to ensure that the content was not incorrectly converted. If it has been correctly converted, then if it is code \(such as `regex()`\), then the code text should be given monospace formatting. If it is not code, the the following author query should be added:

* Please add in the missing text here or remove the brackets, as necessary.

#### broken-unicode-presence

**Warning**: _'XXXXXXX' element contains what looks like a broken unicode - XXXXXX._

**Action**: This will fire at all stages if a table cell contains what looks like broken unicode characters, such as `&amp;#x21;`. The original manuscript should be checked to see what the intended character should be. If it is still not clear, then do a web search for that text \(followed by unicode\). If it's then clear what symbol it should be, then this should be added. Finally if it is still not clear, then add the following author query:

* Please confirm what this symbol should be here or delete the text, as necessary.

#### extra-full-stop-presence

**Warning**: _'XXXXXXX' element contains what looks two full stops right next to each other \(..\) - Is that correct? - XXXXXX._

**Action**: This will fire at all stages if a table cell contains two full stops right next to each other \(..\). If it is clearly a typo, the extra full stop should be removed. If it is not clear, then this warning can be ignored.

#### extra-space-presence

**Warning**: _'XXXXXXX' element contains two or more spaces right next to each other - it is very likely that only 1 space is necessary - XXXXXX._

**Action**: This will fire at all stages if a table cell contains two or more spaces right next to each other. It is very likely that the extra space should be removed.

#### operating-system-command-presence

**Error**: _'XXXXXXX' element contains a operating system command character '' which should very likely be replaced/removed. - XXXXXX._

**Action**: This will fire at all stages if a table cell contains a specific character, the operating system command character \(unicode `&#x9d;`\). If this fires, the character _must_ be removed, because otherwise the article will fail PMC ingestion.

#### distinct-label-conformance

**Error**: _Duplicated labels - XXXXXX is present more than once in the text._

**Action**: This will fire when a Table label occurs twice in the same article for example there are two 'Table 1.'s. Table labels must be distinct. If this fires, action should be taken to ensure that this label is not used more than once.

#### text-v-object-cite-test

**Warning**: _XXXXXX has possible unlinked citations in the text._

**Action**: This will fire if a table's label text is found elsewhere in the article without citation formatting \(for example the text 'Table 1' is present in paragraph in the Introduction\). The following actions should be taken:

* If the table citation is deliberately left unlinked due to citations which are out of sequence, this warning can be ignored, since the text has been deliberately left unlinked.
* If the table citation is obviously a reference to a table from another article or piece of work \(e.g. Table 1 from Smith et al., 2020\), then this should be ignored.
* If neither of the above two conditions is the case, then the text should be changed to a linked citation.

#### missing-ref-in-text-test

**Warning**: _XXXXXX element contains possible citation which is unlinked or a missing reference - search - XXXXXXX._

**Action**: This will fire if a table cell contains a possible unlinked citation such as Smith et al., 2020. If there is no corresponding reference in the reference list, then the following author query should be added:

* This cited reference does not appear in the reference list. Please provide the full bibliographic details.

Otherwise the text should be captured as a proper citation.

