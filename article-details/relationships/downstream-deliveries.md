---
description: >-
  PoA and final VoR eLife content is delivered to many endpoints at or just
  after publication on the eLife website. This page lists those locations and
  what each service receives and how.
---

# Downstream deliveries

The workflows for downstream deliveries are managed by Fred and Graham via the eLife Bot process. There are a number of GitHub repositories associated with these workflows, which Graham maintains. We work the most closely with Crossref, PubMed, and PMC and update our deliveries based on new releases from them.

## Where we send eLife content

<table>
  <thead>
    <tr>
      <th style="text-align:left">Where</th>
      <th style="text-align:left">Which</th>
      <th style="text-align:left">What</th>
      <th style="text-align:left">When</th>
      <th style="text-align:left">How</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Cengage</td>
      <td style="text-align:left">First VoR version</td>
      <td style="text-align:left">JATS XML and PDF</td>
      <td style="text-align:left">
        <p>Daily</p>
        <p>22:45 UTC</p>
      </td>
      <td style="text-align:left">FTP</td>
    </tr>
    <tr>
      <td style="text-align:left">CLOCKSS</td>
      <td style="text-align:left">Every VoR version</td>
      <td style="text-align:left">
        <p>JATS XML, PDF(s),</p>
        <p>all files (figures, videos,</p>
        <p>supplementary files etc.)</p>
      </td>
      <td style="text-align:left">
        <p>Daily</p>
        <p>22:00 UTC</p>
      </td>
      <td style="text-align:left">FTP</td>
    </tr>
    <tr>
      <td style="text-align:left">CNKI</td>
      <td style="text-align:left">First VoR version</td>
      <td style="text-align:left">JATS XML</td>
      <td style="text-align:left">
        <p>Daily</p>
        <p>23:00 UTC</p>
      </td>
      <td style="text-align:left">FTP</td>
    </tr>
    <tr>
      <td style="text-align:left">CNPIEC</td>
      <td style="text-align:left">First VoR version</td>
      <td style="text-align:left">
        <p>JATS XML, PDF(s),</p>
        <p>all files (figures, videos,</p>
        <p>supplementary files etc.)</p>
      </td>
      <td style="text-align:left">
        <p>Daily</p>
        <p>23:30 UTC</p>
      </td>
      <td style="text-align:left">FTP</td>
    </tr>
    <tr>
      <td style="text-align:left">Crossref</td>
      <td style="text-align:left">
        <p>Every PoA and VoR</p>
        <p>version</p>
      </td>
      <td style="text-align:left">&lt;b&gt;&lt;/b&gt;<a href="https://data.crossref.org/reports/help/schema_doc/4.4.2/index.html"><b>Crossref XML</b></a>&lt;b&gt;&lt;/b&gt;</td>
      <td
      style="text-align:left">
        <p>On ingestion to Continuum</p>
        <p>(or Midnight the</p>
        <p>day of publication</p>
        <p>for Press)</p>
        </td>
        <td style="text-align:left">
          <p>Posted to their</p>
          <p>API endpoint</p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">DOAJ</td>
      <td style="text-align:left">Every VoR version</td>
      <td style="text-align:left">
        <p>&lt;b&gt;&lt;/b&gt;<a href="https://github.com/DOAJ/doaj/blob/master/docs/system/IncomingAPIArticle.md"><b>DOAJ JSON</b></a><b> </b>
        </p>
        <p>(derived from eLife JSON)</p>
      </td>
      <td style="text-align:left">?</td>
      <td style="text-align:left">
        <p>Posted to their</p>
        <p>API endpoint</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">GoOA</td>
      <td style="text-align:left">First VoR version</td>
      <td style="text-align:left">
        <p>JATS XML, PDF(s),</p>
        <p>all files (figures, videos,</p>
        <p>supplementary files etc.)</p>
      </td>
      <td style="text-align:left">
        <p>Daily</p>
        <p>21:45 UTC</p>
      </td>
      <td style="text-align:left">FTP</td>
    </tr>
    <tr>
      <td style="text-align:left">Google Scholar</td>
      <td style="text-align:left">PoA and VoR</td>
      <td style="text-align:left"></td>
      <td style="text-align:left">?</td>
      <td style="text-align:left">Pulled directly from the eLife site</td>
    </tr>
    <tr>
      <td style="text-align:left">OVID</td>
      <td style="text-align:left">
        <p>Every PoA and VoR</p>
        <p>version</p>
      </td>
      <td style="text-align:left">
        <p>JATS XML, PDF(s),</p>
        <p>all files (figures, videos,</p>
        <p>supplementary files etc.)</p>
      </td>
      <td style="text-align:left">
        <p>Daily</p>
        <p>22:15 UTC</p>
      </td>
      <td style="text-align:left">FTP</td>
    </tr>
    <tr>
      <td style="text-align:left">Publication Router (HEFCE)</td>
      <td style="text-align:left">First VoR version</td>
      <td style="text-align:left">
        <p>JATS XML, PDF(s),</p>
        <p>all files (figures, videos,</p>
        <p>supplementary files etc.)</p>
      </td>
      <td style="text-align:left">
        <p>Daily</p>
        <p>23:45 UTC</p>
      </td>
      <td style="text-align:left">SFTP</td>
    </tr>
    <tr>
      <td style="text-align:left">PubMed</td>
      <td style="text-align:left">
        <p>Every PoA and VoR.</p>
        <p>Only Silent corrections</p>
      </td>
      <td style="text-align:left">
        <p><a href="https://www.ncbi.nlm.nih.gov/books/NBK3828/"><b>PubMed XML</b></a> 
        </p>
        <p>(derived from JATS)</p>
      </td>
      <td style="text-align:left">Daily</td>
      <td style="text-align:left">SFTP</td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p>PubMed Central</p>
        <p>(PMC)</p>
      </td>
      <td style="text-align:left">
        <p>Every VoR version.</p>
        <p>Including new versions</p>
        <p>and silent corrections</p>
      </td>
      <td style="text-align:left">
        <p>JATS XML, PDF(s),</p>
        <p>all files (figures, videos,</p>
        <p>supplementary files etc.)</p>
      </td>
      <td style="text-align:left">
        <p>Daily</p>
        <p>20:30 UTC</p>
      </td>
      <td style="text-align:left">FTP</td>
    </tr>
    <tr>
      <td style="text-align:left">Scopus</td>
      <td style="text-align:left">First VoR version</td>
      <td style="text-align:left">JATS XML and PDF</td>
      <td style="text-align:left">
        <p>Daily</p>
        <p>22:30 UTC</p>
      </td>
      <td style="text-align:left">SFTP</td>
    </tr>
    <tr>
      <td style="text-align:left">Web of Science</td>
      <td style="text-align:left">First VoR version</td>
      <td style="text-align:left">JATS XML and PDF</td>
      <td style="text-align:left">
        <p>Daily</p>
        <p>21:30 UTC</p>
      </td>
      <td style="text-align:left">FTP</td>
    </tr>
    <tr>
      <td style="text-align:left">Zendy</td>
      <td style="text-align:left">Every PoA and VoR version</td>
      <td style="text-align:left">
        <p>JATS XML, PDF(s),</p>
        <p>all files (figures, videos,</p>
        <p>supplementary files etc.)</p>
      </td>
      <td style="text-align:left">
        <p>Daily</p>
        <p>21:15 UTC</p>
      </td>
      <td style="text-align:left">SFTP</td>
    </tr>
    <tr>
      <td style="text-align:left"><b>In Progress</b>
      </td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left">EBSCO</td>
      <td style="text-align:left">?</td>
      <td style="text-align:left">?</td>
      <td style="text-align:left"></td>
      <td style="text-align:left">SFTP?</td>
    </tr>
    <tr>
      <td style="text-align:left">ProQuest</td>
      <td style="text-align:left">?</td>
      <td style="text-align:left">?</td>
      <td style="text-align:left"></td>
      <td style="text-align:left">?</td>
    </tr>
  </tbody>
