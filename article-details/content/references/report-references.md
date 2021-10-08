---
description: This is a page about entries for reports in the reference list.
---

# Report references

## What is a report reference?

A report reference provides the bibliographic details for a report in the reference list. A report is any document produced by an organisation that is issued on its own rather than in a journal or as a book. It covers things like white papers, instructions from manufacturers etc.

## 

![Report references on the eLife website](../../../.gitbook/assets/screenshot-2021-10-08-at-13.44.38.png)

For eLife articles, each part of the reference is formatted specifically:

![](../../../.gitbook/assets/report-example_gitbook.png)



## What needs to be added?

The following information can be added for report references:

<table>
  <thead>
    <tr>
      <th style="text-align:left">Kriya field</th>
      <th style="text-align:left">Mandatory?</th>
      <th style="text-align:left">XML element</th>
      <th style="text-align:left">Example</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Author(s)</td>
      <td style="text-align:left">At least one author or collaboration is required; both can be present</td>
      <td
      style="text-align:left">&lt;person-group person-group-type=&quot;author&quot;&gt;&lt;name&gt;&lt;surname&gt;Davies&lt;/surname&gt;
        &lt;given-names&gt;NG&lt;/given-names&gt;&lt;/name&gt;&lt;/person-group&gt;</td>
        <td
        style="text-align:left">Davies NG</td>
    </tr>
    <tr>
      <td style="text-align:left">Collaboration Author(s)</td>
      <td style="text-align:left">At least one author or collaboration is required; both can be present</td>
      <td
      style="text-align:left">
        <p>&lt;person-group person-group-type=&quot;author&quot;&gt;</p>
        <p>World Health Organization &lt;/person-group&gt;</p>
        </td>
        <td style="text-align:left">World Healt Organization</td>
    </tr>
    <tr>
      <td style="text-align:left">Issued year</td>
      <td style="text-align:left">Yes</td>
      <td style="text-align:left">&lt;year iso-8601-date=&quot;2020&quot;&gt;2020&lt;/year&gt;</td>
      <td style="text-align:left">2020</td>
    </tr>
    <tr>
      <td style="text-align:left">Source</td>
      <td style="text-align:left">Yes</td>
      <td style="text-align:left">&lt;source&gt;Report on Antimalarial Drug Efficacy, Resistance and Response:
        10 Years of Surveillance (2010&#x2013;2019) Geneva&lt;/source&gt;</td>
      <td
      style="text-align:left">Report on Antimalarial Drug Efficacy, Resistance and Response: 10 Years
        of Surveillance (2010&#x2013;2019) Geneva</td>
    </tr>
    <tr>
      <td style="text-align:left">Publisher</td>
      <td style="text-align:left">Yes</td>
      <td style="text-align:left">&lt;publisher-name&gt;World Health Organization&lt;/publisher-name&gt;</td>
      <td
      style="text-align:left">World Health Organization</td>
    </tr>
    <tr>
      <td style="text-align:left">URL</td>
      <td style="text-align:left">Optional</td>
      <td style="text-align:left">
        <p>&lt;ext-link ext-link-type=&#x201C;uri&#x201D; xlink:href=&quot;https://www.who.int/publications/i/item/9789240012813&quot;&gt;</p>
        <p>https://www.who.int/publications/i/item/9789240012813&lt;/ext-link&gt;</p>
      </td>
      <td style="text-align:left">https://www.who.int/publications/i/item/9789240012813</td>
    </tr>
  </tbody>
</table>

Where the optional information is available, this should also be added in. Even though a URL is optional, it is prefereable.

### **How to add a report reference**

From the top tool bar click on Insert and select Reference:

![Kriya 2 interface to insert](../../../.gitbook/assets/screenshot-2021-10-08-at-13.57.17.png)

You will be presented with the following interface:

![](../../../.gitbook/assets/screenshot-2021-10-08-at-13.59.11.png)

Because reports are not standard references, the best option is to paste the entire reference into the interface and select Paste entire reference. The press Next. Once this is done select the Report type and change the fields on the left to match what we require:

![Kriya 2 interface to add reference](../../../.gitbook/assets/screenshot-2021-10-08-at-14.09.33.png)

## Schematron checks

### Content checks

These checks relate to the content of report references. X or XXXXXX refers to quoted text which will change depending on the article.

### **XML structure checks**

These checks relate to the XML structure of report references. X or XXXXXX refers to quoted text which will change depending on the article. For examples of what the XML should look like, [**see below**](report-references.md#xml-examples).

**err-elem-cit-report-2-1**

**Error**: _\[err-elem-cit-report-2-1\] One and only one person-group element is allowed. Reference 'XXXXXX' has XXXXXX  &lt;person-group&gt; elements._

**Action**: If there is no author list present, one will need to be added to the reference. Look the article up online if possible; otherwise raise an author query on the proof for the missing information. In cases where no author is given, 'Anon' will most likely need to be added in the 'Collaboration' field \(`<collab>`\). If there are multiple person-group elements, this means there has been an error in processing - Exeter will need to fix this.

**err-elem-cit-report-9-1**

**Error**: **Error**: _\[err-elem-report-report-9-1\] Each &lt;element-citation&gt; of type 'report' must contain one and only one &lt;source&gt; element. Reference 'XXXXXX' has XXXXXX  elements._

**Action**: This error will appear if a report reference has more than one or no source. Check that the source has not been accidentally captured as a title. 

**err-elem-cit-report-11-1**

**Error**: _\[err-elem-cit-report-11-1\]  is required. Reference 'XXXXXX' has XXXXXX  elements._

**Action**:

**warning-elem-cit-report-11-3**

**Warning**: _\[warning-elem-cit-report-11-3\] The content of  may not end with a publisher location. Reference 'XXXXXX' contains the string XXXXXX, which ends with a publisher location._

**Action**:

**err-elem-cit-report-15**

**Error**: _\[err-elem-cit-report-15\] The only tags that are allowed as children of  with the publication-type="report" are: , , , , , , and . Reference 'XXXXXX' has other elements._

**Action**:

**err-elem-cit-report-14**

**Error**: _Report reference cannot have both a doi and a URL. Reference 'XXXXXX' has a doi \(XXXXXX\) and a URL \(XXXXXX\)._

**Action**:

**err-elem-cit-report-2-2**

**Error**: _\[err-elem-cit-report-2-2\] Each  must have a @person-group-type attribute of type 'author'. Reference 'XXXXXX' has a  element with @person-group-type attribute 'XXXXXX'._

**Action**:

**err-elem-cit-report-9-2-2**

**Error**: _\[err-elem-cit-report-9-2-2\] A  element within a  of type 'report' may only contain the child elements: , , and . No other elements are allowed. Reference 'XXXXXX' has child elements that are not allowed._

**Action**:

**err-elem-cit-report-11-2**

**Error**: _\[err-elem-cit-report-11-2\] No elements are allowed inside . Reference 'XXXXXX' has child elements within the  element._

**Action**:

**err-elem-cit-report-12-2**

**Error**: _\[err-elem-cit-report-12-2\] The only allowed pub-id types are 'doi' and 'isbn'. Reference 'XXXXXX' has a pub-id type of 'XXXXXX'._

**Action**:

### XML examples

```text
<ref id="bib15">
<element-citation publication-type="report">
<person-group person-group-type="author">
<collab>World Health Organization</collab>
</person-group>
<year iso-8601-date="2020">2020</year>
<source>Report on Antimalarial Drug Efficacy, Resistance and Response: 
10 Years of Surveillance (2010–2019) Geneva</source>
<publisher-name>World Health Organization</publisher-name>
</element-citation>
</ref>

<ref id="bib16">
<element-citation publication-type="report">
<person-group person-group-type="author">
<collab>CDC</collab>
</person-group>
<year iso-8601-date="2019">2019</year>
<source>The biggest antibiotic-resistant threats in the U.S</source>
<publisher-name>Centers for Disease Control and Prevention</publisher-name>
<ext-link ext-link-type="uri" xlink:href=
"https://www.cdc.gov/drugresistance/biggest-threats.html">
https://www.cdc.gov/drugresistance/biggest-threats.html</ext-link>
</element-citation>
</ref>

<ref id="bib4">
<element-citation publication-type="report">
<person-group person-group-type="author">
<collab>CDC</collab>
</person-group>
<year iso-8601-date="2021">2021a</year>
<source>SARS-CoV-2 Variant Classifications and Definitions</source>
<publisher-name>Centers Dis Control Prev</publisher-name>
<ext-link ext-link-type="uri" xlink:href=
"https://www.cdc.gov/coronavirus/2019-ncov/variants/variant-info.html">
https://www.cdc.gov/coronavirus/2019-ncov/variants/variant-info.html</ext-link>
</element-citation>
</ref>
<ref id="bib5">
<element-citation publication-type="report">
<person-group person-group-type="author">
<collab>CDC</collab>
</person-group>
<year iso-8601-date="2021">2021b</year>
<source>Interim Guidelines for Collecting and Handling of Clinical Specimens for 
COVID-19 Testing</source>
<publisher-name>Centers Dis Control Prev</publisher-name>
<ext-link ext-link-type="uri" xlink:href=
"https://www.cdc.gov/coronavirus/2019-ncov/lab/guidelines-clinical-specimens.html">
https://www.cdc.gov/coronavirus/2019-ncov/lab/guidelines-clinical-specimens.html
</ext-link>
</element-citation>
</ref>
```

