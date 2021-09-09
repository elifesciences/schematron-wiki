---
description: This is a page about entries for theses in the reference list.
---

# Thesis references

## What is a Thesis reference?

A thesis, or dissertation is a document submitted by an individual for an academic degree or professional qualification presenting the author's research and findings. These can be cited in scientific literature in the same way as other references. 

## What needs to be added?

The following information can be added for thesis references:

| Kriya field | Mandatory? | XML element | Example |
| :--- | :--- | :--- | :--- |
| **Author\(s\)** | **Yes - only one author is allowed** | **&lt;person-group person-group-type="author"&gt;&lt;name&gt;&lt;surname&gt;Bloggs&lt;/surname&gt;&lt;given-names&gt;J&lt;/given-names&gt;&lt;/name&gt;&lt;/person-group&gt;** | **Bloggs J** |
| **Collaboration\(s\)** | **Not allowed** | **N/A** | **N/A** |
| Year | Yes | &lt;year iso-8601-date="2008"&gt;2008&lt;/year&gt; | 2008 |
| Article title |  |  |  |
| Publisher name |  |  |  |
| Publisher location |  |  |  |
| DOI | Yes \(if there is one\) | &lt;pub-id pub-id-type="doi"&gt; | 10.1083/jcb.200510010 |

## Schematron checks

### Content checks

These checks relate to the content of Thesis references. X or XXXXXX refers to quoted text which will change depending on the article.

#### err-elem-cit-thesis-2-1

**Error:** _One and only one person-group element is allowed. Reference 'XXXXXX' has XXXXXX &lt;person-group&gt; elements._

**Action:** Thesis references can only have one person-group element, and these should be of the 'author' type. This error will fire if a reference has 0 or more than one person group element. Check the reference is definitely a thesis reference, and ensure there are no empty person-group elements. If there is any confusion, leave the following author query:

#### err-elem-cit-thesis-3

**Error**: _\[err-elem-cit-thesis-3\] No &lt;collab&gt; elements are allowed in thesis citations. Reference 'XXXXXX' has XXXXXX  elements._

**Action:** Thesis references by nature cannot have collaborations as authors, as a thesis is the work of one individual. Check the reference is definitely a thesis reference, and ensure there are no empty person-group elements. If there is any confusion, leave the following author query:

#### err-elem-cit-thesis-6

**Error**: _\[err-elem-cit-thesis-6\] No &lt;etal&gt; elements are allowed in thesis citations. Reference 'XXXXXX' has XXXXXX  elements._

**Action:** Thesis references by nature cannot have multiple authors, as a thesis is the work of one individual. Check the reference is definitely a thesis reference, and ensure there are no empty person-group elements. If there is any confusion, leave the following author query:

#### err-elem-cit-thesis-8-1

**Error**: _\[err-elem-cit-thesis-8-1\] Each &lt;element-citation&gt; of type 'thesis' must contain one and only one &lt;article-title&gt; element. Reference 'XXXXXX' has XXXXXX  elements._

**Action:** What to do if this message fires

#### err-elem-cit-thesis-9-1

**Error**: _\[err-elem-cit-thesis-9-1\]  &lt;publisher-name&gt; is required. Reference 'XXXXXX' has XXXXXX  elements._

**Action:** What to do if this message fires

#### err-elem-cit-thesis-11-1

**Error**: _\[err-elem-cit-thesis-11-1\] A maximum of one &lt;pub-id&gt; element is allowed. Reference 'XXXXXX' has XXXXXX  elements._

**Action:** What to do if this message fires

#### err-elem-cit-thesis-13

**Error**: _\[err-elem-cit-thesis-13\] The only tags that are allowed as children of &lt;element-citation&gt; with the publication-type="thesis" are: &lt;person-group&gt;, &lt;year&gt;, &lt;article-title&gt;, &lt;source&gt;, &lt;publisher-loc&gt;, &lt;publisher-name&gt;, &lt;ext-link&gt;, and &lt;pub-id&gt;. Reference 'XXXXXX' has other elements_

**Action:** What to do if this message fires

#### err-elem-cit-thesis-2-2

**Error**: _\[err-elem-cit-thesis-2-2\] Each &lt;person-group&gt; must have a @person-group-type attribute of type 'author'. Reference 'XXXXXX' has a &lt;person-group&gt; element with @person-group-type attribute 'XXXXXX'._

**Action:** What to do if this message fires

#### err-elem-cit-thesis-2-3

**Error**: _\[err-elem-cit-thesis-2-3\] Each thesis citation must have one and only one author. Reference 'XXXXXX' has a thesis citation with XXXXXX authors._

**Action:** What to do if this message fires

#### err-elem-cit-thesis-8-2

**Error**: _\[err-elem-cit-thesis-8-2\] An &lt;article-title&gt; element in a reference may contain characters and &lt;italic&gt;, &lt;sub&gt;, and &lt;sup&gt;. No other elements are allowed. Reference 'XXXXXX' does not meet this requirement._

**Action:** What to do if this message fires

#### err-elem-cit-thesis-9-2

**Error**: _\[err-elem-cit-thesis-9-2\] No elements are allowed inside &lt;publisher-name&gt;. Reference 'XXXXXX' has child elements within the  element._

**Action:** What to do if this message fires

#### err-elem-cit-thesis-10-2

**Error**: _\[err-elem-cit-thesis-10-2\] No elements are allowed inside &lt;publisher-loc&gt;. Reference 'XXXXXX' has child elements within the  element._

**Action:** What to do if this message fires

#### err-elem-cit-thesis-11-2

**Error**: _\[err-elem-cit-thesis-11-2\] The only allowed pub-id type is 'doi'. Reference 'XXXXXX' has a pub-id type of 'XXXXXX'._

**Action:** What to do if this message fires

### XML structure checks

These checks relate to the XML structure of \[insert name of page\]. ‌X or XXXXXX refers to quoted text which will change depending on the article. For more information about what the XML should look like, see below \(include link to XML structure\).

#### id-x - make sure this is tagged as a level 3 header

**Warning/Error/Info:** _content of message_

**Action:** What to do if this message fires

