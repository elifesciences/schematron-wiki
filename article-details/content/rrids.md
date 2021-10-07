# RRIDs

## What is an RRID?

Research Resource Identifiers \(RRIDs\) are persistent and unique identifiers for referencing a research resource \(e.g. plasmids, antibodies, software\). Identifiers are prefixed with 'RRID:', followed by a second string that indicates the source authority that provided it \(e.g. 'AB' for the Antibody Registry, 'CVCL' for the Cellosaurus, 'MMRRC' for Mutant Mouse Regional Resource Centers, 'SCR' for the SciCrunch registry of tools\) and the unique identifier string itself. 

A condition of publication at eLife is that authors must make the materials and resources described in their article promptly available upon reasonable request from academic researchers. To help promote the identification, discovery, and reuse of key research resources, authors are also encouraged to include RRIDs within their Materials and Methods section to identify the model organisms, cells lines, antibodies, and tools \(such as software or databases\) they have used.

Here are some example RRIDs:

* Antibody: [**RRID:AB\_2178887**](https://identifiers.org/RRID/RRID:AB_2178887)\*\*\*\*
* Model organism: [**RRID:MGI:3840442**](https://identifiers.org/RRID/RRID:MGI:3840442)\*\*\*\*
* Cell line: [**RRID:CVCL\_1H60**](https://identifiers.org/RRID/RRID:CVCL_1H60)\*\*\*\*
* Tools: [**RRID:SCR\_007358**](https://identifiers.org/RRID/RRID:SCR_007358)\*\*\*\*

## What needs to be checked?

RRIDs are most commonly listed in the key resources table but can also appear in the main text of an article. They should be displayed in the format 'RRID:XXXXXX' where XXXXXX is the unique RRID as described above, and there is no space between the colon and the ID. Each RRID should also be hyperlinked to its respective entry in SciCrunch. To find the entry, search for the RRID using [identifiers.org](https://identifiers.org/) ****and use the resulting URL to add a hyperlink to the RRID. Note you need to search with the 'RRID:' prefix, eg 'RRID:AB\_2178887', the link can be generated as follows: [https://identifiers.org/RRID:AB\_2178887](https://identifiers.org/RRID:AB_2178887). Check the link goes to the correct resource once the hyperlink has been added. If the authors have provided an RRID that does not resolve, leave the following query:

* This RRID does not resolve. Please check and provide the correct ID.

## Schematron checks

### Content checks

These checks relate to RRIDs. X or XXXXXX refers to quoted text which will change depending on the article.

#### rrid-test

**Warning**: _'XXXXXX' element contains what looks like XXXXXX unlinked RRID\(s\). These should always be linked using '_https://identifiers.org/RRID:_'. Element begins with XXXXXX._

**Action:** This warning will fire if there is text that looks like an RRID that isn't hyperlinked to an identifiers.org URL. For example if the text 'RRID:SCR\_003070' is appearing in plain text, this should be corrected. Search for the RRID using [identifers.org](https://identifiers.org/) ****and use the resulting URL to add a hyperlink to the RRID.

#### pre-rrid-spacing

**Error**: _RRID link should be preceded by 'RRID:' with no space but instead it is preceded by 'XXXXXX'._

**Action:** RRIDs should be in the format 'RRID:XXXXXX' where XXXXXX is the ID and there is no space between the colon and the ID. Make sure the formatting is corrected accordingly. Alternatively, if the authors have not provided an RRID, leave the following query to ask them for one. 

* Please provide the RRID for this resource.

#### final-rrid-spacing

**Warning**: _RRID link should be preceded by 'RRID:' with no space but instead it is preceded by 'XXXXXX'._

**Action:** RRIDs should be in the format 'RRID:XXXXXX' where XXXXXX is the ID and there is no space between the colon and the ID. Make sure the formatting is corrected accordingly. 

**addgene-test**

**Warning**: _td element containing - 'XXXXXX' - looks like it contains an addgene number. Should this be changed to an RRID with a_ https://identifiers.org/RRID:addgene{number} link?

**Action:** This warning will fire if there is text that looks like an addgene that isn't hyperlinked to an identifiers.org URL. For example if the text 'Addgene\_45215' is appearing in plain text, this should be corrected. Search for the RRID using [identifers.org](https://identifiers.org/) ****and use the resulting URL to add a hyperlink to the RRID.





