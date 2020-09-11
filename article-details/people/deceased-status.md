# Deceased status

## What is deceased status?

If an author of an article passes away prior to submission, this should be denoted with a footnote. 

![An example of a deceased status footnote in the article PDF](../../.gitbook/assets/screenshot-2020-09-11-at-16.13.08.png)

![An example of a deceased status footnote on the eLife website](../../.gitbook/assets/screenshot-2020-09-11-at-16.13.33.png)

## What needs to be added?

To add a deceased footnote to an author, Exeter will need to update the `contrib` element with the attribute `deceased="yes"` and a footnote needs to be added in the `author-notes` section with an appropriate label \(usually † unless this is already being used for another footnote\). For example: 

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

## Schematron checks

### Content checks

These checks relate to deceased status. X or XXXXXX refers to quoted text which will change depending on the article.

#### deceased-test-1

**Error**: _XXXXXX has a linked footnote 'XXXXXX', but not @deceased="yes" which is incorrect._

**Action:** This error will fire if an author has a linked footnote which indicates that the author is deceased but the `contrib` element does not have a `deceased="yes"` attribute. Check which author \(if any\) should have the footnote and ask Exeter to correct accordingly. 

#### deceased-test-2

**Error**: _XXXXXX has the attribute deceased="yes", but no footnote which contains the text 'Deceased', which is incorrect._

**Action:** This error will fire if an author has a `deceased="yes"` attribute but no linked footnote in the `author-notes` section. Check which author \(if any\) should have the footnote and ask Exeter to correct accordingly. 

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

## Changelog

After Exeter has fed back on the page and it has been updated, any further changes to the page should be listed in order from oldest to most recent.

### dd/mm/yyyy

#### Changes

* 
### dd/mm/yyyy

#### Changes

* 
