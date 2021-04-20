---
description: This is a page about entries for software in the reference list.
---

# Software references

## What is a software reference?

A software reference gives bibliographic details for a piece of software or computer code. These are hosted on various websites, and are captured in eLife articles as software references. Any code that has been specifically written as part of the work reported in an eLife paper should be archived at Software Heritage \(see more about how to do this [**here**](../../../toolkit/archiving-code.md)\).

![](../../../.gitbook/assets/screenshot-2021-04-20-at-09.20.27.png)

![](../../../.gitbook/assets/screenshot-2021-04-19-at-12.21.39.png)

![Formatting display for different software references in eLife articles](../../../.gitbook/assets/screenshot-2021-04-19-at-11.55.15.png)

![An example of a software citation](../../../.gitbook/assets/screenshot-2021-04-19-at-12.41.36.png)

## What needs to be added?

The following information can be added for software references:

| Kriya field | Mandatory? | XML element | Example |
| :--- | :--- | :--- | :--- |
| Author | Yes \(or a collaboration must be entered instead\) | &lt;person-group person-group-type="author"&gt; &lt;name&gt; | Bloggs J |
| Collaboration | Yes \(or authors must be entered instead\) | &lt;person-group person-group-type="author"&gt; &lt;collab&gt; | R Development Core Team |
| Year | Yes | &lt;year iso-8601-date="XXXXXX"&gt; where XXXXXX is the year | 2020 |
| Software title | Yes | &lt;data-title&gt; | R: A Language and Environment for Statistical Computing |
| Source | Yes \(or Publisher must be entered instead\) | &lt;source&gt; | GitHub |
| Software version | No | &lt;version designator="XXXXXX"&gt; where XXXXXX is the version | 3.1.0 |
| Publisher city | No | &lt;publisher-loc&gt; | Vienna |
| Publisher country | No | &lt;publisher-loc&gt; | Austria |
| Publisher | Yes \(or Source must be entered instead\) | &lt;publisher-name&gt; | Microsoft |
| Website | No | &lt;ext-link ext-link-type="uri" xlink:href="XXXXXX"&gt; where XXXXXX is the URL | [http://doi.org/10.6084/m9.figshare.4742866.v1](http://doi.org/10.6084/m9.figshare.4742866.v1) |

Where the optional information is available, this should also be added in. 

* **Authors**: Enter each author name as a surname followed by initials. This information may be present if you follow the link to the software website. 
* **Collaboration:** If the software was made by a team this should be entered as a collaboration instead of authors ****e.g. ****R Development Core Team.
* **Year**: This should be the year that the software being cited was released. 
* **Software title**: The name of the software.
* **Source**: Where the software is hosted \(this does not necessarily mean the host owns the software\), if applicable.
* **Software version:** The version of software that was used. This is often mentioned in the article text - if it is not, it does not need to be added in.
* **Publisher location:** The location of the publishers of the software. This is separated into city and country fields in Kriya.
* **Publisher**: The company or organisation that created the software and has ownership rights over it, if applicable.
* **Website**: Some software providers add DOIs for their software. These need to be added as a full DOI links instead of just the DOI.

{% hint style="info" %}
If the authors have provided the RRID for a software, this does not need to be added as a software reference.
{% endhint %}

## **When to add software references**

As far as possible, any mentions of tools or packages that were used for analysing data or generating figures should be cited as a software reference \(unless the authors have already included RRIDs\). Often, authors will include URL links to software they have used in their studies either in the main text or in the key resources table. These need to be added as software references so they are in accordance with the [**FAIR principles**](https://peerj.com/articles/cs-86/). Please note, this only needs to be done if the software is not already in the reference list. If any of the mandatory information required for a software reference is missing, please leave the following author query, deleting as appropriate the information that has already been provided:

* eLife's policy is to include full software reference details in accordance with FAIR principles \([https://peerj.com/articles/cs-86/](https://peerj.com/articles/cs-86/)\). If known, please provide ****the authors, year, software name, version used, and URL \(if not provided already\) for this software so that we can add it to the reference list. Alternatively, please provide the RRID and version number for this software.

If the authors cannot provide this information, the text should be left as is.

![All software here should be added as software references and cited properly](../../../.gitbook/assets/screenshot-2020-04-29-at-12.38.17%20%281%29.png)

![The software entries here do not need software references as they already have RRIDs](../../../.gitbook/assets/screenshot-2020-05-01-at-16.32.22.png)

## How to add a software reference

To add a software reference in Kriya, right-click where you want to add the citation and click on Add New &gt; Add New Reference and select Software under Reference Type. 

![The default fields in Kriya for a software reference](../../../.gitbook/assets/screenshot-2020-04-21-at-16.08.25.png)

The default fields in Kriya will need to be altered to include the appropriate information. The fields we capture will differ slightly depending on the type of software reference. Make sure a citation is added whenever the software is mentioned in the text or in the key resources table. 

### GitHub

* Author - for GitHub references, you can just enter the first author's name. Sometimes the repository will include information about the authors - in this case, they should all be added. 
* Year - the year of the latest commit when the repository is forked.
* Software title - for GitHub references, this is the name of the repository 
* Source \(currently Software name on Kriya 1.5\) - GitHub
* Software version - for GitHub references, this is the ID of the latest commit number
* Website - This should be a link to the repository 

![The software version for GitHub references is the unique ID for the latest commit number](../../../.gitbook/assets/screenshot-2020-07-21-at-10.13.42%20%281%29.png)

An example of correctly entered fields for a GitHub repository reference is given below:

| Kriya field | Value |
| :--- | :--- |
| Author | Tindale LC |
| Author | Stockdale JE |
| Author | Coombe M |
| Author | Garlock E |
| Author | Lau WYV |
| Author | Saraswat M |
| Author | Zhang L |
| Author | Chen D |
| Author | Wallinga J |
| Author | Colijn CC |
| Year | 2020 |
| Software title | Analysis of novel Coronavirus Disease \(COVID-19\) Singapore and Tianjin outbreak clusters |
| Source | GitHub |
| Software version | 9e78826 |
| Website | https://github.com/carolinecolijn/ClustersCOVID19 |

### R software and packages

Guidance on what information should be included in a software reference can sometimes be found on the software website. For example, for R references, the developers provide the [**following information**](https://cran.r-project.org/doc/FAQ/R-FAQ.html):

![](../../../.gitbook/assets/screenshot-2020-05-06-at-13.05.57.png)

To add a reference for R software, add a new software reference as above. The information above needs to be entered into Kriya in the order shown below:

| Kriya field | Value |
| :--- | :--- |
| Collaboration | R Development Core Team |
| Year | 2014 |
| Software title | R: A Language and Environment for Statistical Computing |
| Software version | 3.1.0 |
| Publisher city | Vienna |
| Publisher country | Austria |
| Publisher | R Foundation for Statistical Computing |
| Website | http://www.R-project.org |

If authors refer to software packages, these will also need to be cited properly. For example:

> Modelling was executed in the R environment \(R Development Core Team, 2019\) using the biomod2 package \(version 3.3-7.1\)

Looking up [**biomod2**](https://cran.r-project.org/web/packages/biomod2/index.html) shows this is a package for R. The information from the CRAN website where this is hosted can be entered as below:

| Kriya field | Value |
| :--- | :--- |
| Author | Thuiller W |
| Author | Georges D |
| Author | Engler R |
| Author | Breiner F |
| Year | 2020 |
| Software title | biomod2: Ensemble Platform for Species Distribution Modeling |
| Source | CRAN |
| Software version | 3.2-7.1 |
| Website | https://CRAN.R-project.org/package=biomod2 |

Note the CRAN website gives instructions for the correct link to include when citing software packages:

![](../../../.gitbook/assets/screenshot-2020-05-20-at-16.04.42.png)

The citation can then be updated as below, removing the version details:

> Modelling was executed in the R environment \(R Development Core Team, 2019\) using the biomod2 package \(Thuiller et al., 2020\)

### Software Heritage

After archiving code in Software Heritage \(see how to do this [**here**](../../../toolkit/archiving-code.md)\), a software reference needs to be added in the main text. The website should be the full directory link with contextual information \(see [**here**](../../../toolkit/archiving-code.md#in-the-main-text) for how to obtain this\). An example of a correctly entered Software Heritage software reference is below:

| Fields | Values |
| :--- | :--- |
| Author | Zhan N |
| Year | 2020 |
| Software title |  Zhan-Fan-et-al-2019-scRNAseq |
| Source | Software Heritage |
| Software version | swh:1:rev:c008b3ff49d567a1abe9d9eed42afed4e9a27b42 |
| Website | https://archive.softwareheritage.org/browse/directory/89513b41bd021137c72fa7cf3e57bcef4bf6c933/?origin\_url=https://github.com/lifan36/Zhan-Fan-et-al-2019-scRNAseq&revision=c008b3ff49d567a1abe9d9eed42afed4e9a27b42&snapshot=7166156ca6702a41990236e9da386c44440b6609 |

### **Figshare** 

An example of a Figshare software reference is below. The authors may have provided a software version - if so, this should also be added.

| Kriya field | Value |
| :--- | :--- |
| Author | Zandbelt B |
| Year | 2017 |
| Software title | Slice display |
| Source | Figshare |
| Website | http://doi.org/10.6084/m9.figshare.4742866.v1 |

Note, Figshare can also be used for [**data references**](data-references.md) - double-check whether the link is for software or data and add the reference accordingly. If you cannot determine this, leave the following author query: 

* Please confirm whether this link refers to software or a dataset so we can capture it correctly in your reference list. 

Authors may upload a mixture of software and data to Figshare. The Production team will liaise with the authors as necessary to decide how to capture this in these cases.

### **Zenodo**

An example of a Zenodo software reference is below. The authors may have provided a software version - if so, this should also be added.

| Kriya field | Value |
| :--- | :--- |
| Author | Boden A |
| Author | Volpato A |
| Author | Hake K |
| Author | York A |
| Author | Testa I |
| Year | 2020 |
| Software title | Lens-free scanning |
| Source | Zenodo |
| Software version | 0.0.2 |
| Website | https://doi.org/10.5281/zenodo.3653386 |

Note, Zenodo can also be used for [**data references**](data-references.md) - double-check whether the link is for software or data and add the reference accordingly. If you cannot determine this, leave the following author query: 

* Please confirm whether this link refers to software or a dataset so we can capture it correctly in your reference list. 

Authors may upload a mixture of software and data to Zenodo. The Production team will liaise with the authors as necessary to decide how to capture this in these cases. 

## **Schematron checks**

### **Content checks**

‌These checks relate to the content of software references. X or XXXXXX refers to quoted text which will change depending on the article.

#### **zenodo-check**

**Error**: _Journal ref 'XXXXXX' has a source title 'XXXXXX' which must be incorrect. It should be a data or software type reference._

**Action:** This error will fire if a Zenodo link has been entered as a journal reference, as in the example below. The ‘XXXXXX’ in this message will refer to the reference in question and its title respectively. Make sure the reference is changed to a software instead of a journal reference, and the fields are updated appropriately. 

Zenodo link incorrectly entered as a journal reference:

| Fields | Values |
| :--- | :--- |
| Author | Winters S |
| Year | 2019 |
| Article title | sandrawinters/guenon\_occlusion: eLife |
| Journal title | _Zenodo_ |
| DOI | 10.5281/zenodo.357451 |

When this is changed to a software reference, there will be several untagged fields

| Fields | Values |
| :--- | :--- |
| Author | Winters S |
| Year | 2019 |
| unTagged | sandrawinters/guenon\_occlusion: eLife |
| unTagged | _Zenodo_ |

These will need to be updated:

| Fields | Values |
| :--- | :--- |
| Author | Winters S |
| Year | 2019 |
| Software title | sandrawinters/guenon\_occlusion: eLife |
| Software name | _Zenodo_ |
| Software version | 1.0 |
| WebSite | https://doi.org/10.5281/zenodo.357451 |

#### **github-web-test**

**Warning**: _web ref 'XXXXXX' has a link which contains 'github', therefore it should almost certainly be captured as a software ref \(unless it's a blog post by GitHub\)._

**Action:** This warning will fire if a website reference contains the word ‘github’. If the link is to a repository on GitHub, this reference needs to be changed from a website to a software reference and the fields should be updated appropriately \(see [**above**](software-references.md#how-to-add-a-software-reference)\). In the example below, a repository is incorrectly captured as a website reference: 

![A software reference incorrectly captured as a website reference](../../../.gitbook/assets/screenshot-2020-05-27-at-11.37.44.png)

The fields are as below:

| Fields | Values |
| :--- | :--- |
| Author |  ÁN OT |
| Author | JT M AR |
| Year | 2020 |
| Website | https://github.com/hCoV-2019/pangolin |
| Accessed date | April 27, 2020 |

This reference needs to be changed to a software reference, and the fields should be updated as below. The authors should also be asked to provide the rest of the reference details, using the following query:

* eLife's policy is to include full software reference details in accordance with FAIR principles \(https://peerj.com/articles/cs-86/\). Please provide the authors, year, software name, version used, and URL \(if not provided already\) for this software so that we can add it to the reference list.

| Fields | Values |
| :--- | :--- |
| Author | ÁN OT |
| Author | JT M AR |
| Year | 2020 |
| Software title | pangolin |
| Software name | GitHub |
| Software version |  |
| Website | https://github.com/hCoV-2019/pangolin |

If the link in the reference is to a blog post by GitHub however, as the example below, it can be kept as a website reference.

| Fields | Values |
| :--- | :--- |
| Author | Heisman L |
| Year | 2020 |
| Website | https://github.blog/2020-05-15-remote-work-how-finance-legal-and-it-made-the-shift/ |
| Accessed date | May 21, 2020 |

#### **R-test-1** 

**Error**: _software ref 'XXXXXX' has a data-title '_R: A Language and Environment for Statistical Computing' _- but it does not have one collab element containing 'R Development Core Team'._

**Action:** During the conversion process, errors can occur. For example the collaboration 'R Development Core Team' can be mistakenly split over multiple collaboration fields or listed as an author. It may also be spelled incorrectly. If this error appears, make sure there is only one collaboration entered as ‘R Development Core Team’ for this reference and delete any other collaborations.

#### **R-test-2**

**Error**: _software ref 'XXXXXX' has a data-title '_R: A Language and Environment for Statistical Computing' _- but it has XXXXXX collab element\(s\)._

**Action:** During the conversion process, errors can occur. For example the collaboration 'R Development Core Team' can be mistakenly split over multiple collaboration fields or listed as an author. It may also be spelled incorrectly. If this error appears, make sure there is only one collaboration entered as ‘R Development Core Team’ for this reference and delete any other collaborations.

**R-test-3**

**Error**: _software ref 'XXXXXX' has a data-title '_R: A Language and Environment for Statistical Computing' _- but does not have a &lt;publisher-loc&gt;Vienna, Austria&lt;/publisher-loc&gt; element._

**Action:** This error will appear if the data title of a software is ‘R: A Language and Environment for Statistical Computing’ and the publisher location is not entered correctly. 'Vienna' should be entered in the Publisher city field and 'Austria' should be entered in the Publisher country field.

**R-test-4**

**Error**: _software ref 'XXXXXX' has a data-title '_R: A Language and Environment for Statistical Computing' _- but does not have a 'http://www.r-project.org' type link._

**Action:** This error will appear if the data title of a software is ‘R: A Language and Environment for Statistical Computing’ and the external link has not been entered correctly. Make sure the external link is added as a URI and entered as ‘http://www.r-project.org’.

**R-test-5**

**Error**: _software ref 'XXXXXX' has a source - XXXXXX - but this is the data-title._

**Action:** This error will appear if a software reference has a source which contains the text ’R: A Language and Environment for Statistical Computing’. This should be entered as a data title instead.

**R-test-6**

**Error**: _software ref 'XXXXXX' has a publisher-name - XXXXXX - but this is the data-title._

**Action:** This error will appear if a software reference has a publisher name which contains the text ’R: A Language and Environment for Statistical Computing’. This should be entered as a data title instead.

#### **R-test-7**

**Error:** _software ref 'XXXXXX' with the title - XXXXXX - must have a publisher-name element \(Software host\) which contains 'R Foundation for Statistical Computing'._

**Action:** The publisher of R software is the 'R Foundation for Statistical Computing'. This error will fire if this has not been entered in the 'Publisher' field. Make sure this is corrected and there are no typos.

**software-replacement-character-presence**

**Error**: _software reference contains the replacement character '�' which is unallowed - XXXXXX_

**Action:** This error will fire if a software reference contains the character ‘�’. This usually indicates that processing has gone wrong, or it has been used to replace an unknown, unrecognized or unrepresentable character. Make sure the fields have all been entered correctly and update the citation. 

**software-doi-test-1**

**Warning**: _XXXXXX is a software ref with a host \(XXXXXX\) known to register dois starting with '10.5281/zenodo'. Should it have a link in the format 'https://doi.org/10.5281/zenodo...'?_

**Action:** If a software reference has a source containing 'Zenodo', there needs to be a URL that contains '10.5281/zenodo'. Make sure the DOI URL \(including https://\) is present in the website field in the reference. This is because Continuum does not currently allow DOIs for software references.

In the example below, the WebSite link is incorrectly entered as the landing page for the software, instead of the DOI:

| Fields | Values |
| :--- | :--- |
| Author | Winters S |
| Year | 2019 |
| Software title | sandrawinters/guenon\_occlusion: eLife |
| Software name | _Zenodo_ |
| Software version | 1.0 |
| **WebSite** |  ****[**https://zenodo.org/record/3574512\#.XsVMhRNKiL8** ](https://zenodo.org/record/3574512#.XsVMhRNKiL8%20)\*\*\*\* |

Clicking the link will send you to this page:

![To get the DOI URL, click on the DOI \(outlined in red above\)](../../../.gitbook/assets/screenshot-2020-05-20-at-16.30.58%20%282%29.png)

The DOI Badge will pop up:

![Copy and paste the Target URL into the WebSite field in Kriya](../../../.gitbook/assets/screenshot-2020-05-20-at-16.31.07.png)

**software-doi-test-2**

**Warning**: _XXXXXX is a software ref with a host \(XXXXXX\) known to register dois starting with '10.6084/m9.figshare'. Should it have a link in the format 'https://doi.org/10.6084/m9.figshare...'?_

**Action:** If a software reference has a source containing 'Figshare', there needs to be a URL that contains '10.6084/m9.figshare'. This is because Continuum does not currently allow DOIs for software references. Make sure the DOI URL \(including https://\) is present in the website field in the reference.

### **XML structure checks**

**‌**‌These checks relate to the XML structure of software references. X or XXXXXX refers to quoted text which will change depending on the article. For examples of what the XML should look like, [**see below**](software-references.md#xml-structure).

#### **err-elem-cit-software-2-1**

**Error:** _Each &lt;element-citation&gt; of type 'software' must contain one &lt;person-group&gt; element \(either author or curator\) or one &lt;person-group&gt; with attribute person-group-type = author and one &lt;person-group&gt; with attribute person-group-type = curator. Reference 'XXXXXX' has XXXXXX &lt;person-group&gt; elements.‌_

**Action:** This error will appear if a software reference has more than one &lt;person-group&gt; element \(which usually contains either authors or collaborations\). It should be impossible for this error to occur - please contact support team if you see it. 

#### **err-elem-cit-software-2-2**

**Error:** _Each &lt;element-citation&gt; of type 'software' must contain one &lt;person-group&gt; with the attribute person-group-type set to 'author' or 'curator'. Reference 'XXXXXX' has a &lt;person-group&gt; type of 'XXXXXX'._

**Action:** This error will appear if a software reference has a &lt;person-group&gt; element with a person-group-type that isn't an author or curator \(e.g. an author has been tagged as an editor\). It should be impossible for this error to occur - please contact the support team if you see it. 

#### **err-elem-cit-software-10-1**

**Error**: _Each &lt;element-citation&gt; of type 'software' may contain one and only one &lt;data-title&gt; element. Reference 'XXXXXX' has XXXXXX &lt;data-title&gt; elements._

**Action:** This error will appear if there is more than one data title element. Please remove the extra data title element.

#### **err-elem-cit-software-16**

**Error**: _The only tags that are allowed as children of &lt;element-citation&gt; with the publication-type="software" are: &lt;person-group&gt;, &lt;year&gt;, &lt;data-title&gt;, &lt;source&gt;, &lt;version&gt;, &lt;publisher-name&gt;, &lt;publisher-loc&gt;, and &lt;ext-link&gt; Reference 'XXXXXX' has other elements._

**Action:** This error will fire if anything other than the named tags are present. It usually means a field in Kriya has been incorrectly selected for a software reference. Make sure the [correct fields](software-references.md#how-to-add-a-software-reference) are entered for a software reference. 

#### **err-elem-cit-software-10-2**

**Error**: _An &lt;data-title&gt; element in a reference may contain characters and &lt;italic&gt;, &lt;sub&gt;, and &lt;sup&gt;. No other elements are allowed. Reference 'XXXXXX' does not meet this requirement._

**Action:** The data title of a software reference can only have text that is italicised, superscript or subscript. This error will appear if the data title has formatting elements other than these. To address this, remove any extra elements including formatting that is not italic, superscript or subscript, and remove any hyperlinks.

#### **ref-software-test-1**

**Error**: _software ref 'XXXXXX' has both a source \(Software name\) - XXXXXX - and a publisher-name \(Software host\) - XXXXXX - which is incorrect. It should have either one or the other._

**Action:** Software references can only have a source or a publisher - not both. This error will appear if the Source and Publisher fields have both been filled out. Make sure this is fixed - for more information about what these fields should contain, see [here](software-references.md#what-needs-to-be-added). 

#### **ref-software-test-2**

**Error**: _software ref 'XXXXXX' with the title - XXXXXX - must contain either one source element \(Software name\) or one publisher-name element \(Software host\)._

**Action:** Software references must have either a source or a publisher. This error will appear if the Source and Publisher fields have not been filled out. Make sure this is fixed - for more information about what these fields should contain, see [here](software-references.md#what-needs-to-be-added). 

#### **ref-software-test-3**

**Error**: _software ref 'XXXXXX' has a publisher-name \(Software host\) - XXXXXX. Since this is a software source, it should be captured in a source element. Please move into the Software name field \(rather than Software host\)._

**Action:** This error will appear if the source of a software reference has incorrectly been entered as the publisher. XXXXXX in this case will be the reference id and whatever has been entered in the 'Publisher' field respectively. To fix this, move whatever has been entered in the Publisher field into the Source field, and delete the \(now empty\) Publisher field.

#### **ref-software-test-4**

**Error**: _software ref 'XXXXXX' has a source \(Software name\) - XXXXXX. Since this is a software publisher, it should be captured in a publisher-name element. Please move into the Software host field._

**Action:** This error will appear if the publisher of a software reference has incorrectly been entered as the source. XXXXXX in this case will be the reference id and whatever has been entered in the 'Source' field respectively. To fix this, move whatever has been entered in the Source field into the Publisher field, and delete the \(now empty\) Source field.

#### **ref-software-test-5**

**Warning**: _XXXXXX software ref \(with id 'XXXXXX'\) does not have a version number. Is this correct?_ 

**Action:** This warning will appear if a software reference does not have a version number. If the version number is mentioned in the text, add this information to the reference in the 'Software version' field. If the version number is not included, please leave the following query.

* eLife's policy is to include full software reference details in accordance with FAIR principles \(https://peerj.com/articles/cs-86/\). Please provide the version used for this software so that we can add it to the reference list. Alternatively, please provide the RRID for this software.

#### **ref-software-test-6**

**Warning**: _XXXXXX software ref \(with id 'XXXXXX'\) does not have a URL which is incorrect._

**Action:** This error will appear if a software reference does not have a website link. If the authors have provided a link to the website for the software, add this information to the reference in the 'Website' field. If there is no website link, please leave the following query.

* eLife's policy is to include full software reference details in accordance with FAIR principles \(https://peerj.com/articles/cs-86/\). Please provide the URL for this software so that we can add it to the reference list. Alternatively, please provide the RRID for this software.



| Kriya field | Mandatory? | XML element | Example |
| :--- | :--- | :--- | :--- |
| Author | Yes \(or a collaboration must be entered instead\) | &lt;person-group person-group-type="author"&gt; &lt;name&gt; | Bloggs J |
| Collaboration | Yes \(or authors must be entered instead\) | &lt;person-group person-group-type="author"&gt; &lt;collab&gt; | R Development Core Team |
| Year | Yes | &lt;year iso-8601-date="XXXXXX"&gt; where XXXXXX is the year | 2020 |
| Software title | Yes | &lt;data-title&gt; | blech\_clust |
| Source | Yes \(or Publisher must be entered instead\) | &lt;source&gt; | Software Heritage |
| Software version | No | &lt;version designator="XXXXXX"&gt; where XXXXXX is the version | swh:1:rev:c008b3ff49d567a1abe9d9eed42afed4e9a27b42 |
| Website | No | &lt;ext-link ext-link-type="uri" xlink:href="XXXXXX"&gt; where XXXXXX is the URL | https://archive.softwareheritage.org/swh:1:dir:89513b41bd021137c72fa7cf3e57bcef4bf6c933;origin=https://github.com/lifan36/Zhan-Fan-et-al-2019-scRNAseq;visit=swh:1:snp:7166156ca6702a41990236e9da386c44440b6609;anchor=swh:1:rev:c008b3ff49d567a1abe9d9eed42afed4e9a27b42/ |

## XML Structure

Here are some examples of how the xml will look for various software references.

R software

```markup
<back>
    . . .
    <article-meta>
        . . . 
      <element-citation publication-type="software">
         <person-group person-group-type="author">
           <collab>R Development Core Team</collab>
         </person-group>
         <year iso-8601-date="2014">2014</year>
         <data-title>R: A Language and Environment for Statistical Computing
         </data-title>
         <version designator="3.1.0">3.1.0</version>
         <publisher-loc>Vienna, Austria</publisher-loc>
         <publisher-name>R Foundation for Statistical Computing</publisher-name>
         <ext-link ext-link-type="uri" xlink:href="http://www.R-project.org">
         http://www.R-project.org</ext-link>
      </element-citation>
        . . .
    <article-meta>
```

Github

```markup
<back>
    . . .
    <article-meta>
        . . . 
      <element-citation publication-type="software">
         <person-group person-group-type="author">
         <name>
           <surname>Aguiar</surname> 
           <given-names>P</given-names>
         </name>
       </person-group>
       <year iso-8601-date="2020">2020</year>
       <data-title>Calculate_APs_velocities_in_MEAs</data-title>
       <version designator="d135ae9">d135ae9</version>
       <source>Github</source>
       <ext-link ext-link-type="uri" xlink:href="https://github.com/
       paulodecastroaguiar/Calculate_APs_velocities_in_MEAs">
       https://github.com/paulodecastroaguiar/Calculate_APs_velocities_in_MEAs
       </ext-link>
      </element-citation>
        . . .
    <article-meta>
```

Figshare

```markup
<back>
    . . .
    <article-meta>
        . . . 
      <element-citation publication-type="software">
      <person-group person-group-type="author">
        <name>
          <surname>Zandbelt</surname> 
          <given-names>B</given-names>
        </name>
      </person-group>
      <year iso-8601-date="2017">2017</year>
      <data-title>Slice display</data-title>
      <source>Figshare</source>
      <ext-link ext-link-type="uri" xlink:href="http://doi.org/10.6084/m9.
      figshare.4742866.v1">http://doi.org/10.6084/m9.figshare.4742866.v1
      </ext-link>
      </element-citation>
        . . .
    <article-meta>
```

Zenodo

```markup
<back>
    . . .
    <article-meta>
        . . . 
      <element-citation publication-type="software">
        <person-group person-group-type="author">
           <name>
             <surname>Neymotin</surname> 
             <given-names>SA</given-names>
           </name>
           <name>
             <surname>Daniels</surname> 
             <given-names>DS</given-names>
           </name>
           <name>
             <surname>Peled</surname> 
             <given-names>N</given-names>
           </name>
           <name>
             <surname>McDougal</surname> 
             <given-names>RA</given-names>
           </name>
           <name>
             <surname>Carnevale</surname> 
             <given-names>NT</given-names>
           </name>
           <name>
             <surname>Moore</surname> 
             <given-names>CI</given-names>
           </name>
           <name>
             <surname>Dura-Bernal</surname> 
             <given-names>S</given-names>
           </name>
           <name>
             <surname>Hines</surname> 
             <given-names>M</given-names>
           </name>
           <name>
             <surname>Jones</surname> 
             <given-names>S</given-names>
           </name>
       </person-group>
       <year iso-8601-date="2018">2018</year>
       <data-title>Human neocortical neurosolver</data-title>
       <source>Zenodo</source>
       <ext-link ext-link-type="uri" xlink:href="http://doi.org/10.5281/zenodo.
       1446517">http://doi.org/10.5281/zenodo.1446517</ext-link>
     </element-citation>

    <article-meta>
```

## Changelog

### 01/07/2020

#### Changes

* Updated guidance on when to add software references \(if the authors have provided the RRID for a software, this does not need to be added as a software reference\).

### 22/07/2020

#### Changes

* Updated guidance on what to use as version number for GitHub references.

### /04/2021

#### Changes

* Added examples of more software references, updated guidance about when to query authors and updated author query.
* Changed instances of &lt;publisher-name&gt; in XML structure examples to &lt;source&gt; for all but R reference.

