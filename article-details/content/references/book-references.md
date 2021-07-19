# Book references

{% hint style="info" %}
For change log, click [**here**](book-references.md#change-log).
{% endhint %}

## What is a book reference?

A book reference gives bibliographic details for any electronic or in print books referred to in an article. 

&lt;insert book ref example&gt;

For eLife articles, each part of the reference is formatted specifically:

&lt;insert book ref example including doi with formatting labels&gt;

## What needs to be added?

The following information can be added for journal references:

| Kriya field | Mandatory? | XML element | Example |
| :--- | :--- | :--- | :--- |
| Author\(s\) | At least one author or collaboration is required; both can be present | &lt;person-group person-group-type="author"&gt;&lt;name&gt;&lt;surname&gt;Bloggs&lt;/surname&gt;&lt;given-names&gt;J&lt;/given-names&gt;&lt;/name&gt;&lt;/person-group&gt; | Bloggs J |
| Collaboration\(s\) | At least one author or collaboration is required; both can be present | &lt;person-group person-group-type="author"&gt;&lt;collab&gt;Tulsa 1000 Investigators&lt;/collab&gt;&lt;/person-group&gt; | Tulsa 1000 Investigators |
| Year | Yes | &lt;year iso-8601-date="2008"&gt;2008&lt;/year&gt; | 2008 |
| Chapter title | No | &lt;chapter-title&gt;Two rules of speciation&lt;/chapter-title&gt; | Two rules of speciation |
| Book title | Yes | &lt;source&gt;Speciation and its consequences&lt;/source&gt; | Speciation and its consequences |
| Volume | No | &lt;volume&gt;173&lt;/volume&gt; | 173 |
| e-location ID | No \(if first/last pages are present, there can be no e-location ID\) | &lt;elocation-id&gt;e51381&lt;/elocation-id&gt; | e51381 |
| First page | No \(if an e-location ID is present, there can be no first/last pages\) | &lt;fpage&gt;917&lt;/fpage&gt; | 917 |
| Last page | No \(if an e-location ID is present, there can be no first/last pages\) | &lt;lpage&gt;926&lt;/lpage&gt; | 926 |
| DOI | Yes \(if there is one\) | &lt;pub-id pub-id-type="doi"&gt; | 10.1083/jcb.200510010 |
| PMID | Yes \(if there is one\) | &lt;pub-id pub-id-type="pmid"&gt; | 16769818 |
| InPress | No | &lt;comment&gt;In press&lt;/comment&gt; | In press |

## How to add a book reference

## Finding reference details

## Schematron checks 

### Content checks

### XML Structure checks

## Change log



