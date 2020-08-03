---
description: XML editor
---

# Oxygen

The Production team use Oxygen to view, edit, validate, and transform XML files. Note that it is not open source, and while you can register for a free trial [**here**](https://www.oxygenxml.com/xml_editor/register.html), in order to use it long-term a license will have to be purchased, or transferred to you by eLife.

## How to setup a validation scenario \(for Schematron\)

1. First, ensure that you have cloned a version of the [**elife Schematron**](https://github.com/elifesciences/eLife-JATS-schematron) to you local machine, in a suitable location, such as in your Documents folder.
2. Open any XML file in Oxygen.
3. In the toolbar, click 'Configure Validation Scenario\(s\)'.

![](../.gitbook/assets/screenshot-2020-07-24-at-10.21.54.png)

      4. In the pop-up, click 'New'.

![](../.gitbook/assets/screenshot-2020-07-27-at-13.50.23.png)

      5. In that Pop-up, rename the scenario to something appropriate, for example if setting up a scenario for the pre-author version of the eLife Schematron, you could name it 'eLife Pre'.

![](../.gitbook/assets/screenshot-2020-07-27-at-13.51.44.png)

       6. For storage, tick 'Global options':

![](../.gitbook/assets/screenshot-2020-07-27-at-13.51.44%20%283%29.png)

      7. Click the cog symbol in the furthest right column:

![](../.gitbook/assets/screenshot-2020-07-27-at-13.51.44%20%282%29.png)

        8. In the specify schema pop-up, select 'Use custom schema':

![](../.gitbook/assets/screenshot-2020-07-27-at-13.57.00.png)

        9. Click the folder symbol next to the URL field, navigate to and select the Schematron file which you would like to set up the validation scenario for \(either `pre-JATS-schematron.sch` or `final-JATS-schematron.sch`; you will find these files in the folder where you cloned the GitHub repo\):

![](../.gitbook/assets/screenshot-2020-07-27-at-14.03.30.png)

        10. The Schema type should also automatically update to 'Schematron' upon selection of a Schematron file, but if it doesn't, then this will need to be changed:

![](../.gitbook/assets/screenshot-2020-07-24-at-10.27.55.png)

        11. Click OK. Click OK in the next pop-up, and then in the last pop-up click 'Save and close' \(in the bottom left\):

![](../.gitbook/assets/screenshot-2020-07-27-at-14.07.13.png)

You have now created a validation scenario. You can then run this scenario on numerous different XML files by opening the 'Configure Validation Scenario\(s\)' pop-up, ticking the scenario with the name which you just created, and then clicking 'Apply associated \(1\)'.

### Validation output example

Schematron validation in Oxygen will display like this:

![An example of Oxygen Schematron validation output](../.gitbook/assets/screenshot-2020-08-03-at-09.33.07.png)

Note that you can organise the messages by clicking the column headings:

![](../.gitbook/assets/screenshot-2020-08-03-at-09.33.07%20%281%29.png)

For example clicking the left most column heading \(which usually has no text\), above the blue, yellow and red icons organises the messages by type \(info, warning and error respectively\).

If you cannot see the full message, you can hover over it, or right-click and click 'Show message' to see it in full.

Some messages will contain GitBook links at the end of them. These are messages which have been covered in this GitBook, and you can follow the link to be taken to the accompanying page and description/action for that message. Note that you cannot simply click the link, and instead will have to copy it from the message and then paste it into your browser.

## How to set up the Crossref transformation scenario

1. Download the zip below, unzip it \(inside should be a file called `crossref.xsl`\) and place it somewhere on your local machine such as your desktop.

{% file src="../.gitbook/assets/crossref.xsl.zip" %}

2. Open any XML file in Oxygen.

3. In Oxygen's top toolbar, click 'Configure Transformation Scenarios' \(or press cmd + shift + t\).

![&apos;Configure Transformation Scenarios&apos; icon](https://user-images.githubusercontent.com/43879983/87419802-0cfb0880-c5cc-11ea-932f-b98f4a85af29.png)

4. Click 'New' -&gt; XML transformation with XSLT.

![Screenshot 2020-07-14 at 12 18 54](https://user-images.githubusercontent.com/43879983/87419913-3e73d400-c5cc-11ea-90e8-03c68832ead5.png)

5. Rename the scenario something appropriate, like Crossref.

![](https://user-images.githubusercontent.com/43879983/87420024-6cf1af00-c5cc-11ea-9246-19d44cc67d4e.png)

6. Click the folder for XSL URL, and navigate to where your local version of `crossref.xsl` was placed.

![](https://user-images.githubusercontent.com/43879983/87420073-84c93300-c5cc-11ea-9711-0c97e54e6d63.png)

7. Ensure that one of the following is selected for the 'Transformer':

* Saxon-PE \(the most preferable option if available\)
* Saxon-HE
* Saxon-EE

![](https://user-images.githubusercontent.com/43879983/88308997-a9788580-cd05-11ea-9671-7df32e3ccb7c.png)

8. Click 'Output'.

![](https://user-images.githubusercontent.com/43879983/87420218-cd80ec00-c5cc-11ea-9de9-db9fcbb796e7.png)

9. Click 'Save as', and in the field next to it paste the following: `elife-crossref-${xpath_eval(substring-after(doc('${rootMapURL}')//publisher_item/item_number[@item_number_type="article_number"]/text(),'e'))}-${xpath_eval(format-dateTime(current-dateTime() + xs:dayTimeDuration('PT30M'), '[Y0001][M01][D01][H01][m01][s01]'))}.xml`

![](https://user-images.githubusercontent.com/43879983/87420335-01f4a800-c5cd-11ea-82ca-326b09e52b8d.png)

10. Click 'OK', and then click 'Save and close'.

## Useful keyboard shortcuts and tips

### \(Mac\) Keyboard shortcuts

* Use cmd + shift + y to wrap text into one screen \(no horizontal scrolling is then needed\), this adds no whitespace.
* Use cmd + shift + w to check if an XML file is well formed.
* Use cmd + shift + v to run any associated validation scenarios.
* Use cmd + shift + t to run any associated transformation scenarios.
* Use cmd + shift + p to format and indent \(note that this also includes adding whitespace and should not be done prior to validation since many of the tests rely on the whitespace being correct\).

### Miscellaneous Tips

* Do not format and indent before running validation.
* Do not format and indent if the XML needs to be uploaded anywhere, this should _only_ be used for ease of reading the XML, as and when needed.
* Use 'Outline' to navigate the XML tree without having to 'prettify' the XML.
* XPaths can be run in the top left.
* The find and replace tool in Oxygen is really useful. You can refine searches using XPath\(s\), and use search case specifically or using Regular expressions.

