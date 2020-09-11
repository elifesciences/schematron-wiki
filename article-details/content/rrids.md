# RRIDs

## What is an RRID?

Research Resource Identifiers \(RRIDs\) are persistent and unique identifiers for referencing a research resource. Identifiers are prefixed with " RRID: ", followed by a second tag that indicates the source authority that provided it \(e.g. "AB" for the Antibody Registry, "CVCL" for the Cellosaurus, "MMRRC" for Mutant Mouse Regional Resource Centers, "SCR" for the SciCrunch registry of tools\).

## What needs to be checked?

Outline the main things that need to be checked. Include a checklist if possible.

## Examples

Give specific examples of everything that needs to be checked/any common problems. Add sub-sections where needed, but be as succinct as possible. Include screenshots as required.

This section should also list any issues that can be spotted without the need to run Schematron tests such as low figure quality, broken paragraphs, badly formatted tables etc. Crosscheck against the protocol documents in [this folder](https://drive.google.com/drive/folders/0B2wDI5EMHiJ-UzctZnVBdWFwbzA).

> Any quotes from articles should be formatted as quotes

* Any Kriya queries should be formatted as a bullet point

Any [**hyperlinks**](../../untitled-4.md) to other pages or websites should be bolded to make sure they are more visible. 

## Schematron checks

### Content checks

List of errors and warnings that can occur, with guidance on how to solve each problem or on when it is OK to let the warning go by and not change anything.

These checks relate to the content of \[insert name of page\]. X or XXXXXX refers to quoted text which will change depending on the article.

#### rrid-test

**Warning**: _'XXXXXX' element contains what looks like XXXXXX unlinked RRID\(s\). These should always be linked using '_[https://scicrunch.org/resolver/](https://scicrunch.org/resolver/)_'. Element begins with XXXXXX._

**Action:** What to do if this message fires

#### pre-rrid-spacing

**Error**: _RRID \(scicrunch\) link should be preceding by 'RRID:' with no space but instead it is preceded by 'XXXXXX'._

**Action:** What to do if this message fires

#### final-rrid-spacing

**Warning**: _RRID \(scicrunch\) link should be preceding by 'RRID:' with no space but instead it is preceded by 'XXXXXX'._

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

## Further reading

Where applicable, give links to related pages and external sites.

## Changelog

After Exeter has fed back on the page and it has been updated, any further changes to the page should be listed in order from oldest to most recent.

### dd/mm/yyyy

#### Changes

* 
### dd/mm/yyyy

#### Changes

* 