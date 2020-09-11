# RRIDs

## What is an RRID?

Research Resource Identifiers \(RRIDs\) are persistent and unique identifiers for referencing a research resource \(e.g. plasmids, antibodies, software\). Identifiers are prefixed with 'RRID:', followed by a second tag that indicates the source authority that provided it \(e.g. 'AB' for the Antibody Registry, 'CVCL' for the Cellosaurus, 'MMRRC' for Mutant Mouse Regional Resource Centers, 'SCR' for the SciCrunch registry of tools\) and the ID itself. 

A condition of publication at eLife is that authors must make the materials and resources described in their article promptly available upon reasonable request from academic researchers. To help promote the identification, discovery, and reuse of key research resources, authors are also encouraged to include RRIDs within their Materials and Methods section to identify the model organisms, cells lines, antibodies, and tools \(such as software or databases\) they have used.

Here are some example RRIDs:

* Antibody: RRID:AB\_2178887
* Model organism: RRID:MGI:3840442
* Cell line: RRID:CVCL\_1H60
* Tools: RRID:SCR\_007358

## What needs to be checked?

RRIDs are most commonly listed in the key resources table but can also appear in the main text of an article. They should be displayed in the format 'RRID:XXXXXX' where XXXXXX is the ID and there is no space between the colon and the ID. Each RRID should also be hyperlinked to its respective entry in SciCrunch. To find the entry, search for the RRID using the [**SciCrunch resolver**](https://scicrunch.org/resolver) ****and use the resulting URL to add a hyperlink to the RRID.

## Schematron checks

### Content checks

These checks relate to RRIDs. X or XXXXXX refers to quoted text which will change depending on the article.

#### rrid-test

**Warning**: _'XXXXXX' element contains what looks like XXXXXX unlinked RRID\(s\). These should always be linked using '_[https://scicrunch.org/resolver/](https://scicrunch.org/resolver/)_'. Element begins with XXXXXX._

**Action:** This warning will fire if there is text that looks like an RRID that isn't hyperlinked to a SciCrunch URL. For example if the text 'RRID:SCR\_003070' is appearing in plain text, this should be corrected. Search for the RRID using the [**SciCrunch resolver**](https://scicrunch.org/resolver) ****and use the resulting URL to add a hyperlink to the RRID.

#### pre-rrid-spacing

**Error**: _RRID \(scicrunch\) link should be preceded by 'RRID:' with no space but instead it is preceded by 'XXXXXX'._

**Action:** RRIDs should be in the format 'RRID:XXXXXX' where XXXXXX is the ID and there is no space between the colon and the ID. Make sure the formatting is corrected accordingly. 

#### final-rrid-spacing

**Warning**: _RRID \(scicrunch\) link should be preceded by 'RRID:' with no space but instead it is preceded by 'XXXXXX'._

**Action:** RRIDs should be in the format 'RRID:XXXXXX' where XXXXXX is the ID and there is no space between the colon and the ID. Make sure the formatting is corrected accordingly. 

## Changelog

After Exeter has fed back on the page and it has been updated, any further changes to the page should be listed in order from oldest to most recent.

### dd/mm/yyyy

#### Changes

* 


