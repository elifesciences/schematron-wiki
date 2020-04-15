---
description: How to check and copy-edit reference citations
---

# Reference citations

## What is a reference citation?

A reference citation is an in-text citation for a reference as given in an article's reference list. This is in contrast to an asset citation \(for figures, tables etc\).

![](../../.gitbook/assets/screen-shot-2020-03-25-at-17.03.28.png)

eLife used 'name-year' citation style, where each reference is cited using the name of the first author and the year of publication. This style behaves differently depending on how many authors there are for a reference:

* One author - Smith, 2010
* Two authors - Smith and Jones, 2010
* Three or more authors - Smith et al., 2010

If two or more references would produce the same citation, they should be distinguished with the addition of a,b,c,d etc to the years:

* Smith et al., 2010a
* Smith et al., 2010b

## What needs to be checked?

Most of the major possible issues with reference citations will be picked up by schematron rules. It is however important to be aware of the style rules relating to the following when adding or removing reference citations:

* Brackets around citations \(when to use, when these are not required\)
* ; should be used as a separator between citations
* How to identify unconverted citations

Examples of these can be found in the next section.

## Examples

### Brackets around citations

Most of the time, references citations will be contained within parentheses:

"Correspondingly, the inactivation of PDGFα receptor \(PDGFRα\), which is majorly expressed in OPCs \(_**Pringle et al., 1992**_\), results in . . ."

Multiple reference citations may appear within one set of parentheses:

"On the one hand, behavioral and task-set learning are modeled on an abstract, psychological level \(_**Botvinick et al., 2009**_; _**Collins and Koechlin, 2012**_; _**Donoso et al., 2014**_\)."

Where references are cited within a parenthetical statement, square brackets may be used to separate them from the text. This is the only time it is appropriate to use square brackets around a citation:

". . . behavioral policy \(recurrent versus open-ended sessions, while controlling for trial perceived difficulty, as implemented by reaction times \[_**Shenhav et al., 2013**_; _**Shenhav et al., 2014**_\]\)."

Citations in parentheses may be accompanied by additional text, usually a direction to the reader. For example, "\(see _**Smith et al., 2010**_\)" or "\(_**Dare et al., 1950**_; _**Morgan et al., 1953**_; for a review, see _**Ellis, 2004**_\)". In these cases, square brackets are not required. 

Where multiple sets of parenthetical citations occur one after the other, these should be merged together. This applies to both reference and asset citations, which should be combined into the same set of brackets if they occur together. So, for example

 “\(_**Figure 1**_\) \(_**Harrison et al, 2020**_; _**Albert and Smith, 1998**_\)”

should be changed to

“\(_**Figure 1**_; _**Harrison et al, 2020**_; _**Albert and Smith, 1998**_\)”.

### Citations that do not require brackets

Authors will sometimes use a name/year citation as a part of a sentence. For example:

"In consistent with our results, _**Shin et al., 2014**_ also found that Akt activity is not affected by Gab1 deletion in SCs."

In these cases, no parentheses are required around the citation. If parentheses are provided for these cases, they should be removed. So

"\(_**Shin et al., 2014**_\) also found that . . ."

would need to be changed to

"_**Shin et al., 2014**_ also found that . . ."

Similarly, if a sentence refers to something _in_ a particular reference, parentheses are not required. Small grammatical changes may be necessary in such cases. The following:

“Peptide arrays were purchased from the MIT Biopolymers Laboratory as described previously in \(_**Karagöz et al., 2017**_; _**Gardner and Walter, 2011**_\).”

should be changed to

“Peptide arrays were purchased from the MIT Biopolymers Laboratory as described previously in _**Karagöz et al., 2017**_ and _**Gardner and Walter, 2011**_.”

Occasionally, the authors of a cited publication may be referred to by name in the same sentence as a parenthetical citation. In some of these instances, it will be appropriate to replace the author names with a non-parenthetical citation and delete the parenthetical one. So:

"Murakoshi et al. used a single molecule fluorescence energy transfer \(FRET\) technique to observe single molecule activation of RAS molecules in the plasma membrane of cells \(_**Murakoshi et al., 2004**_\)."

could be changed to

"_**Murakoshi et al., 2004**_ used a single molecule fluorescence energy transfer \(FRET\) technique to observe single molecule activation of RAS molecules in the plasma membrane of cells."

However, if more than one publication is cited at the end of a sentence that mentions author names, this would not an appropriate change. This, for example, should be left as it stands:

"Pearce et al. designed a framework based on variable-order Markov models that learns statistics describing the temporal sequences in melodic sequences at various time-scales \(IDyOM; _**Pearce, 2005**_; _**Pearce and Wiggins, 2006\)**_."

### Citations that have not been converted properly

If the authors have provided the citations in their submitted file using another reference style e.g. numbered references in superscript or brackets, a conversion will be run to change this to eLife style. For example,

"Förster resonance energy transfer \(smFRET\) or colocalization single-molecule spectroscopy \(CoSMoS\) can be dramatically extended with recently developed photostable dyes \[**3,4**\]."

will be converted to

"Förster resonance energy transfer \(smFRET\) or colocalization single-molecule spectroscopy \(CoSMoS\) can be dramatically extended with recently developed photostable dyes \(_**Grimm et al., 2015**; **Altman et al., 2012**_\)."

Most of the time this process is successful. Sometimes, however, reference citations will not be converted correctly, leaving instances of superscript or bracketed numbers where there should be a name/year citation.

## Schematron warnings

### Content warnings

