# Paragraphs

## What is the \[insert subject of page\]?

Give a brief description of the subject being addressed in the page. 

## What needs to be checked?

Outline the main things that need to be checked. Include a checklist if possible.

## Examples

Give specific examples of everything that needs to be checked/any common problems. Add sub-sections where needed, but be as succinct as possible. Include screenshots as required.

This section should also list any issues that can be spotted without the need to run Schematron tests such as low figure quality, broken paragraphs, badly formatted tables etc. Crosscheck against the protocol documents in [this folder](https://drive.google.com/drive/folders/0B2wDI5EMHiJ-UzctZnVBdWFwbzA).

> Any quotes from articles should be formatted as quotes

* Any Kriya queries should be formatted as a bullet point

Any [**hyperlinks**](../../untitled-4/) to other pages or websites should be bolded to make sure they are more visible. 

## Schematron checks

### Content checks

List of errors and warnings that can occur, with guidance on how to solve each problem or on when it is OK to let the warning go by and not change anything.

These checks relate to the content of \[insert name of page\]. X or XXXXXX refers to quoted text which will change depending on the article.

#### p-test-2

**Error:** _p element must not have any attributes._

**Action:** What to do if this message fires

#### p-test-3

**Error:** _p element contains XXXXXX - The spacing is incorrect._

**Action:** What to do if this message fires

#### p-test-5

**Warning:** _p element starts with bolded text - XXXXXX - Should it be a header?_

**Action:** What to do if this message fires

#### p-test-6

**Warning:** _Should this be captured as a list-item in a list? p element is less than 100 characters long, and is preceded by another p element less than 100 characters long._

**Action:** What to do if this message fires

#### p-test-7

**Warning:** _p element starts with a bullet point. It is very likely that this should instead be captured as a list-item in a list\[@list-type='bullet'\]. - XXXXXX_

**Action:** What to do if this message fires

#### allowed-p-test

**Error:** _p element cannot contain XXXXXX. only contain the following elements are allowed - bold, sup, sub, sc, italic, xref, inline-formula, disp-formula, supplementary-material, code, ext-link, named-content, inline-graphic, monospace, related-object._

**Action:** What to do if this message fires

#### allowed-p-test

**Error:** _p element cannot contain XXXXXX. only contain the following elements are allowed - bold, sup, sub, sc, italic, xref, inline-formula, disp-formula, supplementary-material, code, ext-link, named-content, inline-graphic, monospace, related-object._

**Action:** What to do if this message fires

#### p-punctuation-test

**Warning:** _paragraph doesn't end with punctuation - Is this correct?_

**Action:** What to do if this message fires

#### p-bracket-test

**Warning:** _paragraph doesn't end with a full stop, colon, question or exclamation mark - Is this correct?_

**Action:** What to do if this message fires

### XML structure checks

These checks relate to the XML structure of \[insert name of page\]. ‌X or XXXXXX refers to quoted text which will change depending on the article. For more information about what the XML should look like, see below \(include link to XML structure\).

#### id-x - make sure this is tagged as a level 3 header

**Warning/Error/Info:** _content of message_

**Action:** What to do if this message fires

## XML structure

```
Include an example of the xml with variations if appropriate. 
```



