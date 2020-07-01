---
description: Description of common terms used at eLife
---

# eLife Glossary

#### **Assets**

All separate files associated with an article. Includes videos, images, source code, source data, supplementary files. Anything that is delivered outside of the main Word doc \(except the metadata XML file\).

#### **Fragments**

Any part of an article that has a sub DOI. These are similar to assets as they each have sub article DOIs, but also include content embedded within the main XML \(ie tables, boxes, Digest, Abstract, Decision letter, Author response\)

#### **PoA**

Publish on accept. This is an eLife term for author accepted manuscripts published on acceptance before full production processing. In file naming terms the abbreviation is all lower case \(poa\) but generally in descriptions it is PoA.

#### **VoR**

Version of record. This is standard term for the final full text version of an article that is published in full \(in HTML on the eLife website\). 

#### **Versions**

Each time a published article is changed and published it has a new version number attached to it.

In the back end systems we define the versions according to whether they are PoA or VoR but at the front end versioning will be maintained across both versions \(ie PoA 1= version 1, PoA 2= version 2, VoR 1= version 3, VoR 2= version 4\)

#### ORCID

Stands for 'Open Researcher and Contributor ID'. This ID uniquely identifies scientific and other academic authors and contributors.

#### RRID

Stands for 'Research Resource Identifier'. Resources in this context are research resources such as reagents, software, tools or materials. The identifiers are globally unique and persistent

#### **DOI**

Digital Object Identifier. This is composed of a generic to eLife string \(10.7554/eLife.\), followed by the manuscript number \(00013\) and a further suffix for subsidiary DOIs where relevant \(eg 10.7554/eLife.00013.001\)

**Potential additional** attribute \(@pub-id-type\):

#### **PMID**

PubMed identifier. This is currently not stored in the XML or displayed on the website.

#### **PubMed**

This is a database of article metadata \(including abstracts\) with links to full articles at the publisher's website. It accepts PoA citations, which can be updated by the publisher until the VoR is published. Then no more updates are allowed without manual intervention by the PubMed team. Submissions to PubMed are via XML and using the PubMed DTD

#### **PMCID**

PubMed Central identifier. This is currently not stored in the XML or displayed on the website

_Proposal_: added to the article. Workflow TBD

#### **PubMedCentral**

This is a free full-text archive of biomedical and life sciences journal literature. eLife deposits all VoRs in PMC. They do not accept PoA content from the publisher \(currently\). We can make updates to the VoR content and redeliver to PMC. PMC uses JATS xml.

**medline** – NLM Medline identifier. This is currently not stored in the XML or displayed on the website

_Proposal_: Not sure whether we can add it as we were accepted by Medline a year ago and they still have not indexed any eLife content!

#### **Article XML file**

This is the full XML version of the article for VoR. For PoA the file is limited to most metadata and an abstract, but does not contain the rest of the text.

#### **Article PDF file** 

This is the typeset version of the article, and excludes the following: 

* Figure supplements, Source code, Source data and Supplementary file – these items are all mentioned in the pdf and linked out to them via DOI clickable links
* Decision Letter, and Author’s response – not referenced but available in full in the XML version of the article
* Videos – an image of a still of the video is embedded in the PDF and if clicked will open the video online

#### **Figures PDF file**

This is a PDF version of all figures for an article. This is only produced if an article has  supplementary figures.

#### **Metadata XML file**

This is generally a reference to the submission system output, which contains xml metadata of the article from the submission screens.

#### **Decision letter**

This is an edited version of the decision letter that was sent to the author on acceptance of the article. This is not present in the article PDF but is part of the XML file and is viewable on the eLife website. It contains its own DOI.

#### **Author response**

This is an edited version of the author’s letter in response to the decision letter. This is not present in the article PDF but is part of the XML file and is viewable on the eLife website. It contains its own DOI.

#### **Digest**

eLife digests explain the findings of eLife papers to a broader audience. Digests are written by editors and writers working together with authors.

#### **elife-bot**

This is the automatic system that runs various workflows at set times daily \(e.g. the PoA workflow\), or in response to a trigger \(e.g. uploading a package to the final bucket\).

#### **bucket**

eLife uses Amazon S3 buckets \(a public cloud storage resource\) to store objects consisting of data and its descriptive metadata

#### **Crossref** 

An agency that registers DOIs for articles

### eLife journal teams

Editorial

Production

Features

