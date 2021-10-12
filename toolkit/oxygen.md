---
description: XML editor
---

# Oxygen

The Production team use Oxygen to view, edit, validate, and transform XML files. Note that it is not open source, and while you can register for a free trial [**here**](https://www.oxygenxml.com/xml_editor/register.html), in order to use it long-term, a license will have to be purchased or transferred to you by eLife.

## How to setup a validation scenario (for Schematron)

1. First, ensure that you have cloned a version of the [**eLife Schematron**](https://github.com/elifesciences/eLife-JATS-schematron) to your local machine, in a suitable location, such as in your Documents folder.
2. Open any XML file in Oxygen.
3. In the toolbar, click 'Configure Validation Scenario(s)'.

![](../.gitbook/assets/screenshot-2020-07-24-at-10.21.54.png)

      4\. In the pop-up, click 'New'.

![](../.gitbook/assets/screenshot-2020-07-27-at-13.50.23.png)

      5\. In that pop-up, rename the scenario to something appropriate, for example if setting up a scenario for the pre-author version of the eLife Schematron, you could name it 'eLife Pre'.

![](../.gitbook/assets/screenshot-2020-07-27-at-13.51.44.png)

       6\. For storage, tick 'Global options':

![](<../.gitbook/assets/screenshot-2020-07-27-at-13.51.44 (3).png>)

      7\. Click the cog symbol in the furthest right column:

![](<../.gitbook/assets/screenshot-2020-07-27-at-13.51.44 (2) (1).png>)

        8\. In the specify schema pop-up, select 'Use custom schema':

![](../.gitbook/assets/screenshot-2020-07-27-at-13.57.00.png)

        9\. Click the folder symbol next to the URL field, navigate to and select the Schematron file which you would like to set up the validation scenario for (either `pre-JATS-schematron.sch` or `final-JATS-schematron.sch`; you will find these files in the folder where you cloned the GitHub repo):

![](../.gitbook/assets/screenshot-2020-07-27-at-14.03.30.png)

        10\. The Schema type should also automatically update to 'Schematron' upon selection of a Schematron file, but if it doesn't, then this will need to be changed:

![](../.gitbook/assets/screenshot-2020-07-24-at-10.27.55.png)

        11\. Click OK. Click OK in the next pop-up, and then in the last pop-up click 'Save and close' (in the bottom left):

![](../.gitbook/assets/screenshot-2020-07-27-at-14.07.13.png)

You have now created a validation scenario. You can then run this scenario on numerous different XML files by opening the 'Configure Validation Scenario(s)' pop-up, ticking the scenario with the name which you just created, and then clicking 'Apply associated (1)'.

### Validation output example

Schematron validation in Oxygen will display like this:

![An example of Oxygen Schematron validation output](../.gitbook/assets/screenshot-2020-08-03-at-09.33.07.png)

Note that you can organise the messages by clicking the column headings:

![](<../.gitbook/assets/screenshot-2020-08-03-at-09.33.07 (1).png>)

For example clicking the left most column heading (which usually has no text), above the blue, yellow and red icons organises the messages by type (info, warning and error respectively).

If you cannot see the full message, you can hover over it, or right-click and click 'Show message' to see it in full.

Some messages have accompanying explanations/instructions in this GitBook. They will display in oXygen with a book symbol in the Info column:

![](../.gitbook/assets/screenshot-2020-11-11-at-14.12.09.png)

Clicking the book symbol will open a link to the relevant section of the relevant GitBook page for that message in your default browser.

## How to set up the Crossref transformation scenario

1. Download the zip below, unzip it (inside should be a file called `crossref.xsl`) and place it somewhere on your local machine such as your desktop.

{% file src="../.gitbook/assets/crossref.xsl (3).zip" %}

2\. Open any XML file in Oxygen.

3\. In Oxygen's top toolbar, click 'Configure Transformation Scenarios' (or press cmd + shift + t).

!['Configure Transformation Scenarios' icon](https://user-images.githubusercontent.com/43879983/87419802-0cfb0880-c5cc-11ea-932f-b98f4a85af29.png)

4\. Click 'New' -> XML transformation with XSLT.

![](https://user-images.githubusercontent.com/43879983/87419913-3e73d400-c5cc-11ea-90e8-03c68832ead5.png)

5\. Rename the scenario something appropriate, like Crossref.

![](https://user-images.githubusercontent.com/43879983/87420024-6cf1af00-c5cc-11ea-9246-19d44cc67d4e.png)

6\. Click the folder for XSL URL, and navigate to where your local version of `crossref.xsl` was placed.

![](https://user-images.githubusercontent.com/43879983/87420073-84c93300-c5cc-11ea-9711-0c97e54e6d63.png)

7\. Ensure that one of the following is selected for the 'Transformer':

* Saxon-PE (the most preferable option if available)
* Saxon-HE
* Saxon-EE

![](https://user-images.githubusercontent.com/43879983/88308997-a9788580-cd05-11ea-9671-7df32e3ccb7c.png)

8\. Click 'Output'.

![](https://user-images.githubusercontent.com/43879983/87420218-cd80ec00-c5cc-11ea-9de9-db9fcbb796e7.png)

9\. Click 'Save as', and in the field next to it paste the following: `elife-crossref-${xpath_eval(substring-after(doc('${rootMapURL}')//publisher_item/item_number[@item_number_type="article_number"]/text(),'e'))}-${xpath_eval(format-dateTime(current-dateTime() + xs:dayTimeDuration('PT30M'), '[Y0001][M01][D01][H01][m01][s01]'))}.xml`

![](https://user-images.githubusercontent.com/43879983/87420335-01f4a800-c5cd-11ea-82ca-326b09e52b8d.png)

10\. Click 'OK', and then click 'Save and close'.

## Editing a saved transformation scenario

If you need to edit a transformation scenario then this can be done by clicking 'Configure Transformation Scenarios', clicking the scenario in question, and then clicking 'Edit'.

### Working example

You have just deleted or moved the XSLT file that a scenario relied upon and therefore it no longer works.

In order to fix this do the following:

* Click 'Configure Transformation Scenarios', click the scenario in question, and then click 'Edit'.
* In the pop-up click on the folder next to the XSL URL field. Navigate to the updated file location and click Open, then click OK.
* Click save and close to save the edited Scenario.

{% hint style="info" %}
A very similar process can be followed in the same case but for a validation scenario.
{% endhint %}

## Setting up the latin terms XQuery in oXygen

1. Download the file below place it somewhere on your local machine such as your documents folder.

{% file src="../.gitbook/assets/latin-terms (2).xq" %}

2\. Open any XML file in Oxygen.

3\. In Oxygen's top toolbar, click 'Configure Transformation Scenarios' (or press cmd + shift + t).

!['Configure Transformation Scenarios' icon](https://user-images.githubusercontent.com/43879983/87419802-0cfb0880-c5cc-11ea-932f-b98f4a85af29.png)

4\. Click 'New' -> XML transformation with XQUERY.

![](https://user-images.githubusercontent.com/43879983/87419913-3e73d400-c5cc-11ea-90e8-03c68832ead5.png)

5\. Rename the scenario something appropriate, like Latin terms.

![](<../.gitbook/assets/screenshot-2020-10-20-at-11.51.55 (1).png>)

6\. Click the folder for XQuery URL, and navigate to where your local version of `latin-terms.xq` was placed.

![](../.gitbook/assets/screenshot-2020-10-20-at-11.51.55.png)

7\. Select `Saxon-PE XQuery ...` for the 'Transformer':

![](<../.gitbook/assets/screenshot-2020-10-20-at-11.55.44 (1).png>)

8\. Click 'Parameters':

![](<../.gitbook/assets/screenshot-2020-10-20-at-11.55.44 (2).png>)

9\. In the Configure parameters pop-up, click 'new':

![](../.gitbook/assets/screenshot-2020-10-20-at-11.59.02.png)

10\. In the 'Add parameter' pop-up, in the 'Name' field add 'xml' (all lowercase):

![](../.gitbook/assets/screenshot-2020-10-20-at-12.00.30.png)

11\. In the 'Value' field, enter the following:

`doc('${currentFileURL}')`

12\. Tick 'Evaluate as XPath':

![](../.gitbook/assets/screenshot-2020-10-20-at-12.02.57.png)

13\. Click 'OK'. Click 'OK' again. Click 'OK' again. Click 'Save and close'.

You can now run the latin terms XQuery as you would an XSLT.

When run, you'll get an output which looks something like this:

![](../.gitbook/assets/screenshot-2020-10-20-at-12.05.25.png)

## Useful keyboard shortcuts and tips

### (Mac) Keyboard shortcuts

* Use cmd + shift + y to wrap text into one screen (no horizontal scrolling is then needed), this adds no whitespace.
* Use cmd + shift + w to check if an XML file is well formed.
* Use cmd + shift + v to run any associated validation scenarios.
* Use cmd + shift + t to run any associated transformation scenarios.
* Use cmd + shift + p to format and indent (note that this also includes adding whitespace and should not be done prior to validation since many of the tests rely on the whitespace being correct).

{% hint style="danger" %}
Do not format and indent if the XML needs to be uploaded anywhere, this should _only_ be used for ease of reading the XML, as and when needed.
{% endhint %}

### Miscellaneous Tips

* Do not format and indent before running validation.
* Use 'Outline' to navigate the XML tree without having to 'prettify' the XML.
* XPaths can be run in the top left.
* The find and replace tool in Oxygen is really useful. You can refine searches using XPath(s), and use search case specifically or using Regular expressions.
