---
description: This is a page about entries for software in the reference list.
---

# Software references

## What is a software reference?

Within the reference list, software references provide information about any software used in an article.

## How to add a software reference

The following is an example of how to add a GitHub reference \(for example, after forking code\). In Kriya, click on 'Add reference' and select 'Software.' 

![The default fields in Kriya for a Software reference](../../../.gitbook/assets/screenshot-2020-04-21-at-16.08.25.png)

The default fields in Kriya will need to be altered to include the following information:

* Author - for GitHub references, you can just enter the first author's name
* Year - the year the repository was made 
* Software title - for GitHub references, this is the name of the repository 
* Software name - GitHub
* Software version - for GitHub references, this is the latest commit number
* Website - This should be a link to the original \(not the forked\) repository

![Details required for a GitHub repository reference](../../../.gitbook/assets/screenshot-2020-04-21-at-16.11.15.png)

## Structure

| Component | Contains | XML | Required? |
| :--- | :--- | :--- | :---: |
| Author list | The list of creators of the software. Can include individuals and group authors. | `<person-group person-group-type="author"> <name> <surname>Bloggs</surname> <given-names>J</given-names> </name> <collab>Some group</collab> </person-group>` | Yes |
| Year \(forked version\) | The year the cited version of the software was released.  | `<year iso-8601-date="2006">2006</year>` | Yes |
| Software title \(original\) | The title of the software. Can contain italics, superscript and subscript as required. | `<article-title>TIP47 is a key effector for Rab9 localization</article-title>` | Yes |
| Software name \(host\) | Not sure how this is different to title | `<source>The Journal of Cell Biology</source>` | Yes |
| Software version | The version of the software that was used. | `<volume>173</volume>` | No |
| URL | The location of the software online. | `<elocation-id>e51381</elocation-id>` | No |

## **Schematron warnings**

**‌**The following tests relate to software references section. X or XXXXXX refers to quoted text which will change depending on the article.

### **Content warnings**

**‌**These warnings relate to the content of a funding statement.

#### **zenodo-check**

**Error:** _Journal ref 'XXXXXX' has a source title 'XXXXXX' which must be incorrect. It should be a data or software type reference._

**Action:**

#### **github-web-test**

**Warning: web ref 'XXXXXX' has a link which contains 'github', therefore it should almost certainly be captured as a software ref \(unless it's a blog post by GitHub\).**

**Action:**  
  


### 

