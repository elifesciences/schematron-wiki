---
description: eLife's published peer review material
---

# Decision letters and Author responses

## What needs to be checked?

* Both a Decision Letter and Author response are present prior to publication \(an Author response may not be included in very rare cases, but this is not the norm\).
* All Figures, Tables, and Videos display as expected.
* There are no Schematron message relating to the incorrect capture of content in the DL or AR.

## What is a Decision letter?



## What is an Author Response?



## How are DLs and ARs created?

DLs and ARs are collated from the peer review correspondence as indicated above. The eLife Editorial team \(Ed Office\) collate this content into one Word file. Each Word file contains both the Decision Letter and Author Response \(provided there are both, which is typical for any research article\).

A Macro is run on the content which normalises the content \(italicises certain words and phrases, normalises word styles, corrects the capitalisation of 'eLife' and other words, etc.\). This is then QC'd by Ed Office, before then being QC'd by the eLife Editorial team.

## How are DLs and ARs loaded?

The word document containing both the DL and AR, and any accompanying assets are zipped up, and placed in the `elife/decision-letter-input` AWS bucket by the eLife Editorial team.

At this point the eLife bot will notice the zip and process the content in order to send it to Kriya.

Any assets are placed on an FTP for Exeter to download when processing the DL. The Word document is parsed as JATS \(using the [decision-letter-parser](https://github.com/elifesciences/decision-letter-parser)\), and posted via API to Kriya, where it is ingested in the accompanying article.

Any figures are automatically included in the article in Kriya \(due to them being placed on the FTP\). However, any videos will need to be processed manually, since they require uploading to the Glencoe FTP, along with accompanying requisite metadata.

## DL Word markup for JATS parsing

## DL workflow

eLife production will be made aware of any Decision Letters being loaded by an automated email appearing in the Production Inbox. Certain actions may be required depending on whether this email indicates that the DL was posted successfully or not \(see also [**Decision letter loading**](../../toolkit/managing-the-production-inbox.md#decision-letter-loading) for more information on how to handle this email\). 

### The DL was posted successfully

The state of the article in Kriya will determine what stage it should proceed to, or not as the case may be. See the below workflow diagram for successful Decision Letter emails.

![](../../.gitbook/assets/dl-workflow.svg)

**`For Review`** - edit the above image [**here**](https://docs.google.com/drawings/d/16Q4mvzujVITy10nbAjmZTdH6CHO-4E4k5QBKrXolXyI/edit).

### The DL was not posted successfully

The email in the Production Inbox will look something like the following:

![An example of a Decision Letter failure email](../../.gitbook/assets/screenshot-2020-07-20-at-17.26.28.png)

There are numerous reasons why a Decision Letter might fail 



## Schematron checks

The following tests are run on Decision Letters and Author responses. 

### Content checks



### **XML structure checks**

## XML structure

