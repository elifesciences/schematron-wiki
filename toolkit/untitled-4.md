---
description: >-
  This page describes the house style applied to article content by production.
  It differs from website and communication house style as it is specific to the
  research articles.
---

# Article content house style

{% hint style="info" %}
Add an info link to the changelog at the top of the page with the text below (ensure the 'here' has a link to the changelog at the bottom of the page): 

For changelog, click here. Updated dd/mm/yyy
{% endhint %}

## What is article content house style?

The production vendors work with a lot of different clients and most of them have a house style. Therefore, they request each of their publishers lets them know what their house style is. As an online-only journal, we wanted for each article to be allowed to be a unit in-of itself and for the author not be subject to arbitrary changes to their content dictated by the publisher (in a printed edition it's understandable that publishers would want a consistent feel across the publication). However, authors are inconsistent within their own article and it is hard for vendors to spot this if there is not a set of rules to conform to. Therefore, we created a house style as guidance. This is also useful to indicate where we don't want things to be changed if a copy editor is applying another publisher's rules to our content.

## What needs to be checked?

Nothing needs to be specifically checked by production staff, but the below is the guidance for vendor staff and, where possible, Schematron rules have been created to help guide.

#### Article title

* This should be one sentence without colons and em dashes. Exceptions: medicine articles, Registered reports, Replication studies and Correction articles will all contain colons in their titles. Check with the Features team if a feature article contains a colon. The first word after the colon should start with a capital letter.
* Sentence case should be used (ie only the first letter of the first word is capitalised). Exceptions: proper nouns and genuses
* Titles should not end with fullstops.
* Abbreviations are discouraged in the title (but most common allowed, eg DNA, RNA, JAK-STAT).
* Numeral numbers should be changed to text (e.g. one case) unless in chemicals and genes.

#### Authors

* Author names are left as the authors have provided (we do not reduce first names to initials or ask authors for full names if initials are provided and we allow middle names or initials, as provided).
* No fullstops are allowed in author names, so remove when provided.
* Suffixes such as Jr, Snr or roman numerals are allowed, but qualifications are not (eg PhD, MD, Mphil).
* There must be at least 1 corresponding author, but mutliple are allowed.
* Authors can be listed as contributing equally and there can be more than one group of authors that contribute equally with one another.
* If an author is deceased this is indicated.

#### Affiliations

* Department and institution, followed by city and country.
* We do not allow street names, postcodes or counties/states (US).
* Authors can have more than one affiliation
* Present addresses (ie the author did the work associated with this paper elsewhere but has since moved to a new position) are listed separately in the present address field. The same rules apply, department and institution, followed by city and country only.

#### Abstract

See [Abstracts, digest and impact statements](../article-details/content/article-structure/abstract-digest-impact-statement.md).

#### Author keywords

* Sentence case, with the exception of proper nouns
* Whole phrases should be avoided
* Corrections, Retractions (and Expressions of Concern)** **do not have author keywords

**Research organsim**

*

#### Headings

#### General content



## Schematron checks

### Content checks

These checks relate to the content of \[insert name of page]. X or XXXXXX refers to quoted text which will change depending on the article.

#### **article-title-test-1**

**Error**: _Article title must not end with a full stop - 'XXXXXX'._

**Action**: A title cannot end with a fullstop. Please remove the fullstop from the title.

#### **article-title-test-2**

**Warning**: _Article title is entirely in lower case, is this correct? - XXXXXX._

**Action**: It is very unusual for a title to start with a lower case letter. It is possible if, for instance, if a title begins with 'acyl carrier protein (ACP)' the A in acyl should not be capitalised.

#### **article-title-test-3**

**Error**: _Article title must not be entirely in upper case - XXXXXX._

**Action**: We use sentence case so during preediting any manuscript submitted that uses all caps for the title should be changed to sentence case. Update this if this has not been done by the typesetter.

#### **article-title-test-5**

**Warning**: _Article title contains maths. Is this correct?_

**Action**: Downstream services that receive eLife metadata usually cannot process MathML so we avoid using it in the title. Usually, if a title contains MathML characters these can be replaced with normal font special character.

#### **article-title-test-6**

**Error**: _Article title must not contain bold._

**Action**: Bold font is not allowed in titles. Please convert to Roman.

#### **article-title-test-7**

**Error**: _Article title must not contain underline._

**Action**: Underlined text is not allowed in a title. Please remove the underlining

#### **article-title-test-9**

**Error**: _Article title contains the string '-Based '. this should be lower-case, '-based '. - XXXXXX_

**Action**: If an upper case letter is used for a hyphenated word -based, the B should be lowercase.

#### **article-title-test-10**

**Warning**: _Article title contains a colon. This almost never allowed. - XXXXXX_

**Action**: Colons are not allowed in eLife article titles and should be removed (check the context and replace with a comma or ask the author to reword the title if this is not possible). Exceptions to this rule: Registered reports, Replication studies, Review articles and Correction articles will all contain colons in their titles. The first word after the colon should start with a capital letter.

#### **article-title-test-11**

**Warning**: _Article title contains a capitalised word(s) which is not capitalised in the body of the article - XXXXXX - is this correct? - XXXXXX_

**Action**: This warning will fire if a capital letter is used for a word in the title but the capitalisation is not used for the same word in the article text. This usually indicates it should not be capitalised in the title either and has been left there by mistake. However, be careful not to remove the capitalisation if it is referring to a gene name rather than a protein.

#### **article-title-test-12**

**Warning**: _Article title contains the string ' based'. Should the preceding space be replaced by a hyphen - '-based'. - XXXXXX_

**Action**: This warning will fire if the word 'based' is not preceded by a hyphen. Check the context, if it should be added please do so because it would be unusual for this to not be hyphenated.

#### **review-article-title-1**

**Error**: _The first character in the title for a review article should be upper case. 'XXXXXX' in 'XXXXXX'_

**Action**: It is very unusual for a title to start with a lower case letter. It is possible if, for instance, if a title begins with 'acyl carrier protein (ACP)' the A in acyl should not be capitalised.

#### **review-article-title-2**

**Error**: _The first character after the colon in the title for a review article should be upper case. 'XXXXXX' in 'XXXXXX'_

**Action**: The first word after a colon in a title should start with a capital letter.

#### **medicine-abstract-conformance**

**Warning**: _Medicine articles with a colon in their title should likely have a structured abstract. If there is no note in eJP about this, either the colon in the title is incorrect, or the abstract should be changed to a structured format._

**Action**: If a medicine article has a colon in the abstract this is an indicator that it should have a structured abstract. Either a colon

#### **test-auth-kwd-group-presence-1**

**Error**: _One author keyword group must be present in article-meta._

**Action**: If author keywords are missing this indicates they have not been transferred from EJP correctly. Check the submission on EJP and add from there. If there are none in EJP ask the author to provide 3-6 keywords.

#### **test-auth-kwd-group-presence-2**

**Error**: _XXXXXX articles must not have any author keywords_

**Action**: Corrections, Retractions (and Expressions of Concern)** **do not have author keywords. Please remove if present for these article types.

#### **test-ro-kwd-group-presence-1**

**Error**: _More than 1 Research organism keyword group is present in article-meta. This is incorrect._

**Action**: Articles are only allowed to contain one research organism. If there is more than one either remove one that is obviously incorrect or ask the author which should be removed. 

#### **test-ro-kwd-group-presence-2**

**Warning**: _XXXXXX does not contain a Research Organism keyword group. Is this correct?_

**Action**: If an author has indicated there is no research organism, this should be 'none', not absent.

#### **kwd-group-type**

**Error**: _kwd-group must have a @kwd-group-type 'research-organism', or 'author-keywords'._

**Action**:

**non-ro-kwd-presence-test**

**Warning**: _kwd-group must contain at least one kwd_

**Action**:

**kwd-group-title**

**Error**: _kwd-group title is XXXXXX, which is wrong. It should be 'Research organism'._

**Action**:

**ro-kwd-presence-test**

**Warning**: _kwd-group must contain at least one kwd_

**Action**:

**kwd-upper-case**

**Error**: _research-organism kwd elements should start with an upper-case letter._

**Action**:

**kwd-child-test**

**Error**: _research-organism keywords cannot have child elements such as XXXXXX._

**Action**:XML structure checks

These checks relate to the XML structure of \[insert name of page]. ‌X or XXXXXX refers to quoted text which will change depending on the article. For more information about what the XML should look like, see below (include link to XML structure).

#### **covid-processing-instruction**

**Warning**: _The article title (XXXXXX) suggests that this article should probably have the covid processing instruction - '_\<?covid-19-tdm?>_' - but it does not. Should it?_

**Action**: If this article relates to covid-19 there should be a special processing instruction in the XML. This is not in the content and is not viewable on Kriya, PDF or eLife website, it is purely for delivery to PMC so they can identify and group relevant papers on their site. If it is missing you will need to ask the typesetter to fix this and add it.

#### **test-title-group-presence**

**Error**: _title-group containing article-title must be present._

**Action**: Within the XML the article title must be contained within a \<title-group>. If it is not, it will need to be sent back to ask the typesetter to fix this. An example of how the XML should look is below:

```
<title-group>
    <article-title>The eLife research article</article-title>
</title-group>
```

****

**article-title-test-4**

**Error**: _Article title must not be empty._

**Action**: The article-title in the XML is empty. This is a mistake and the title has either been accidentally processed into another field or is missing. You can add the title in using the Kriya interface (and remove it from elsewhere if placed there by accident).

**article-title-test-8**

**Error**: _Article title must not contain a line break (the element 'break')._

**Action**: If the XML contains a line break in the title this needs to be removed. You can do this by removing the space between the words in the Kriya interface and then creating a space again using the space bar.

****

XML structure

```
Include an example of the xml with variations if appropriate. 
```

## Further reading

Where applicable, give links to related pages and external sites.

## Changelog

After Exeter has fed back on the page and it has been updated, any further changes to the page should be listed in order from oldest to most recent. Ensure the date heading is entered as a level 2 heading and the changes heading is entered as a level 3 heading.

### dd/mm/yyyy

#### Changes

*

### dd/mm/yyyy

#### Changes

*
