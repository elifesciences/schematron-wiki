# Deceased status

## What is deceased status?

If an author of an article dies prior to publication, this should be denoted with a footnote. 

![An example of a deceased status footnote in the article PDF](../../.gitbook/assets/screenshot-2020-09-11-at-16.13.08.png)

![An example of a deceased status footnote on the eLife website](../../.gitbook/assets/screenshot-2020-09-11-at-16.13.33.png)

{% hint style="info" %}
Note: eLife does not issue new versions of articles in order to indicate that an author has died.
{% endhint %}

## What needs to be added?

To add a deceased footnote to an author, the production vendor's support team will need to add the attribute `deceased="yes"` to the`contrib` element, and a footnote also needs to be added in the `author-notes` section with an appropriate footnote symbol in the label. On the eLife website the attribute on the `contrib` element drives the necessary display. However, some sites, such as PMC, require the additional footnote as well to display the deceased status. For an XML example of deceased status, see [**below**](deceased-status.md#xml-structure). 

## Schematron checks

### Content checks

These checks relate to deceased status. X or XXXXXX refers to quoted text which will change depending on the article.

#### deceased-test-1

**Error**: _XXXXXX has a linked footnote 'XXXXXX', but not @deceased="yes" which is incorrect._

**Action:** This error will fire if an author has a linked footnote which indicates that the author is deceased but the `contrib` element does not have a `deceased="yes"` attribute. Check which author \(if any\) should have the footnote and ask the production vendors to correct accordingly. 

#### deceased-test-2

**Error**: _XXXXXX has the attribute deceased="yes", but no footnote which contains the text 'Deceased', which is incorrect._

**Action:** This error will fire if an author has a `deceased="yes"` attribute but no linked footnote in the `author-notes` section. Check which author \(if any\) should have the footnote and ask the production vendors to correct accordingly. 

## XML structure

```markup
<contrib contrib-type="author" deceased="yes" id="author-10109">
    <name>
    <surname>Moore</surname>
    <given-names>Ian</given-names>
    </name>
```

```markup
<author-notes>
    <fn fn-type="other" id="fn1">
        <label>†</label>
        <p>Deceased</p>
    </fn>
</author-notes>
```





