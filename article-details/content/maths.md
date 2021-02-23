---
description: Mathematical content in eLife articles
---

# Maths

Many eLife articles contain maths. These can be rendered inline \(inline with the text in a paragraph/list item/table cell or similar\) or as display equations. eLife captures math content either as plain text \(for simple maths\) or as [**MathML**](https://en.wikipedia.org/wiki/MathML) which is a mathematical markup language. Similarly, in their original files, authors can capture maths in varying ways. Either as plain text, as MathML \(by using an equation editor in Word or similar word processors\) or in [**LaTeX**](https://en.wikipedia.org/wiki/LaTeX).

## What needs to be checked?

* test

## Schematron checks

### Content checks

**inline-formula-test-2**

**Warning**: _There is no space between inline-formula and the preceding text - XXXXXX - Is this correct?_

**Action**: 

**inline-formula-test-3**

**Warning**: _There is no space between inline-formula and the following text - XXXXXX - Is this correct?_

**Action**:

**math-test-14**

**Warning**: _mml:math only contains numbers and/or operators - 'XXXXXX'. Is it necessary for this to be set as a formula, or can it be captured with as normal text instead?_

**Action**:

**math-test-3**

**Error**: _mml:math only contains '±', which is unnecessary. Capture this as a normal text '±' instead._

**Action**:

**math-test-4**

**Error**: _mml:math only contains '±' followed by digits, which is unnecessary. Capture this as a normal text instead._

**Action**:

**math-test-5**

**Error**: _mml:math only contains '×', which is unnecessary. Capture this as a normal text '×' instead._

**Action**:

**math-test-6**

**Error**: _mml:math only contains '~', which is unnecessary. Capture this as a normal text '~' instead._

**Action**:

**math-test-7**

**Error**: _mml:math only contains '~' and digits, which is unnecessary. Capture this as a normal text instead._

**Action**:

**math-test-8**

**Warning**: _mml:math only contains 'μ', which is likely unnecessary. Should this be captured as a normal text 'μ' instead?_

**Action**:

**math-test-9**

**Error**: _mml:math only contains '%' and digits, which is unnecessary. Capture this as a normal text instead._

**Action**:

**math-test-12**

**Error**: _mml:math only contains '%', which is unnecessary. Capture this as a normal text instead._

**Action**:

**math-test-10**

**Error**: _mml:math only contains '°', which is likely unnecessary. This should be captured as a normal text '°' instead._

**Action**:

**math-test-11**

**Warning**: _mml:math contains '○' \(the white circle symbol\). Should this be the degree symbol instead - '°', or '∘' \(the ring operator symbol\)?_

**Action**:

**math-test-13**

**Warning**: _mml:math only contains 'XXXXXX', which is likely unnecessary. Should this be captured as normal text instead?_

**Action**:

**math-test-15**

**Warning**: _mml:math seems to only contain the formula for a cation - 'XXXXXX' - which is likely unnecessary. Should this be captured as normal text instead?_

**Action**:

**math-test-16**

**Warning**: _mml:math seems to only contain the formula for an anion - 'XXXXXX' - which is likely unnecessary. Should this be captured as normal text instead?_

**Action**:

**math-test-17**

**Warning**: _mml:math only contains number\(s\) and square root symbol\(s\) 'XXXXXX', which is likely unnecessary. Should this be captured as normal text instead? Such as XXXXXX?_

**Action**:

**math-test-18**

**Warning**: _abstract contains MathML \(XXXXXX\). Is this necessary? MathML in abstracts may not render downstream, so if it can be represented using normal text/unicode, then please do so instead._

**Action**:

**math-test-19**

**Warning**: _Maths containing 'XXXXXX' has what looks like words or terms which need separating with a space. With it's current markup the space will not be preserved on the eLife website. Please add in the space\(s\) using the latext '\;' in the appropriate place\(s\), so that the space is preserved in the HTML._

**Action**:

**pre-mathcolor-test-1**

**Warning**: _math \(XXXXXX element\) containing 'XXXXXX' has a color style which is not red, blue or purple - 'XXXXXX' - which is not allowed. If it is clear that colours are supposed to be used, but you are not sure which ones, then please query the authors - 'eLife only supports the following colours for text and maths - 'red', 'blue' and 'purple'. Please confirm how you would like the colour\(s\) here captured given this information.'._

**Action**:

**final-mathcolor-test-1**

**Error**: _math \(XXXXXX element\) containing 'XXXXXX' has a color style which is not red, blue or purple - 'XXXXXX' - which is not allowed. Only 'red', 'blue' and 'purple' are allowed._

**Action**:

**mathcolor-test-2**

**Warning**: _math \(XXXXXX element\) containing 'XXXXXX' has XXXXXX colour formatting. Is this OK?_

**Action**:

**pre-mathbackground-test-1**

**Warning**: _math \(XXXXXX element\) containing 'XXXXXX' has 'XXXXXX' colour background formatting. This likely means that there's a mistake in the content which will not render correctly online. Please check this carefully against the original manuscript. If it's not a mistake, and the background colour is deliberate, then please add the following author query -&gt; 'Where possible, we prefer that colours are not used in text in the interests of accessibility and because they will not display in downstream HTML \(for example in PMC\). eLife does not support background colours for text, however we do support the following colours for text itself - 'red', 'blue' and 'purple'. Please confirm how you would like the colour\(s\) captured here given this information, and note that our preference would be to use more common forms of emphasis \(such as bold, italic or underline\) if possible to still convey the same meaning.'._

**Action**:

**pre-mathbackground-test-2**

**Warning**: _math \(XXXXXX element\) containing 'XXXXXX' has 'XXXXXX' colour background formatting. This likely means that there's a mistake in the content which will not render correctly online. Please check this carefully against the original manuscript. If it's not a mistake, and the background colour is deliberate, then please ensure that the background colour is captured for the table cell \(rather than the maths\)._

**Action**:

**final-mathbackground-test-1**

**Error**: _math \(XXXXXX element\) containing 'XXXXXX' has 'XXXXXX' colour background formatting. This likely means that there's a mistake in the content which will not render correctly online. If it's not a mistake, and the background colour is deliberate, then this will need to removed._

**Action**:

**final-mathbackground-test-2**

**Error**: _math \(XXXXXX element\) containing 'XXXXXX' has 'XXXXXX' colour background formatting. This likely means that there's a mistake in the content which will not render correctly online. If it's not a mistake, and the background colour is deliberate, then either the background colour will need to added to the table cell \(rather than the maths\), or it needs to be removed._

**Action**:

**mtext-test-1**

**Warning**: _math \(XXXXXX element\) contains 'XXXXXX' which looks suspiciously like LaTeX markup. Is it correct? Or is there missing content or content which has been processed incompletely?_

**Action**:

**inline-formula-length-test-1**

**Warning**: _Inline formula containing 'XXXXXX' is particularly long. Consider either splitting this up into multiple equations or capturing this as a display equation, as the display on Continuum will likely be strange._

**Action**:

**equation-label-conformance-1**

**Error**: _Duplicated display formula labels - XXXXXX is present more than once in the same appendix._

**Action**:

**equation-label-conformance-2**

**Error**: _Duplicated display formula labels - XXXXXX is present more than once in the main body of the text._

**Action**:



### XML structure checks

**disp-formula-test-2**

**Error**: _disp-formula must contain an mml:math element._

**Action**:

**disp-formula-test-3**

**Warning**: _In the vast majority of cases disp-formula should be a child of p. XXXXXX is a child of XXXXXX. Is that correct?_

**Action**:

**disp-formula-test-4**

**Error**: _disp-formula cannot be placed as the first child of a p element with no content before it \(ie. &lt;disp-formula ...\). Either capture it at the end of the previous paragraph or capture it as a child of XXXXXX_

**Action**:

**inline-formula-test-1**

**Error**: _inline-formula must contain an mml:math element._

**Action**:

**inline-formula-test-4**

**Error**: _XXXXXX must be a child of p, td, th or title. The formula containing XXXXXX is a child of XXXXXX_

**Action**:

**math-test-1**

**Error**: _mml:math must not be empty._

**Action**:

**math-test-2**

**Error**: _math contains an mml:merror with 'XXXXXX'. This will almost certainly not render correctly._

**Action**:

**disp-formula-child-test-1**

**Error**: _XXXXXX element is not allowed as a child of disp-formula._

**Action**:

**inline-formula-child-test-1**

**Error**: _XXXXXX element is not allowed as a child of inline-formula._

**Action**:

**mml-math-id-test**

**Error**: _mml:math @id in disp-formula must be in the format 'm0'. XXXXXX does not conform to this._

**Action**:

**sub-mml-math-id-test**

**Error**: _mml:math @id in disp-formula must be in the format 'sa0m0'. XXXXXX does not conform to this._

**Action**:

**disp-formula-id-test**

**Error**: _disp-formula @id must be in the format 'equ0'._

**Action**:

**sub-disp-formula-id-test**

**Error**: _disp-formula @id must be in the format 'sa0equ0' when in a sub-article. XXXXXX does not conform to this._

**Action**:



