---
description: How to fork code to eLife's
---

# Forking Git-based repos

## Overview

When a paper is accepted in eLife, if the authors have included a link to code within GitHub, a copy of the authors' repository is "forked" \(cloned\) to the eLife GitHub account, with a clear link to the authors' original repository. This allows an archived version of the code available at the time of publication to be kept. Only code that has been created for the specific work and has an appropriate license can be forked.

Overall, whether a GitHub repo needs forking can usually be discerned from reading the context in which it is mentioned:

* Code mentioned in the Data Availability Statement \(e.g. “All analysis code has been made available on GitHub \([https://github.com/learning-memory-and-decision-lab/NassarBrucknerFrank\_eLife\_2019](https://github.com/learning-memory-and-decision-lab/NassarBrucknerFrank_eLife_2019)\).”\) should usually be forked.
* Code that is mentioned in the text only and referred to as being a ‘package’ is unlikely to have been created for this specific work and therefore doesn’t need to be forked.
* If the repository is years old, this usually indicates that the code should not be forked as it probably was not created specifically for the paper.

## Checklist for forking repositories

* [ ] [Make sure the repository has an open-source license](forking-git-based-repos.md#checking-licenses)
* [ ] [Fork the code to elife-sciences-publications](forking-git-based-repos.md#forking-to-elifes-repository)
* [ ] [Add the new URL to the article text to indicate where the copy is archived](forking-git-based-repos.md#adding-the-new-url-to-the-article)
* [ ] [Add a software reference for the repository](./)
* [ ] [Add an author query to indicate the repo has been forked and text has been added](forking-git-based-repos.md#add-an-author-query-to-indicate-the-repo-has-been-forked)
* [ ] [Add the eLife paper reference to the README of the forked repository](forking-git-based-repos.md#add-the-elife-paper-reference-to-the-readme-of-the-forked-repository)
* [ ] [Archive the forked repository](forking-git-based-repos.md#archiving-the-forked-repository)

## Checking licenses

Only software with open-source licenses can be forked. For GitHub repositories, the licensing information, if available, can be seen beside the weights and measures icon \(see below\).

![](../../../../.gitbook/assets/screenshot-2020-04-21-at-12.36.20.png)

You can check whether a license is open-source by clicking on it. In the above example, clicking on the MIT license brings up this information: 

![](../../../../.gitbook/assets/screenshot-2020-04-21-at-12.39.19.png)

If the license allows free use, modifications and distribution, it is an open-source license, and the repository can be forked. 

The following are all commonly used open-source licenses:

* [Apache License 2.0](https://opensource.org/licenses/Apache-2.0)
* [BSD 3-Clause "New" or "Revised" license](https://opensource.org/licenses/BSD-3-Clause)
* [BSD 2-Clause "Simplified" or "FreeBSD" license](https://opensource.org/licenses/BSD-2-Clause)
* [GNU General Public License \(GPL\)](https://opensource.org/licenses/gpl-license)
* [GNU Library or "Lesser" General Public License \(LGPL\)](https://opensource.org/licenses/lgpl-license)
* [MIT license](https://opensource.org/licenses/MIT)
* [Mozilla Public License 2.0](https://opensource.org/licenses/MPL-2.0)
* [Common Development and Distribution License](https://opensource.org/licenses/CDDL-1.0)
* [Eclipse Public License version 2.0](https://opensource.org/licenses/EPL-2.0)

If there is no license, please add the following author query \(if the code is not on GitHub, please remove the text "...and instructions on how to add a license to GitHub…"\):

* We notice that you have made your code available but it seems it hasn't been licensed. Software without a license cannot be safely integrated, modified and redistributed. With this in mind, we would like to ask you to license your code \(we would recommend using an open source license \[https://opensource.org/licenses\]\). Guidance on what license might better suit you can be found at https://choosealicense.com/ and instructions on how to add a license to a GitHub repository are available here https://help.github.com/articles/adding-a-license-to-a-repository/. Once your code has been licensed, we will fork it to our own GitHub repository for archiving purposes.

## Forking to eLife's repository

If an open-source license is available, the next step is to fork the code. Make sure you are logged in to GitHub with your Production account and click on the link to the author's repository. Then, click on 'Fork' \(circled below\) and select 'elife-sciences-publications'.

![Click on &apos;Fork&apos;](https://lh5.googleusercontent.com/sIT3VkEG1yZZFhK-ML1sUum1i8cyS2jztgY8QkKMqyPRavvpjBS3vImfMN3_GBCYm0LxxN_U_tJ6Xns_ESpKygVTFMzrGCCrZslGiHByny-ztSn-Gyb44hG_NC_rJeAAlqJFbBAl)

![Choose the &apos;elife-sciences-publications&apos; repository.](https://lh6.googleusercontent.com/WKG8mFGrtVXAfNRKWspVk8Wa31Ua9tWnbBxvWM9HDDx5YSeX7KIGViuTrCZ0aMcylivZsGKmcZoT-7GRmejn6ywq4RyKqnWTkWfNL77bIhJb8lMRKEliAyylz2xXOPbzisQNGQoG)

The forking process will then begin. When it is complete, you will be taken to the new page in the eLife Science Publications repository with the forked code.

![](https://lh3.googleusercontent.com/Ry-MRNR2vRwyXo6-IyO-Snz3ygjIVF-KpqjNpeDWgw1aijg9ZkN2rN3s-4rnTegAP4K7VaAdZ1VX1rAnkowe8wZBXM2Fb-9tjW1BFEv87foU8l9knOfdcTi5ZbIxXyENskBypaQO)

## Adding the new URL to the article

Once a repository has been forked, we need to include the link to this in the article. The authors may have referred to their code in the article text as well as in the data availability statement. In both instances, we need to add the text 'copy archived at XXXXXX' with the new link in place of 'XXXXXX'.

![](../../../../.gitbook/assets/screenshot-2020-04-21-at-12.57.34.png)

## Add an author query to indicate the repo has been forked 

The next step is to leave an author query to indicate that the repository has been forked:

* Per eLife policy, we have forked your GitHub code in order to archive it in our own repository and have updated the text and Data Availability Statement to reflect this. Please confirm that you are happy with the revised wording.

This query can just be left in one place where the extra text has been added.

## Add the eLife paper reference to the README of the forked repository

The next step is to indicate which eLife paper the repository relates to. If the repository contains a README file, check whether it already contains a link to the eLife paper. We need to include the author list, title of the paper and URL. An example where the authors already included this information is below:

> This analysis refers to the following publication: Capitanio, JS; Montpetit, BM; Wozniak, RW. "Human Nup98 regulates the localization and activity of DExH/D-box helicase DHX9" The corresponding author for the work is Prof. Richard W. Wozniak, Department of Cell Biology, Faculty of Medicine and Dentistry, University of Alberta, Canada. Available at http://dx.doi.org/10.7554/eLife.18825, eLife, 2017.

If this information is not given in the README, click on the file README.md file \(not .txt\)

![](https://lh3.googleusercontent.com/aAapzq3ex8GM8bbhnOPgCmfrP1tOB_pdeMQA4zDnGARNCQ3usjZP50Hz5pRe-VDhk4jbjlBdDwUOoaggyOIHW9h6a9LpPV5MFdy3hWgFetmedd-fPk_uB1KSGRSuWzT7G32m-g0f)

Click on the pencil to edit the text

![](https://lh5.googleusercontent.com/_scethZCHi6mgsydS-S4dqUyf55hLD6kRw8pAgrxOc_ueUQ8rxUuxr8FYmnGVm_bbHUDjGvoswdJNFasodOPMCntxR8sTkOb1L3LTJ5jjwt5qI199nBD9gcKOiO67OrIDZq2GXgH)

Click on the text box and enter the following text: 

> This code is associated with the paper from \[**Insert citation of paper**\] "\[**Insert title of paper**\]". eLife, \[**Insert year**\]. http://dx.doi.org/10.7554/eLife.\[**Insert DOI**\]

Follow the [reference citation](../../reference-citations.md) guide for inserting the citation of the paper. You can preview the change to check the formatting:

![](https://lh3.googleusercontent.com/flvtEt7-A_FXSNgyDDbFwia7iyO91rPKmxhBTW7DsZcNt5hn9oB-4L5jO9Cu35gjpyLAkp6YNlqfUc9HAhuWmx2pnD8oa8oko9-E643TxQkHu_3cUB21yQCBWpSaTR-VrrfAYtjC)

If it looks like the above example, click on 'Commit changes' to save. 

![](https://lh3.googleusercontent.com/WoqSPvsuZAcAC0utneouUUriBAu4k9yNw19jpwhycAQlanndqN1DpvP7Z5k5OAEgU4eoM-SJBB_mTLBlwBwuMd9EsHR8Hydv3HIbpFdm7tgETfAqbOb_RYT32_qw80wdQgLv0ubQ)

If there is no README file, this will need to be created. To do this, go back to the forked copy of the repository and click on 'Create file.'

![](../../../../.gitbook/assets/screenshot-2020-04-21-at-13.34.27.png)

You can then enter the title as 'README' and proceed with the steps outlined above. 

![](../../../../.gitbook/assets/screenshot-2020-04-21-at-13.35.03.png)

## Archiving the forked repository

To make sure no further changes can be made to the repository, it needs to be archived. Once the code is forked and the README has been updated with the article details, click on the Settings tab.

![](../../../../.gitbook/assets/screenshot-2020-04-21-at-13.44.22.png)

Scroll down to the 'Danger Zone'  and click on 'Archive this repository'. 

![](https://lh3.googleusercontent.com/1ROdTAfevzITerz0Dr8srlC3GmZqHr10KWh8H5a0kCIPNXS98J20dkkM9bhagF49GsB00kPEExmIHepOWrWCbLhOEPsUFufVCXzfgBfKMSQtzDUovK-d005ojWS7ddKXLA_jnBXQ)

The following window will pop up:

![](https://lh5.googleusercontent.com/16-4gneE-Bt-PrqoSepErx-SglkAtxKUUjRcVxVnGWb61oimVAmAo4fiXRWiarv0Ip-FwYvDjLADVsHIF3hhLzf19QNa_Zc5eCPpkeVv7kEcm8EWzZSy49Jl8cD437wub5tdXgQY)

Enter the name of the repository \(in the example above, this would be 'Orbital-Tracking-Zebrafish2019-'\) and click to confirm you understand the consequence of archiving. The repository will become read-only and any further changes will not be possible unless it is un-archived by reversing this step. This is the final step.

## Further reading

Authors may upload code to other websites instead of GitHub. These include GitLab, Bitbucket, and others. For more information on how to deal with these instances, click here.

