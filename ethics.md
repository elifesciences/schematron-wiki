---
description: >-
  Protecting the dignity, rights, and welfare of research subjects and
  participants.
---

# Ethics

## What are ethics in research?

All authors are expected to adhere to the guidelines set by their institutional review board or ethics committee when the study was approved. For example, animals should not undergo any unnecessary suffering if this can be avoided, and human participants should be be allowed the right to confidentiality and data protection. 

## What needs to be checked?

If the study includes the use of animals or people, we ask authors to provide an ethics statement during submission to indicate that the study has been approved and that the guidelines have been adhered to. Each institute will have their own statement. 

The statement should be checked to ensure it makes sense and is formatted correctly, with no missing spaces or obvious typos. These are included within the article details but the authors may choose to expand on these within the main text as well. 

## Examples

**Ethics statement for animal subjects:** 

Animal experimentation: All training and experimental procedures were in accordance with the National Institutes of Health Guide for the Care and Use of Laboratory Animals and were approved by the University of Pennsylvania Institutional Animal Care and Use Committee \(protocol \#804726\). Details about monkey training, behavioral tasks, and caudate recording were reported previously \(Fan et al., 2018; Doi et al., 2020\).

**Ethics statement for human participants:**

Human subjects: Mothers provided informed consent for their infants to be included in the PreSSMat birth cohort and to have clinical data, cord blood and newborn heel prick samples collected and analysed. The study was approved by the Research Review and Ethical Review Committees of the International Centre for Diarrhoeal Disease Research, Bangladesh \(PR-16039\) on July 10, 2016. Approvals were also obtained from the Research Ethics Boards of the Ottawa Health Science Network \(20160219-01H\) on June 10, 2016, and the Children's Hospital of Eastern Ontario \(16/20E\) on June 8, 2016.

## Schematron checks

### Content checks

#### ethics-title-test

**Error:** _fn-group\[@content-type='ethics-information'\] must have a title that contains 'Ethics'. Currently it is 'XXXXXX'._

**Action:** This error will show if the title is anything but 'Ethics', the title should be corrected to 'Ethics'.  

#### ethics-broken-unicode-test

**Warning:** _Ethics statement likely contains a broken unicode - XXXXXX._

**Action:** Sometimes when articles are exported from eJP, some characters appear as broken unicode. Make sure the ethics statement does not have a broken unicode - if it does, search for the unicode online to see what the character should be and replace accordingly. 

#### sec-test-4

**Warning:** Section has a title 'XXXXXX'. Is it a duplicate of, or very similar to, the ethics statement \(in the article details page\)? If so, it should be removed. If not, then which statement is correct? The one in this section or 'XXXXXX'?

**Action:** Sometimes authors include the ethics statement within the main text as well as in eJP, these can often be removed if they are duplicates. If the text looks very similar, Editorial should be contacted to determine which is the correct statement to use. This warning may appear if the word 'ethics' are used within the main text, for example "Results: Editors' views on publication ethics". In this case, the warning should be ignored. 

#### ethics-info-conformity

**Error:** The ethics statement must end with a full stop.

**Action:** Make sure there is a full stop at the end of the statement. If there is already a full stop, ensure there is not an extra space following it. 

#### ethics-info-supplemental-conformity

**Action:** If the ethic statement contains the phrase 'supplemental figure', this will need to be updated to use the final labels e.g. Figure 1-figure supplement 1. If it is not clear how to do this, add the following author query:

* Please update your ethics statement to use the final labels for all figure supplements and supplementary files mentioned.

### XML structure checks 

#### ethics-test-1

**Error:** Ethics fn-group can only be captured as a child of a sec \[@sec-type='additional-information'\]

**Action:** The Ethics fn-group should be captured within the 'additional-information' in the XML. Exeter will need to fix this. 

#### ethics-test-2

**Error:** Ethics fn-group may not have more than 3 fn elements. Currently there are XXXXXX.

Action: Authors are allowed to include one ethics statement for clinical trial registration, one for human, one for animal. If there are additional statements, Editorial may need to be contacted so they can confirm which should be used. 

#### ethics-test-3

**Error:** Ethics fn-group must have at least one fn element.

**Action:**  In the XML, the fn element contains the ethics statement. This element should only be present if an ethics statement has been provided. This error will fire if a fn group does not have an fn element. Double check which ethics statement should be present in this fn-group and correct accordingly.

#### ethics-test-4

**Error:** This fn must have an @fn-type='other'

**Action:** If the fn-type is not 'other' this will need to be corrected by Exeter. 

**Warning:** Ethics statement contains the phrase 'supplemental figure'. This will almost certainly need updating to account for eLife's figure labelling.

## XML structure

```markup
<fn-group content-type="ethics-information">
<title>Ethics</title>
<fn fn-type="other">
<p>Human subjects: Informed consent was obtained for all participants. 
Procedures for experiment 1 were approved by and complied with the guidelines
of the Oxford Central University Research Ethics Committee (protocol numbers: 
MSD-IDREC-C2-2012-36 and MSD-IDREC-C2-2012-20). Procedures for experiment 2 were
approved by and complied with the guidelines of the University of California-
Berkeley Committee for the Protection of Human Subjects (protocol ID 2010-12-2638).
</p></fn>
</fn-group>
```



