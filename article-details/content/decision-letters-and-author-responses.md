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

eLife production will be made aware of any Decision Letters being loaded by an automated email appearing in the Production Inbox. Certain actions may be required depending on whether the email indicates that the DL was posted successfully or not \(see also [**Decision letter loading**](../../toolkit/managing-the-production-inbox.md#decision-letter-loading) for more information on how to handle this email\). In the event that a Decision Letter contains Author response videos, Editorial will inform Production prior to uploading, see [**below**](decision-letters-and-author-responses.md#dl-with-author-response-videos) on what to do when this occurs workflow. 

### The DL was posted successfully

The state of the article in Kriya will determine what stage it should proceed to, or not as the case may be. See the below workflow diagram for successful Decision Letter emails. \[Note that [**a separate workflow**](decision-letters-and-author-responses.md#dl-with-author-response-videos) is required if a Decision Letter contains Author response videos.\]

![https://docs.google.com/drawings/d/16Q4mvzujVITy10nbAjmZTdH6CHO-4E4k5QBKrXolXyI/edit](../../.gitbook/assets/dl-workflow%20%281%29.svg)

**`For Review`** - edit the above image [**here**](https://docs.google.com/drawings/d/16Q4mvzujVITy10nbAjmZTdH6CHO-4E4k5QBKrXolXyI/edit).

### The DL was not posted successfully

The email in the Production Inbox will look something like the following:

![An example of a Decision Letter failure email](../../.gitbook/assets/screenshot-2020-07-20-at-17.26.28.png)

There are numerous reasons why a Decision Letter might fail.

### DL with Author response videos

Videos need to manually uploaded by Exeter to the Glencoe FTP in order for them to display in the proofing system, and on the website when published. This means that the normal workflow cannot be followed, as it requires a manual action on Exeter's part.

## Schematron checks

The following tests are run on Decision Letters and Author responses. 

### Content checks

#### dec-letter-title-test

**Error**: _title-group must contain article-title which contains 'Decision letter'. Currently it is XXXXXX._

**Action**: This error will fire if the Decision letter does not have a title which is 'Decision letter'. It means something has gone wrong in the processing of the Decision letter, and will have to be fixed by Exeter.

#### reply-title-test

**Error**: _title-group must contain article-title which contains 'Author response'. Currently it is XXXXXX._

**Action**: This error will fire if the Author response does not have a title which is 'Author response'. It means something has gone wrong in the processing of the Author response, and will have to be fixed by Exeter.

#### dec-letter-reply-test-5

**Error**: _XXXXXX paragraph contains what looks like pseudo-code - XXXXXX._

**Action**: This will fire is a paragraph in a Decision letter or Author response contains the text `</author response` or similar. This type of pseudo-code is included in the original Word document by the eLife editorial team as flags for the decision-letter-parser to correctly recognise what a certain object in the document should be captured as. If this text is in the JATS, however, that means that the content has not been correctly recognised by the parser. Exeter should flag this error with the eLife production team. The eLife production team should check the original word file, in order to determine how this should have been captured, and act accordingly \(it may be that you just have to remove the superfluous text, or it may be the case that an author response image or table needs to be added, in which case Exeter will have to make this change\). It is also worth notifying Fred in the Production team so that he can feed this back to the developer responsible for the decision-letter-parser.

#### dec-letter-reply-test-6

**Warning**: _XXXXXX paragraph contains what might be pseudo-code or tags which should likely be removed - XXXXXX._

**Action**: This will fire is a paragraph in a Decision letter or Author response contains text such as `<italic>` or `</author response image title>` or  similar. This type of pseudo-code is included in the original Word document by the eLife editorial team as flags for the decision-letter-parser to correctly recognise what a certain object in the document should be captured as. If this text is in the JATS, however, that means that the content has not been correctly recognised by the parser. Exeter should flag this error with the eLife production team. The eLife production team should check the original word file, in order to determine how this should have been captured, and act accordingly \(it may be that you just have to remove the superfluous text, or it may be the case that an author response image or table needs to be added, in which case Exeter will have to make this change\). It is also worth notifying Fred in the Production team so that he can feed this back to the developer responsible for the decision-letter-parser.

#### dec-letter-front-test-1

**Error**: _sub-article front-stub must contain article-id\[@pub-id-type='doi'\]._

**Action**: This will fire if a Decision letter or Author response does not contain a doi. Exeter will need to correct this problem when it arises. 

#### dec-letter-front-test-4

**Warning**: _decision letter front-stub has only 1 contrib-group element. Is this correct? i.e. were all of the reviewers \(aside from the reviewing editor\) anonymous? The text 'The reviewers have opted to remain anonymous' or 'The reviewer has opted to remain anonymous' is not present and there is no link to Review commons in the decision letter._

**Action**: This will fire if all of the following conditions are met:

* There are no reviewers in the information for the Decision letter.
* The text 'The reviewers have opted to remain anonymous' or 'The reviewer has opted to remain anonymous' is not present in the decision letter
* There is no link to Review commons \([https://www.reviewcommons.org/](https://www.reviewcommons.org/)\).

Every Decision letter should have at least 1 reviewer, unless the reviewers opted to be anonymous, or if the paper was reviewed via Review commons. If this warning fires, Exeter should inform eLife Production. eLife Production should query the eLife Editorial team, asking whether Reviewers need to be included and if so, what their details are \(name and optional affiliation\). If this information has been provided by Editorial, then these details will need to be added in Kriya.

#### dec-letter-editor-test-1

**Warning**: _First contrib-group in decision letter must contain 1 and only 1 editor \(contrib\[@contrib-type='editor'\]\)._

**Action**: If this warning fires, it means that there is no Reviewing Editor in the details for the Decision letter. Exeter should checking the eJP output and if this information was not included there, then inform the eLife Production team. The eLife production team should check the article in eJP \(it might be that the editor details were added subsequent to the article being exported to Kriya\). If the information is not available in eJP, then this should be queried with the eLife Editorial team in order to get the details for the the Reviewing Editor \(name and affiliation - both are mandatory\). Note that this test is a warning \(instead of an error\) for the purposes of dealing with old eLife content - if it fires in live content, it should _**always**_ be resolved prior to publication.

#### dec-letter-editor-test-3

**Error**: _Editor in decision letter front-stub must have the role 'Reviewing Editor' or 'Senior and Reviewing Editor'. XXXXXX has 'XXXXXX'._

**Action**: If this warning fires, it means that the Editor details are incorrect in the Decision letter. An Editor must have a role which is either Reviewing Editor' or 'Senior and Reviewing Editor'. Exeter will have to correct this.

#### ~~dec-letter-editor-test-6~~

~~**Error**: _Senior Editor in decision letter front-stub must have the role 'Senior Editor' or 'Senior and Reviewing Editor'. XXXXXX has 'XXXXXX'._~~

~~**Action**:~~ 

#### dec-letter-reviewer-test-1

**Error**: _Second contrib-group in decision letter must contain a reviewer \(contrib\[@contrib-type='reviewer'\]\)._

**Action**: 

#### dec-letter-reviewer-test-2

**Error**: _Second contrib-group in decision letter contains a contrib which is not marked up as a reviewer \(contrib\[@contrib-type='reviewer'\]\)._

**Action**: 

#### dec-letter-reviewer-test-3

**Error**: _Reviewer in decision letter front-stub must have the role 'Reviewer'. XXXXXX has 'XXXXXX'._

**Action**: 

#### dec-letter-reviewer-test-6

**Warning**: _Second contrib-group in decision letter contains more than three reviewers. Is this correct? Exeter: Please check with eLife. eLife: check eJP to ensure this is correct._

**Action**: 

#### dec-letter-body-test-1

**Error**: _First child element in decision letter is not boxed-text. This is certainly incorrect._

**Action**: 

#### dec-letter-body-test-2

**Error**: _The text 'Review Commons' in 'XXXXXX' must contain an embedded link pointing to https://www.reviewcommons.org/._

**Action**: 

#### reply-front-test-1

**Error**: _sub-article front-stub must contain article-id\[@pub-id-type='doi'\]._

**Action**: 

#### reply-body-test-1

**Error**: _author response doesn't contain a disp-quote. This has to be incorrect._

**Action**: 

#### reply-body-test-2

**Error**: _author response doesn't contain a p. This has to be incorrect._

**Action**: 

#### reply-disp-quote-test-1

**Warning**: _disp-quote in author reply does not have @content-type='editor-comment'. This is almost certainly incorrect._

**Action**: 

#### reply-missing-disp-quote-test-1

**Warning**: _para in author response is entirely in italics, but not in a display quote. Is this a quote which has been processed incorrectly?_

**Action**: 

#### reply-missing-disp-quote-test-2

**Warning**: _A long piece of text is in italics in an Author response paragraph. Should it be captured as a display quote in a separate paragraph? 'XXXXXX' in 'XXXXXX'_

**Action**: 

**unicode-test-1**

**Warning**: _XXXXXX element contains 'â‚¬' - this should instead be the character '€'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'â‚¬' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '€'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-2**

**Warning**: _XXXXXX element contains 'Ã€' - this should instead be the character 'À'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã€' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'À'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-3**

**Warning**: _XXXXXX element contains 'Ã' - this should instead be the character 'Á'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Á'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-4**

**Warning**: _XXXXXX element contains 'â€š' - this should instead be the character '‚'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'â€š' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '‚'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-5**

**Warning**: _XXXXXX element contains 'Ã‚' - this should instead be the character 'Â'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã‚' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Â'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-6**

**Warning**: _XXXXXX element contains 'Æ’' - this should instead be the character 'ƒ'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Æ’' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'ƒ'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-7**

**Warning**: _XXXXXX element contains 'Ãƒ' - this should instead be the character 'Ã'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ãƒ' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Ã'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-8**

**Warning**: _XXXXXX element contains 'â€ž' - this should instead be the character '„'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'â€ž' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '„'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-9**

**Warning**: _XXXXXX element contains 'Ã„' - this should instead be the character 'Ä'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã„' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Ä'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-10**

**Warning**: _XXXXXX element contains 'â€¦' - this should instead be the character '…'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'â€¦' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '…'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-11**

**Warning**: _XXXXXX element contains 'Ã…' - this should instead be the character 'Å'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã…' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Å'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-13**

**Warning**: _XXXXXX element contains 'Ã†' - this should instead be the character 'Æ'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã†' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Æ'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-14**

**Warning**: _XXXXXX element contains 'â€¡' - this should instead be the character '‡'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'â€¡' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '‡'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-15**

**Warning**: _XXXXXX element contains 'Ã‡' - this should instead be the character 'Ç'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã‡' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Ç'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-16**

**Warning**: _XXXXXX element contains 'Ë†' - this should instead be the character 'ˆ'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ë†' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'ˆ'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-17**

**Warning**: _XXXXXX element contains 'Ãˆ' - this should instead be the character 'È'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ãˆ' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'È'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-18**

**Warning**: _XXXXXX element contains 'â€°' - this should instead be the character '‰'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'â€°' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '‰'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-19**

**Warning**: _XXXXXX element contains 'Ã‰' - this should instead be the character 'É'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã‰' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'É'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-21**

**Warning**: _XXXXXX element contains 'ÃŠ' - this should instead be the character 'Ê'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'ÃŠ' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Ê'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-22**

**Warning**: _XXXXXX element contains 'â€¹' - this should instead be the character '‹'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'â€¹' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '‹'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-23**

**Warning**: _XXXXXX element contains 'Ã‹' - this should instead be the character 'Ë'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã‹' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Ë'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-24**

**Warning**: _XXXXXX element contains 'Å’' - should this instead be the character 'Œ'? - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Å’' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Œ'? The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-25**

**Warning**: _XXXXXX element contains 'ÃŒ' - this should instead be the character 'Ì'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'ÃŒ' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Ì'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-26**

**Warning**: _XXXXXX element contains 'Ã' - this should instead be the character 'Í'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Í'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-27**

**Warning**: _XXXXXX element contains 'Å½' - this should instead be the character 'Ž'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Å½' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Ž'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-28**

**Warning**: _XXXXXX element contains 'ÃŽ' - this should instead be the character 'Î'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'ÃŽ' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Î'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-29**

**Warning**: _XXXXXX element contains 'Ã' - this should instead be the character 'Ï'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Ï'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-30**

**Warning**: _XXXXXX element contains 'Ã' - this should instead be the character 'Ð'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Ð'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-31**

**Warning**: _XXXXXX element contains 'â€˜' - this should instead be the character '‘'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'â€˜' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '‘'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-32**

**Warning**: _XXXXXX element contains 'Ã‘' - this should instead be the character 'Ñ'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã‘' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Ñ'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-33**

**Warning**: _XXXXXX element contains 'â€™' - this should instead be the character '’'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'â€™' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '’'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-34**

**Warning**: _XXXXXX element contains 'Ã’' - this should instead be the character 'Ò'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã’' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Ò'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-35**

**Warning**: _XXXXXX element contains 'â€œ' - this should instead be the character '“'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'â€œ' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '“'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-36**

**Warning**: _XXXXXX element contains 'Ã“' - this should instead be the character 'Ó'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã“' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Ó'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-37**

**Warning**: _XXXXXX element contains 'â€' - this should instead be the character '”'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'â€' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '”'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-38**

**Warning**: _XXXXXX element contains 'Ã”' - this should instead be the character 'Ô'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã”' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Ô'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-39**

**Warning**: _XXXXXX element contains 'Ã•' - this should instead be the character 'Õ'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã•' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Õ'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-40**

**Warning**: _XXXXXX element contains 'â€“' - this should instead be the character '–'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'â€“' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '–'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-41**

**Warning**: _XXXXXX element contains 'Ã–' - this should instead be the character 'Ö'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã–' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Ö'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-42**

**Warning**: _XXXXXX element contains 'â€”' - this should instead be the character '—'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'â€”' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '—'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-43**

**Warning**: _XXXXXX element contains 'Ã—' - this should instead be the character '×'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã—' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '×'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-44**

**Warning**: _XXXXXX element contains 'Ëœ' - this should instead be the character '˜'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ëœ' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '˜'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-45**

**Warning**: _XXXXXX element contains 'Ã˜' - this should instead be the character 'Ø'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã˜' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Ø'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-46**

**Warning**: _XXXXXX element contains 'Ã™' - this should instead be the character 'Ù'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã™' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Ù'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-47**

**Warning**: _XXXXXX element contains 'Å¡' - this should instead be the character 'š'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Å¡' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'š'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-48**

**Warning**: _XXXXXX element contains 'Ãš' - this should instead be the character 'Ú'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ãš' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Ú'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-49**

**Warning**: _XXXXXX element contains 'â€º' - this should instead be the character '›'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'â€º' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '›'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-50**

**Warning**: _XXXXXX element contains 'Ã›' - this should instead be the character 'Û'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã›' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Û'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-51**

**Warning**: _XXXXXX element contains 'Å“' - this should instead be the character 'œ'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Å“' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'œ'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-52**

**Warning**: _XXXXXX element contains 'Ãœ' - this should instead be the character 'Ü'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ãœ' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Ü'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-53**

**Warning**: _XXXXXX element contains 'Ã' - this should instead be the character 'Ý'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Ý'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-54**

**Warning**: _XXXXXX element contains 'Å¾' - this should instead be the character 'ž'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Å¾' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'ž'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-55**

**Warning**: _XXXXXX element contains 'Ãž' - this should instead be the character 'Þ'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ãž' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Þ'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-56**

**Warning**: _XXXXXX element contains 'Å¸' - this should instead be the character 'Ÿ'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Å¸' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'Ÿ'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-57**

**Warning**: _XXXXXX element contains 'ÃŸ' - this should instead be the character 'ß'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'ÃŸ' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'ß'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-58**

**Warning**: _XXXXXX element contains 'Â¡' - this should instead be the character '¡'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Â¡' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '¡'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-59**

**Warning**: _XXXXXX element contains 'Ã¡' - this should instead be the character 'á'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã¡' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'á'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-60**

**Warning**: _XXXXXX element contains 'Â¢' - this should instead be the character '¢'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Â¢' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '¢'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-61**

**Warning**: _XXXXXX element contains 'Ã¢' - this should instead be the character 'â'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã¢' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'â'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-62**

**Warning**: _XXXXXX element contains 'Â£' - this should instead be the character '£'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Â£' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '£'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-63**

**Warning**: _XXXXXX element contains 'Ã£' - this should instead be the character 'ã'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã£' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'ã'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-64**

**Warning**: _XXXXXX element contains 'Â¤' - this should instead be the character '¤'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Â¤' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '¤'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-65**

**Warning**: _XXXXXX element contains 'Ã¤' - this should instead be the character 'ä'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã¤' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'ä'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-66**

**Warning**: _XXXXXX element contains 'Ã¥' - this should instead be the character 'å'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã¥' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'å'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-67**

**Warning**: _XXXXXX element contains 'Â¨' - this should instead be the character '¨'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Â¨' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '¨'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-68**

**Warning**: _XXXXXX element contains 'Ã¨' - this should instead be the character 'è'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã¨' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'è'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-69**

**Warning**: _XXXXXX element contains 'Âª' - this should instead be the character 'ª'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Âª' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'ª'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-70**

**Warning**: _XXXXXX element contains 'Ãª' - this should instead be the character 'ê'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ãª' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'ê'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-71**

**Warning**: _XXXXXX element contains 'Â­' - this should instead be the character '­'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Â­' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '­'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-72**

**Warning**: _XXXXXX element contains 'Ã­' - this should instead be the character 'í'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã­' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'í'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-73**

**Warning**: _XXXXXX element contains 'Â¯' - this should instead be the character '¯'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Â¯' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '¯'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-74**

**Warning**: _XXXXXX element contains 'Ã¯' - this should instead be the character 'ï'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã¯' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'ï'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-75**

**Warning**: _XXXXXX element contains 'Â°' - this should instead be the character '°'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Â°' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '°'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-76**

**Warning**: _XXXXXX element contains 'Ã°' - this should instead be the character 'ð'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã°' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'ð'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-77**

**Warning**: _XXXXXX element contains 'Â±' - this should instead be the character '±'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Â±' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '±'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-78**

**Warning**: _XXXXXX element contains 'Ã±' - this should instead be the character 'ñ'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã±' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'ñ'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-79**

**Warning**: _XXXXXX element contains 'Â´' - this should instead be the character '´'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Â´' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '´'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-80**

**Warning**: _XXXXXX element contains 'Ã´' - this should instead be the character 'ô'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã´' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'ô'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-81**

**Warning**: _XXXXXX element contains 'Âµ' - this should instead be the character 'µ'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Âµ' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'µ'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-82**

**Warning**: _XXXXXX element contains 'Ãµ' - this should instead be the character 'õ'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ãµ' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'õ'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-83**

**Warning**: _XXXXXX element contains 'Â¶' - this should instead be the character '¶'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Â¶' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '¶'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-84**

**Warning**: _XXXXXX element contains 'Ã¶' - this should instead be the character 'ö'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã¶' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'ö'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-85**

**Warning**: _XXXXXX element contains 'Â·' - this should instead be the character '·'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Â·' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '·'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-86**

**Warning**: _XXXXXX element contains 'Ã·' - this should instead be the character '÷'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã·' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '÷'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-87**

**Warning**: _XXXXXX element contains 'Â¸' - this should instead be the character '¸'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Â¸' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '¸'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-88**

**Warning**: _XXXXXX element contains 'Ã¸' - this should instead be the character 'ø'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã¸' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'ø'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-89**

**Warning**: _XXXXXX element contains 'Ã¹' - this should instead be the character 'ù'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã¹' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'ù'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-90**

**Warning**: _XXXXXX element contains 'Âº' - this should instead be the character 'º'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Âº' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'º'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-91**

**Warning**: _XXXXXX element contains 'Ãº' - this should instead be the character 'ú'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ãº' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'ú'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-92**

**Warning**: _XXXXXX element contains 'Â¿' - this should instead be the character '¿'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Â¿' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, '¿'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

**unicode-test-93**

**Warning**: _XXXXXX element contains 'Ã¿' - this should instead be the character 'ÿ'. - XXXXXX._

**Action**: This message suggests that something has gone wrong with the unicode parsing of the JATS posted to Kriya, and will fire if the character\(s\) 'Ã¿' are present in a Decision letter or Author response. To resolve this replace those characters with the one suggested in the message, in this case, 'ÿ'. The first XXXXXX will be the name of the element \(e.g. 'p'\), and the second XXXXXX is the content within that element.

### **XML structure checks**

#### dec-letter-reply-test-1

**Error**: _1st sub-article must be the decision letter. 2nd sub-article must be the author response._

**Action**: 

#### dec-letter-reply-test-2

**Error**: _sub-article id must be in the format 'sa0', where '0' is it's position \(1 or 2\)._

**Action**: 

#### dec-letter-reply-test-3

**Error**: _sub-article contain one and only one front-stub._

**Action**: 

#### dec-letter-reply-test-4

**Error**: _sub-article contain one and only one body._

**Action**: 

#### dec-letter-editor-test-2

**Warning**: _First contrib-group in decision letter contains a contrib which is not marked up as an editor \(contrib\[@contrib-type='editor'\]\)._

**Action**: 

#### dec-letter-front-test-2

**Error**: _decision letter front-stub must contain at least 1 contrib-group element._

**Action**: 

#### dec-letter-front-test-3

**Error**: _decision letter front-stub contains more than 2 contrib-group elements._

**Action**: 

## XML structure

