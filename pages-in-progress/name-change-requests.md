---
description: Process for changing the name of an author or editor in eLife content
---

# Name change requests

## What does this page cover?

When an individual changes their name \(through marriage, by deed-poll, as a result of transitioning to another gender etc.\), they may wish to update their articles in the scientific record to ensure that their work can be found under their new name.

eLife aims to allow authors, reviewers and editors to update their names with a minimum of hassle.

## Editorial process

### Initial request



### Confirmation



### Editorial approval



## Production process

Once the name change request has been approved by the Editorial team, they will supply a list of the affected content to the Production team. It will be Production's responsibility to ensure that all versions of this content are updated with the individual's new name. This will cover the following:

* The current version of the article
* Any previously published versions \(PoA, VoR\)
* Any related content such as Insights, Corrections or co-submissions
* Any pending versions of the article \(VoR, new versions\) in the proofing system

### Updating the current version of the article

The current version of each affected article should be silently corrected following the normal process. The individual's name should be changed in the following places where applicable:

* Article metadata:
  * author list or peer review details
  * author contributions
  * competing interests
  * funding table \(should correct automatically\)
  * funding statement
  * data statement
* Article content:
  * acknowledgements
  * decision letter
  * author response

In cases where the individual's pronouns have changed in addition to their name, the following sections should be checked and updated if necessary:

* competing interests
* funding statement
* acknowledgments

For Insight articles and co-submissions, the following will also need to be corrected where applicable:

* key info box details for the related article \(in Insights\)
* mentions of the first author\(s\) in the text \(if applicable\)
* entry for related article in the reference list

These changes can be made in the proofing system and once signed off for silent correction, the updated article will overwrite the latest published version. However, if there are any previous versions of the article on the system, these will still show the old name. Therefore, these need to be corrected as well.

### Extracting old versions from the archive

To identify previously published versions of the affected articles, go to the `elife-publishing-archive` bucket in the eLife Amazon Web Services \(AWS\). All versions of published eLife articles are stored here. If a user searches for a published article, they will see zip packages for each PoA and VoR version that has been issued.

![Example of version history for an article in archive](../.gitbook/assets/screen-shot-2020-10-06-at-12.50.16.png)

To silently correct these, the first step is to download all package prior to the current \(latest\) version and note the full package names. These names will be required for loading to the silent correction bucket \(`prod-elife-silent-corrections`\) once all versions have been revised. So, for example, in the above case, there would be three packages to correct:

* 2 PoA versions
  * elife-57056-poa-v1-20200902000000.zip
  * elife-57056-poa-v2-20200909092638.zip
* 1 VoR versions
  * elife-57056-vor-v3-20200921142808.zip

These will need to be edited offline and then uploaded to the silent correction bucket to overwrite their respective versions of the article.