</table>

## Detail

### Cengage

Cengage is a proprietary content aggregator. For subscribed users, they provide access to digital content.

They are sent the first VoR version of every eLife article. They are sent just the XML and PDF. 

They render eLife content on their site, on an article page. Since we don't provide them with image files, these are omitted. Traffic from their site to ours is limited because they present their users with our content on their site.

#### Contacts

Main contact - Steve Lee \(Steve.Lee@cengage.com\)

Contractual matters - John Aceves \(john.aceves@cengage.com\)

Technical questions - Brian Newman \(Brian.Newman@cengage.com\)

### CLOCKSS

CLOCKSS is a dark archive that ensures the long-term preservation of digital scholarly content. This means if eLife stops for any reason, all our published content will become available to any user with internet access via CLOCKSS. 

When deliveries are sent, the Bot also emails the list to: delivery-elife@clockss.org 

#### Contacts

Kim Smilay, Director, Publisher and Library Relation \(ksmilay@clockss.org\)

pub-director@clockss.org

### CNKI

\*\*\*\*[**China National Knowledge Infrastructure**](https://oversea.cnki.net/index/) \(CNKI\) is a large literature database. It is a key national research and information publishing institution in China, led by Tsinghua University, and supported by PRC Ministry of Education, PRC Ministry of Science, Propaganda Department of the Chinese Communist Party and PRC General Administration of Press and Publication.

#### Contact

Fang Zhang, Co-operation Project Manager \(FangZhang\_@outlook.com\)

### CNPIEC

China National Publications Import and Export \(Group\) Corporation CNPIEC is a large state owned literature database. 

#### Contact

Lihui Cao \(caolihui@cnpiec.com.cn\)

### Crossref

Crossref is a DOI registration agency. All DOIs that are minted by eLife are registered at Crossref \(this does not extend to content within eLife articles which may be registered elsewhere, for example, an author may have generated a dataset that is deposited at a repository which registers its DOIs at a different agency, e.g. DataCite\).

For each eLife VoR the following information \(where present\) is sent to Crossref:

* License
* Funding information
  * Funder
  * FundRef DOI
  * Award ID
* Abstract
* Article title
* Volume number
* Authors
  * ORCID \(and whether it's authenticated or not\)
  * Given names
  * Surnames
  * Affiliations
  * \(Group authors and individual members of that group will be provided\)
* References
* Link to PDF
* Link to XML
* Link to full text HTML
* Subject area\(s\)
* Datasets \(including id and id-type\)

For each eLife peer review material \(Decision letter an Author response\), a peer review DOI is minted and the following is provided to Crossref:

* Title \(which is the article title prefixed by 'Decision letter: ' or 'Author response: '\)
* Authors \(authors of the peer review material, not the article\)
  * ORCID \(and whether it's authenticated or not\)
  * Given names
  * Surnames
  * Affiliations
* Type of peer review material 
* The DOI of the article that the material relates to

The information sent to Crossref for eLife PoAs is a subset of the information sent at VoR, derived from the submission in eJP.

Information on the Crossref Schema can be found [**here**](https://data.crossref.org/reports/help/schema_doc/4.4.2/index.html). Feature requests and enhancements for eLife deliveries to Crossref are listed [**here**](https://github.com/elifesciences/elife-crossref-feed/issues). We keep a close eye on their schema updates and update our deliveries to correspond with any new options and requirements.

To access the files that have been provided to Crossref \(and manually upload files to fix any issues, as required\), you must first login to [**their administration portal**](https://doi.crossref.org/servlet/useragent?func=showHome). You can then search for the article.

#### Contacts

There are no specific contacts at Crossref. See the documentation above. Any problems need to be raised in the Support portal [**here**](https://support.crossref.org/hc/en-us).

### DOAJ

\*\*\*\*[**The Directory of Open Access Journals**](https://doaj.org/) lists open access journals and a subset of information for the articles therein. [**Here is the page for eLife**](https://doaj.org/toc/2050-084X). For each article the following information \(where present\) is sent to DOAJ:

* DOI
* Authors 
  * names \(as one string\)
  * affiliations \(as one string\)
  * ORCIDs
  * \(For Group authors, only the group name will be provided, not the individual members of the group\)
* Article title
* Abstract
* Keywords \(6 max\)
* Volume number
* eLocation ID
* eISSN
* Month and year of publication
* Link to full text HTML

Note that formatting \(subscript, superscript, italics, maths etc.\) cannot be supplied to DOAJ. Content is sent as plain text. Maths in abstracts are replaced with the text '\[Formula: see text\]'. 

Every eLife article is sent to DOAJ, however not all version of that article. PoAs are not sent. This is because some downstream services may pick up \(from DOAJ\)  the first version and not update until 6 months later. All new versions \(after VoR publication\) are sent to DOAJ.

Since the content is posted via API to DOAJ, there is no place to check what we have sent them, other than the page for that article on DOAJ. If there are issues with the content sent to them, Graham Nott should be contacted first, who will then be able to check what we sent them \(by regenerating the data locally\).

#### Contacts

Dom Mitchell \(dom@doaj.org\)

### EBSCO



### GoOA

GoOA is a content aggregator run by the the National Science Library of the Chinese Academy of Sciences. It provides \(Chinese\) institutional access to literature that has been indexed on its platform.

#### Contacts

 Jingyu Liu \(openresources@mail.las.ac.cn\)

### Google Scholar

Google Scholar pulls eLife content directly from [**elifesciences.org**](https://elifesciences.org/). The process is quite esoteric; the cause of any issues is almost impossible to determine on our end. However, typically an eLife article should appear on Google Scholar approximately a month or so after publication.

One indication of a bug \(that would need to be brought to Maël's attention if raised by an author\) is if an article appears in search results, but does not appear on that author's profile. 

#### Contacts

The relationship with Google Scholar is dealt with by Maël Plaine at eLife. Any issues reported by authors to Production should be referred to Maël who has semi-regular meetings with them Google Scholar.

### OVID

OVID is a proprietary service that provides access to academic journals and bibliographic databases for subscribed users/institutions. Their primary focus is in Medicine/the health sciences. Their previous major product was MEDLINE, but this is now available via PubMed. 

OVID render bibliographic information for eLife articles on their site, and provide links to the full text at eLife's site as well as PubMed, PMC etc.

All eLife articles are sent to OVID. A zip package containing all article files is placed on their FTP for an article. They receive every version of an article \(PoA, VoR, V2 and silent correction\).

#### Contacts

Nir Karmi \(nir@tdnet.com\)

Gidon Junge \(Gidon@tdnet.com\)

### ProQuest



### Publication Router \(HEFCE\)

Publications Router provides feeds of content to institutions' systems \(such as repositories or current research information systems \[CHRISs\]\). It alerts those that have subscribed to the service with notifications when research articles have been published \(and includes the article and its metadata\). You can see the current subscribing institutions [**here**](https://pubrouter.jisc.ac.uk/about/recipientlist/). 

You can find more information [**here**](https://pubrouter.jisc.ac.uk/about/#).

eLife sends Pub Router the first version of every VoR.

#### Contacts

Steve Byford, Scholarly Communications Services Manager \(Steve.Byford@jisc.ac.uk\)

### PubMed

\*\*\*\*[**PubMed**](https://pubmed.ncbi.nlm.nih.gov/) is a free bibliographic database containing biomedical and life science content. PubMed is not to be confused with PubMed Central, which is a separate digital repository \(more on that [**below**](downstream-deliveries.md#pubmed-central-pmc)\).

PubMed holds a record for each eLife article. This is sent to them via SFTP. Content is sent in the [**PubMed XML tagged format**](https://www.ncbi.nlm.nih.gov/books/NBK3828/#publisherhelp.PubMed_XML_Tagged_Format)**,** which is derived from the JATS XML for an article. Help on the PubMed XML can be found [**here**](https://www.ncbi.nlm.nih.gov/books/NBK3828/).

There is a specific repository on the eLife GitHub repo where feature requests and enhancements for [**PubMed**](https://github.com/elifesciences/elife-pubmed-feed/issues) ****deliveries are listed**.** We keep a close eye on their schema updates and update our deliveries to correspond with any new options and requirements.

For each article the following information \(where present\) is sent to PubMed:

* DOI
* Authors 
  * names \(as one string\)
  * affiliations \(as one string\)
  * ORCIDs \(note ORCIDs are not displayed on PubMed, but can be used to search for an author's work\)
  * \(Group authors and individual members of that group will be provided\)
  * Equal contribution status \(note that this is not as sophisticated as elsewhere, it's not possible to denote more than one group of authors who equally contributed\)
* Article title
* Abstract
* Keywords
* Volume number
* eLocation ID
* eISSN
* Full publication date
* History dates
  * Received date
  * Accepted date
* Copyright information
* Funding
  * Funder
  * Award ID

The files that were sent to PubMed can be found in the following Amazon S3 bucket:

`s3://elife-poa-packaging/pubmed/published/`

The files are placed based on the date they are sent, so if you are looking to find a particular file for a particular article, ensure you know the publication date for the _version_ you are looking for. Version here is important, because PubMed is supplied XML for both PoA and VoR. If you are checking what was sent for the VoR, you will need to look for the VoR publication date. Note that silent corrections are not sent to PubMed. Any changes to content which is presented on PubMed and is corrected via silent correction, will not automatically update on PubMed, because the files will not be passed to them. Instead these changes will have to be made in their data management system. 

Finally, note that the PubMed files are placed under `batch/` within the particular folder. They will be named something like `elife-pubmed-66165-20210504164509.xml`.

An eLife article will typically appear on PubMed 48 hours after it is sent to them, but it can take up to 2 weeks. 

Errors on PubMed can be corrected via the [**PubMed Data Management System**](https://www.ncbi.nlm.nih.gov/pubmed/management/publisher/), which requires a login. Contact the Production team if you need these details.

#### Contacts

There are no specific contacts for PubMed. The data management system can be used to ask for help, or emailing publisher@ncbi.nlm.nih.gov.

### PubMed Central \(PMC\)

\*\*\*\*[**PubMed Central**](https://www.ncbi.nlm.nih.gov/pmc/) is a digital repository that containing biomedical and life sciences journal literature. 

PubMed Central is not to be confused with PubMed, which is a separate digital repository \(more on that above\).

Journal articles are supplied to PMC in JATS XML format. A zip for every eLife article VoR is delivered to them via FTP. There are many different version of JATS \(and other XML\) they accept, eLife currently uses Archiving and Interchange version 1.1 \(this is subject to change in the future\). The zip contains JATS XML, and any accompanying assets. File submission specifications for PMC can be found [**here**](https://www.ncbi.nlm.nih.gov/pmc/pub/filespec/).

PMC send a daily summary email to production@elifesciences.org, which details the articles they have received that day, and their status. If any articles have failed, then a subsequent email will be sent with more information on which article and why. Further information can be found on [**PMC's Deposit Tracking System**](https://www.ncbi.nlm.nih.gov/pmc/dts/publishers/17/) \(DTS\) \(contact members of the Production team to get credentials\).

Any failures will initially be under 'Packages Failed: Need Publisher Attention' in the DTS. 

Usually a failure is caused by one of three things:

1. The article has an animation \(or animations\). PMC's system treats `.gif`  files as if they were XML by default. As a result it tries to parse the file and fails. The error message will look something like:

> elife-57012-video3.gif: There is no DOCTYPE Declaration or other schema reference.

This will result in the package failing. Contact Jenny at PMC \(see below for details\), and ask them to correct the issue.

2. Because the XML is not valid against the DTD. This occurs when there is an issue packaging a file in Kriya. The PMC error message will look something like:

> elife-57101.xml: Invalid XML. -:1: element article: validity error : Element article content does not follow the DTD, ...

\(In the above `...` will be the specific DTD message\). 

The typesetters will need to fix this. You can verify that the XML was invalid by finding it on the following places:

 `s3://elife-production-final/`

If the XML is invalid in the package in this bucket, this confirms that the typesetters need to fix the issue.

 `s3://elife-poa-packaging/pmc/zip/`

If the XML is valid in `s3://elife-production-final/` but invalid in `s3://elife-poa-packaging/pmc/zip/` this indicates that something has gone wrong in creating the zip package to send to PMC. This will need to be brought to Graham's attention.

3. Because the zip or contents within it are missing or corrupt. A missing/corrupted file will be easy to determine on our side. The PMC error message would indicate that a file was missing, and then checking the corresponding file in the zip in `s3://elife-production-final/` would likely confirm the same. If this is the case, then the typesetters will need to resolve the issue and send through a silent correct to resupply a correct package to PMC. 

If the cause is a corrupted package, then this will be difficult to determine on our end. It may be because of an issue with the FTP file transfer. If PMC confirm the error is due to a corrupt file, then this will need to be brought to the attention of Graham, who can investigate further \(the action may simply be to try sending it again\).

It will typically take around 2 weeks for an article to appear on PubMed Central.

PubMedCentral tagging guidelines can be found [**here**](https://www.ncbi.nlm.nih.gov/pmc/pmcdoc/tagging-guidelines/article/style.html). They also have tools to test your [**XML**](https://www.ncbi.nlm.nih.gov/pmc/tools/stylechecker/) and [**preview**](https://www.ncbi.nlm.nih.gov/pmc/tools/article-previewer-intro/) ****content on their site.

#### Contacts

Jenny Hoops \(pmc@ncbi.nlm.nih.gov\) - for general queries.

Rebecca Orris \(rebecca.orris@nih.gov\) - keep her in the loop for any major changes to eLife XML, and for any feedback/queries about display on PMC \(Jenny should be included in the same correspondence\).

### Scopus

Scopus is an abstract and citation database owned by Elsevier.

### Web of Science

Web of Science \(WOS\) is a website that provides subscription-based access to databases with citation data for academic content. It is maintained by Clarivate.

### Zendy

Zendy is a digital library based in Saudi Arabia. Zendy will render eLife articles on their site.

They receive every version of every eLife article. A zip package is delivered to their FTP for each article, containing the article XML, PDF and all assets.

#### Contacts

Kamran Kardan \(k.kardan@knowledgee.com\)

Victoria Gevärsdotter \(v.gevarsdotter@zendy.io\)

Stephen Lavery \(s.lavery@zendy.io\)

