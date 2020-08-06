---
description: How to fix Crossref/Dryad failures that result in emails to the inbox
---

# Fixing Crossref/Dryad failures

## What is Crossref? 

Crossref is most commonly known for registering Digital Object Identifiers \(DOIs\) for research outputs, making them easier to locate and cite. DOIs allow the reader to follow a stable link straight to the content even when a URL has changed. Crossref DOIs begin with '10.', followed by a publisher's unique 4 digit number and a slash \(eLife's is 7554/\). Following that each publisher assigns a unique set of characters to each DOI they publish, eLife uses eLife.XXXXX where XXXXX is the manuscript number assigned to an article in eJP. For example: 10.7554/eLife.58603.

DOIs are deposited at the point the article is loaded to Continuum if the publication date is today or in the past, or at the start of the day matching the publication date. If the article has been PoA'd, the metadata deposited with Crossref is enhanced with the full-text information available from the final VoR publication. Each time an article is published the metadata is sent to Crossref so any mistakes are overwritten and any additional information published is added to the Crossref record. When content is sent to Continuum with a future date, for instance press content, the DOI will be registered at midnight the day before publication. 

## Crossref emails

Production receives Crossref emails for both PoA and VOR articles that are sent for publication on Continuum. 

These typically look like this: 

![](../.gitbook/assets/captured%20%284%29.gif)

Each email needs to be checked to ensure there have been no failures. At the bottom of the email, you should look at the following section: 

![Success! ](../.gitbook/assets/screen-shot-2020-07-09-at-15.27.17.png)

![Oh dear, we have a failure. ](../.gitbook/assets/screen-shot-2020-07-09-at-15.29.43.png)

If any failures are listed, you will need to check the rest of the content of the email \(above\), which will outline where the failure has occurred.

![](../.gitbook/assets/screen-shot-2020-07-09-at-15.30.41.png)

When sending VoR content metadata to Crossref we list all citations within the article. In the case above, the DOI for the Dryad dataset that was referenced in the article was not live yet when we sent the metadata to Crossref. As the Dryad DOIs are minted by Crossref too, their system automatically checks whether the cited DOI exists in their system and if it does not, fails our submission. This is one of our most common failures. It is a Catch-22, Dryad do not release datasets to view and hence register their DOIs until the article which they are about is published. We submit Crossref metadata just before publication. If the article has been PoA'd we have not sent the citation details to Crossref so Dryad can know the article their dataset is linked to is published.

## What to do when a failure occurs 

To correct these failures, you must first set up the transformation scenario \(this only needs to be done once\) in Oxygen \(an XML editor\). To do this, please visit [**here**](oxygen.md) for guidance. 

Once this has been set up, you can correct failures in the blink of an eye. When a failure occurs, you need to download the XML and carry out the procedure below.  

## Replacing the XML at Crossref

* Go to the Crossref admin page: [**https://doi.crossref.org/servlet/useragent?func=showHome**](https://doi.crossref.org/servlet/useragent?func=showHome) ****and log in \(please ask Production for these credentials\). 
* Select ‘Submission administration’.
* Search for the DOI number with no restrictions, which will bring up the list of submissions processed by Crossref. Recent errors will be highlighted with a red ‘E’ symbol:

![](../.gitbook/assets/screen-shot-2020-07-09-at-15.39.22.png)

* Locate the article that has failed.
* Right/ctrl click on the file icon to the right of the ID \(blue text\) and click ‘Save link as’. When you download a file it automatically downloads with the filename `submissionAdmin.xml`. 
* Now open the XML file using your XML editor, such as Oxygen.
* In the top toolbar, click configure transformation scenarios \(or press cmd + shift + t\).
* Tick the scenario you setup \(see [**above**](fixing-crossref-dryad-failures.md#what-to-do-when-a-failure-occurs)\).
* Click 'Apply associated \(1\)'.

This process will remove the failure and create a new XML file.

**Pro tip:** Next time, you only have to press cmd + shift + t and it will do the work for you 🕺 

**Now navigate back to Crossref to complete the following:** 

* Return to the admin page and select the 'Upload' tab.
* Select the corrected XML file and click the 'upload' icon. 

![](../.gitbook/assets/screen-shot-2020-07-09-at-15.50.10.png)

* Go back to the admin page and search without restriction to bring up the whole queue again, it should now be at the top. Be aware that the old failure will still remain.
* Look out for the success Crossref email to come through. 

![](../.gitbook/assets/screen-shot-2020-07-09-at-15.51.13.png)

![](../.gitbook/assets/screen-shot-2020-07-09-at-15.51.23.png)

This has now been resolved. Unfortunately, this does mean that the citation to the Dryad dataset will not be registered with Crossref but a manual workaround is not desirable.





