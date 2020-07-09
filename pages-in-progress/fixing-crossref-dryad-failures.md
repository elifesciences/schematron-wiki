---
description: How to fix Crossref/Dryad failures in the inbox
---

# Fixing Crossref/Dryad failures

## What is Crossref? 

Crossref is most commonly know for providing Digital Object Identifiers \(DOIs\) for research outputs making them easier to locate, cite, and more. DOIs allow the reader to follow a stable link straight to the content even when a website has changed. Each publisher will have their own ID in the DOI and this is followed by a slash and a string of numbers that are unique to the content. 

Here is an example of an eLife DOI: 10.7554/eLife.58603

At eLife, when an article is PoAed, the DOI is submitted automatically to Crossref and once processed, it will be registered with them. This is also triggered when a VOR article is ready for publication and sent to Continuum. If it has a date in the future ,say for press, the DOI will then be registered on the day of publication.  

## Crossref emails

Production receive Crossref emails for both PoA and VOR articles that are sent for publication on Continuum. 

These typically look like this: 

![](../.gitbook/assets/screen-shot-2020-07-09-at-15.24.59.png)

Each email needs to be checked to ensure there have been no failures. At the bottom of the email, you should look at the following section: 

![Success! ](../.gitbook/assets/screen-shot-2020-07-09-at-15.27.17.png)

![Oh dear, we have a failure. ](../.gitbook/assets/screen-shot-2020-07-09-at-15.29.43.png)

If any failures are counted, you will need to check the email which will outline where the failure has occurred. 

![](../.gitbook/assets/screen-shot-2020-07-09-at-15.30.41.png)

In the case above, the DOI for the Dryad dataset was not live which has caused the failure. This is one of our most common failures.

## What to do when a failure occurs 

To correct the failure, you will need to follow these steps. 

* Go to the Crossref admin page: [**https://doi.crossref.org/servlet/useragent?func=showHome**](https://doi.crossref.org/servlet/useragent?func=showHome)\*\*\*\*
* Select ‘Submission administration’.
* Search with no restrictions, which will bring up the list of submissions processed by Crossref. Recent errors will be highlighted with a red ‘E’ symbol:

![](../.gitbook/assets/screen-shot-2020-07-09-at-15.39.22.png)

* Locate the article that has failed.
* Copy the file name.
* Right/ctrl click on the file icon to the right of the ID \(blue text\) and click ‘Save link as’.
* **Important note:** To prevent further failures, both the doi\_batch\_id elements and timestamp need to be edited as Crossref will reject any file that has the same batch id and timestamp as a previously submitted file. So to avoid this, you should edit the time on the doi\_batch\_id to reflect the updated time you will change in the XML. In this instance, the doi\_batch\_id was changed to 'elife-crossref-57093-20200709160008.xml'.
* Now open the XML file.