#### ref-xref-test-1

**Error**: _XXXXXX - citation does not conform to house style. It should be 'XXXXXX' or 'XXXXXX'. Preceding text = 'XXXXXX'._

**Action**:

#### ref-xref-test-2

**Warning**: _There is no space between citation and the preceding text - XXXXXX - Is this correct?_

#### ref-xref-test-3

**Warning**:  _There is no space between citation and the following text - XXXXXX - Is this correct?_

#### ref-xref-test-4

**Error**: _citation doesn't contain numbers, which must be incorrect - XXXXXX_

#### ref-xref-test-5

**Error**: _citation doesn't contain letters, which must be incorrect - XXXXXX_

#### ref-xref-test-6

**Error**: _XXXXXX - citation is in non-parenthetic style, but the preceding text ends with open parentheses, so this isn't correct._

#### ref-xref-test-7

**Error**: _XXXXXX - citation is in non-parenthetic style, but the following text ends with closing parentheses, so this isn't correct._

#### ref-xref-test-8

**Warning**: _XXXXXX - citation is in non-parenthetic style, but the preceding text has open parentheses. Should it be in the style of XXXXXX?_

#### ref-xref-test-9

**Warning**: _sentence before citation has more open brackets than closed - XXXXXX - Either one of the brackets is unnecessary or the citation should be in square brackets - XXXXXX._

#### ref-xref-test-11

**Warning**: _XXXXXX - citation is in parenthetic style, but the preceding text ends with 'XXXXXX' which suggests it should be in the style - XXXXXX_

#### ref-xref-test-12

**Warning**: _XXXXXX - citation is in parenthetic style, but the following text begins with 'who', which suggests it should be in the style - XXXXXX_

#### ref-xref-test-13	xref\[@ref-type='bibr'\]	\*Warning\*: \_XXXXXX - citation is in parenthetic style, but the following text begins with 'have', which suggests it should be in the style - XXXXXX\_

#### ref-xref-test-23	xref\[@ref-type='bibr'\]	\*Warning\*: \_XXXXXX - citation is in parenthetic style, but the following text begins with 'found', which suggests it should be in the style - XXXXXX\_

#### ref-xref-test-25	xref\[@ref-type='bibr'\]	\*Warning\*: \_XXXXXX - citation is in parenthetic style, but the following text begins with 'used', which suggests it should be in the style - XXXXXX\_

#### ref-xref-test-26	xref\[@ref-type='bibr'\]	\*Warning\*: \_XXXXXX - citation is in parenthetic style, but the following text begins with 'demonstrate', which suggests it should be in the style - XXXXXX\_

#### ref-xref-test-14	xref\[@ref-type='bibr'\]	\*Warning\*: \_citation is preceded by text containing much of the citation text which is possibly unnecessary - XXXXXX\_

#### ref-xref-test-15	xref\[@ref-type='bibr'\]	\*Warning\*: \_citation is followed by text containing much of the citation text. Is this correct? - XXXXXX\_

#### ref-xref-test-16	xref\[@ref-type='bibr'\]	\*Error\*: \_citation is followed by text starting with 2 or more closing brackets, which must be incorrect - XXXXXX\_

#### ref-xref-test-17	xref\[@ref-type='bibr'\]	\*Warning\*: \_citation is in parenthetic format - XXXXXX - but the preceding text does not contain open parentheses. Should it be in the format - XXXXXX?\_

#### ref-xref-test-18	xref\[@ref-type='bibr'\]	\*Warning\*: \_citation is in parenthetic format, but the preceding text is ', ' . Should the preceding text be '; ' instead? XXXXXX\_

#### ref-xref-test-19	xref\[@ref-type='bibr'\]	\*Error\*: \_XXXXXX - citation doesn't start with an author's name which is incorrect.\_

#### ref-xref-test-20	xref\[@ref-type='bibr'\]	\*Error\*: \_citation is followed by '\);', which in turn is followed by another link. This must be incorrect \(the bracket should be removed\) - 'XXXXXX'.\_

#### ref-xref-test-21	xref\[@ref-type='bibr'\]	\*Warning\*: \_citation is preceded by a letter or number immediately followed by '\('. Is there a space missing before the '\('? - 'XXXXXX'.\_

#### ref-xref-test-22	xref\[@ref-type='bibr'\]	\*Warning\*: \_citation is followed by a '\)' which in turns is immediately followed by a letter or number. Is there a space missing after the '\)'? - 'XXXXXX'.\_

#### ref-xref-test-24	xref\[@ref-type='bibr'\]	\*Warning\*: \_citation is surrounded by square brackets, do the square brackets need removing? - 'XXXXXX' - it doesn't seem to be already inside round brackets \(a parenthetic reference inside parentheses\) which is against house style.\_

#### ref-xref-test-27	xref\[@ref-type='bibr'\]	\*Warning\*: \_citation is followed by '\) \(', which in turn is followed by another link - 'XXXXXX'. Should the closing and opening brackets be replaced with a '; '? i.e. 'XXXXXX'.\_

#### ref-xref-test-28	xref\[@ref-type='bibr'\]	\*Warning\*: \_citation is preceded by '\) \(', which in turn is preceded by another link - 'XXXXXX'. Should the closing and opening brackets be replaced with a '; '? i.e. 'XXXXXX'.\_

#### ref-xref-test-29	xref\[@ref-type='bibr'\]	\*Warning\*: \_citation is preceded by 'XXXXXX'. The 'cf.' is unnecessary and should be removed.\_

### XML structure

