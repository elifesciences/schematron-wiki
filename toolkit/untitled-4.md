---
description: >-
  This page describes the house style applied to article content by production.
  It differs from website and communication house style as it is specific to the
  research articles.
---

# Article content house style

{% hint style="info" %}
For changelog, click [here](untitled-4.md#changelog). 
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



#### Major subject areas

#### Headings

* eLife allows 4 levels of headings
*

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

#### **author-xref-test-1**

**Error**: _Affiliation footnote links (xrefs) from authors must be the first type of link. For XXXXXX, their affiliation link - XXXXXX - appears after another non-affiliation link, when it should appear before it._

**Action**:

**author-xref-test-2**

**Error**: _Equal contribution links from authors must appear after affiliation footnote links. For XXXXXX, their equal contribution link (to XXXXXX) appears after another non-affiliation link, when it should appear before it._

**Action**:

**author-xref-test-3**

**Error**: _Present address type footnote links from authors must appear after affiliation and equal contribution links (if there is one). For XXXXXX, their present address link (to XXXXXX) appears before an affiliation link or equal contribution link._

**Action**:

**author-xref-test-4**

**Error**: _Author footnote links to datasets are not needed. Please remove this -_

**Action**:

**surname-test-1**

**Error**: _Each name must contain only one surname._

**Action**:

**given-names-test-1**

**Error**: _Each name must contain only one given-names element._

**Action**:

**given-names-test-2**

**Warning**: _This name - XXXXXX - does not contain a given-name. Please check with eLife staff that this is correct._

**Action**:

**surname-test-2**

**Error**: _surname must not be empty._

**Action**:

**surname-test-3**

**Error**: _surname must not contain any formatting (bold, or italic emphasis, or smallcaps, superscript or subscript)._

**Action**:

**surname-test-4**

**Error**: _surname should usually only contain letters, spaces, or hyphens. XXXXXX contains other characters._

**Action**:

**surname-test-5**

**Warning**: _surname doesn't begin with a capital letter - XXXXXX. Is this correct?_

**Action**:

**surname-test-6**

**Error**: _surname starts with a space, which cannot be correct - 'XXXXXX'._

**Action**:

**surname-test-7**

**Error**: _surname ends with a space, which cannot be correct - 'XXXXXX'._

**Action**:

**surname-test-8**

**Warning**: _surname looks to start with initial - 'XXXXXX'. Should 'XXXXXX' be placed in the given-names field?_

**Action**:

**surname-test-9**

**Warning**: _surname contains brackets - 'XXXXXX'. Should the brakceted text be placed in the given-names field instead?_

**Action**:

**given-names-test-3**

**Error**: _given-names must not be empty._

**Action**:

**given-names-test-4**

**Error**: _given-names must not contain any formatting (bold, or italic emphasis, or smallcaps, superscript or subscript) - 'XXXXXX'._

**Action**:

**given-names-test-5**

**Error**: _given-names should usually only contain letters, spaces, or hyphens. XXXXXX contains other characters._

**Action**:

**given-names-test-6**

**Warning**: _given-names doesn't begin with a capital letter - 'XXXXXX'. Is this correct?_

**Action**:

**given-names-test-7**

**Error**: _given-names contains initialised full stop(s) which is incorrect - XXXXXX_

**Action**:

**given-names-test-8**

**Error**: _given-names starts with a space, which cannot be correct - 'XXXXXX'._

**Action**:

**given-names-test-9**

**Error**: _given-names ends with a space, which cannot be correct - 'XXXXXX'._

**Action**:

**given-names-test-10**

**Warning**: _given-names ends with de, der, or den - should this be captured as the beginning of the surname instead? - 'XXXXXX'._

**Action**:

**given-names-test-11**

**Warning**: _given-names ends with ' van' - should this be captured as the beginning of the surname instead? - 'XXXXXX'._

**Action**:

**given-names-test-12**

**Warning**: _given-names ends with ' von' - should this be captured as the beginning of the surname instead? - 'XXXXXX'._

**Action**:

**given-names-test-13**

**Warning**: _given-names ends with ' el' - should this be captured as the beginning of the surname instead? - 'XXXXXX'._

**Action**:

**given-names-test-14**

**Warning**: _given-names ends with te, ter, or ten - should this be captured as the beginning of the surname instead? - 'XXXXXX'._

**Action**:

**given-names-test-15**

**Info**: _given-names contains initials with spaces. Ensure that the space(s) is removed between initials - 'XXXXXX'._

**Action**:

**pre-given-names-test-16**

**Warning**: _given-names contains brackets - 'XXXXXX'. This will be flagged by Crossref (although will not actually cause any significant problems). Please add the following author query: Please confirm whether you are happy to remove the brackets around (one of) your given names - 'XXXXXX'. This will cause minor issues at Crossref, although they can be retained if desired._

**Action**:

**final-given-names-test-16**

**Warning**: _given-names contains brackets - 'XXXXXX'. This will be flagged by Crossref (although will not actually cause any significant problems)._

**Action**:

**suffix-assert**

**Error**: _suffix can only have one of these values - 'Jr', 'Jnr', 'Sr', 'Snr', 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX', 'X'._

**Action**:

**suffix-child-test**

**Error**: _suffix cannot have any child elements - XXXXXX_

**Action**:

**disallowed-child-assert**

**Error**: _XXXXXX is not allowed as a child of name._

**Action**:

**contrib-test-1**

**Error**: _Authors should have at least 1 link to an affiliation. XXXXXX does not._

**Action**:

**contrib-test-5**

**Warning**: _Group author members should very likely have an affiliation. XXXXXX does not. Is this OK?_

**Action**:

**contrib-test-2**

**Warning**: _The XXXXXX doesn't have an affiliation - XXXXXX - is this correct?_

**Action**:

**contrib-test-4**

**Error**: _The XXXXXX (XXXXXX) must have an affiliation. Exeter: If it is not present in the eJP ouput, please check with eLife production. Production: Please check eJP or ask Editorial for the correct affiliation. - is this correct?_

**Action**:

**contrib-test-3**

**Error**: _author contains both a child name and a child collab. This is not correct._

**Action**:

**name-test**

**Error**: _Contrib contains no collab but has XXXXXX name(s). This is not correct._

**Action**:

**contrib-email-1**

**Error**: _Corresponding authors must have an email._

**Action**:

**contrib-email-2**

**Error**: _Non-corresponding authors must not have an email._

**pre-auth-aff-test-1**

**Warning**: _Author affiliations must have a country. This one does not - XXXXXX. Please query with the authors._

**Action**:

**final-auth-aff-test-1**

**Error**: _Author affiliations must have a country. This one does not - XXXXXX._

**Action**:

**pre-auth-aff-test-2**

**Warning**: _Author affiliations must have a city. This one does not - XXXXXX. Please query the authors._

**Action**:

**final-auth-aff-test-2**

**Error**: _Author affiliations must have a city. This one does not - XXXXXX_

**Action**:

**pre-auth-aff-test-3**

**Warning**: _Author affiliations must have a top level institution. This one (with the id XXXXXX) does not - XXXXXX. Please query the authors._

**Action**:

**final-auth-aff-test-3**

**Error**: _Author affiliations must have a top level institution. This one (with the id XXXXXX) does not - XXXXXX_

**Action**:

**gen-aff-test-1**

**Error**: _Affiliations cannot have more than 1 top level institutions. XXXXXX has XXXXXX._

**Action**:

**gen-aff-test-2**

**Warning**: _Affiliation has XXXXXX department field(s) - XXXXXX. Is this correct?_

**Action**:

**gen-aff-test-3**

**Error**: _Affiliations cannot have more than 1 label. XXXXXX has XXXXXX._

**Action**:

**gen-aff-test-4**

**Error**: _Affiliations cannot have more than 1 addr-line elements. XXXXXX has XXXXXX._

**Action**:

**gen-aff-test-5**

**Error**: _Affiliations cannot have more than 1 country elements. XXXXXX has XXXXXX._

**Action**:

**gen-aff-test-6**

**Error**: _aff elements cannot contain text. They can only contain elements (label, institution, addr-line, country). This one (XXXXXX) contains the text 'XXXXXX'_

**Action**:

**aff-child-conformity**

**Error**: _XXXXXX is not allowed as a child of ._

**Action**:

**addr-line-parent**

**Error**: _XXXXXX is not allowed as a child of ._

**Action**:

**addr-line-child-1**

**Error**: _XXXXXX is not allowed as a child of ._

**Action**:

**addr-line-child-2**

**Error**: _XXXXXX in must have the attribute content-type="city". XXXXXX does not._

**aff-label-conformance-1**

**Error**: _Duplicated affiliation labels - XXXXXX is present more than once._

**corr-aff-presence**

**Error**: _Correction notices should not contain affiliations._

**Action**:

#### **retr-aff-presence**

**Error**: _XXXXXX notices should not contain affiliations._

**Action**:

**gen-country-test**

**Error**: _affiliation contains a country which is not in the allowed list - XXXXXX. For a list of allowed countries, refer to https://github.com/elifesciences/eLife-JATS-schematron/blob/master/src/countries.xml._

**Action**:

**singapore-test-1**

**Error**: _XXXXXX has 'Singapore' as its country but 'XXXXXX' as its city, which must be incorrect._

**Action**:

**taiwan-test**

**Warning**: _Affiliation has a Taiwanese city - XXXXXX - but its country is 'XXXXXX'. Please check the original manuscript. If it has 'Taiwan' as the country in the original manuscript then ensure it is changed to 'Taiwan'._

**Action**:

**s-korea-test**

**Warning**: _Affiliation has a South Korean city - XXXXXX - but its country is 'XXXXXX', instead of 'Republic of Korea'._

**Action**:

**n-korea-test**

**Warning**: _Affiliation has 'XXXXXX' as its country which is very likely to be incorrect._

**Action**:

**pre-US-states-test**

**Warning**: _city contains a US state (or an abbreviation for it) - XXXXXX. Please raise with eLife production staff._

**Action**:

**final-US-states-test**

**Error**: _city contains a US state (or an abbreviation for it) - XXXXXX._

**Action**:

**singapore-test-2**

**Error**: _XXXXXX has 'Singapore' as its city but 'XXXXXX' as its country, which must be incorrect._

**Action**:

**city-replacement-character-presence**

**Error**: _XXXXXX element contains the replacement character '�' which is unallowed._

**Action**:

**city-number-presence**

**Warning**: _city contains a number, which is almost certainly incorrect - XXXXXX._

**Action**:

**city-street-presence**

**Warning**: _city likely contains a street or building name, which is almost certainly incorrect - XXXXXX._

**Action**:

**UC-no-test1**

**Error**: _XXXXXX is not allowed as insitution name, since this is always followed by city name. This should very likely be XXXXXX (provided there is a city tagged)._

**Action**:

**UC-no-test-2**

**Warning**: _XXXXXX has 'XXXXXX' as its campus name in the institution field, but 'XXXXXX' is the city. Which is correct? Should it end with 'XXXXXX' instead?_

**Action**:

**UC-no-test-3**

**Warning**: _XXXXXX has 'XXXXXX' as its campus name in the institution field, but 'XXXXXX' is the city. Should the institution end with 'University of California, San Diego' instead?_

**Action**:

**institution-replacement-character-presence**

**Error**: _XXXXXX element contains the replacement character '�' which is unallowed._

**Action**:

**institution-street-presence**

**Warning**: _institution likely contains a street or building name, which is likely to be incorrect - XXXXXX._

**Action**:

**dept-replacement-character-presence**

**Error**: _XXXXXX element contains the replacement character '�' which is unallowed._

**Action**:

**medicine-abstract-conformance**

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

#### **non-ro-kwd-presence-test**

**Warning**: _kwd-group must contain at least one kwd_

**Action**:

#### **kwd-group-title**

**Error**: _kwd-group title is XXXXXX, which is wrong. It should be 'Research organism'._

**Action**:

#### **ro-kwd-presence-test**

**Warning**: _kwd-group must contain at least one kwd_

**Action**:

#### **kwd-upper-case**

**Error**: _research-organism kwd elements should start with an upper-case letter._

**Action**:

#### **kwd-child-test**

**Error**: _research-organism keywords cannot have child elements such as XXXXXX._

**Action**:XML structure checks

These checks relate to the XML structure of \[insert name of page]. ‌X or XXXXXX refers to quoted text which will change depending on the article. For more information about what the XML should look like, see below (include link to XML structure).

#### **auth-kwd-check-2**

**Warning**: _Keyword contains what looks like a broken unicode - XXXXXX._

**Action**:

**auth-kwd-check-3**

**Error**: _Keyword contains markup captured as text - XXXXXX. Please remove it and ensure that it is marked up properly (if necessary)._

**Action**:

#### **auth-kwd-check-4**

**Warning**: _Keyword contains brackets - XXXXXX. These should either simply be removed, or added as two keywords (with the brackets still removed)._

**Action**:

#### **auth-kwd-check-5**

**Warning**: _Keyword contains 'and' - XXXXXX. These should be split out into two keywords._

**Action**:

#### **auth-kwd-check-6**

**Warning**: _Keyword contains more than 4 words - XXXXXX. Should these be split out into separate keywords?_

**Action**:

#### **auth-kwd-check-7**

**Warning**: _Keyword contains an organism name which is not in italics - XXXXXX. Please italicise the organism name in the keyword._

**Action**:**covid-processing-instruction**

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

**disp-subj-test**

**Error**: _There must be one subj-group\[@subj-group-type='display-channel'] which is a child of article-categories. Currently there are XXXXXX._

**Action**:

**disp-subj-test2**

**Error**: _subj-group\[@subj-group-type='display-channel'] must contain only one subject. Currently there are XXXXXX._

**Action**:

**head-subj-test1**

**Error**: _article-categories must contain 0-2 subj-group\[@subj-group-type='heading'] elements. Currently there are XXXXXX._

**Action**:

**head-subj-test2**

**Error**: _article-categories must contain one and or two subj-group\[@subj-group-type='heading'] elements. Currently there are 0._

**Action**:

**head-subj-test3**

**Warning**: _article-categories does not contain a subj-group\[@subj-group-type='heading']. Is this correct?_

**Action**:

**head-subj-distinct-test**

**Error**: _Where there are two headings, the content of one must not match the content of the other (each heading should be unique)_

**Action**:

**disp-subj-value-test-1**

**Error**: _Content of the display channel should be one of the following: Research Article, Short Report, Tools and Resources, Research Advance, Registered Report, Replication Study, Research Communication, Feature Article, Insight, Editorial, Correction, Retraction . Currently it is XXXXXX._

**Action**:

**disp-subj-value-test-2**

**Error**: _Article is an @article-type="XXXXXX" but the display channel is XXXXXX. It should be one of 'Research Article', 'Short Report', 'Tools and Resources', 'Research Advance', 'Registered Report', 'Replication Study', 'Research Communication', or 'Scientific Correspondence' according to the article-type._

**Action**:

**disp-subj-value-test-3**

**Error**: _Article is an @article-type="XXXXXX" but the display channel is XXXXXX. It should be 'Insight' according to the article-type._

**Action**:

**disp-subj-value-test-4**

**Error**: _Article is an @article-type="XXXXXX" but the display channel is XXXXXX. It should be 'Editorial' according to the article-type._

**Action**:

**disp-subj-value-test-5**

**Error**: _Article is an @article-type="XXXXXX" but the display channel is XXXXXX. It should be 'Correction' according to the article-type._

**Action**:

**disp-subj-value-test-6**

**Error**: _Article is an @article-type="XXXXXX" but the display channel is XXXXXX. It should be 'Feature Article' according to the article-type._

**Action**:

**disp-subj-value-test-7**

**Error**: _Article is an @article-type="XXXXXX" but the display channel is XXXXXX. It should be 'Review Article' according to the article-type._

**Action**:

**disp-subj-value-test-8**

**Error**: _Article is an @article-type="XXXXXX" but the display channel is XXXXXX. It should be 'Retraction' according to the article-type._

**Action**:

**disp-subj-value-test-9**

**Error**: _Article is an @article-type="XXXXXX" but the display channel is XXXXXX. It should be 'Expression of Concern' according to the article-type._

**Action**:

**head-subj-MSA-test**

**Error**: _Content of the heading must match one of the MSAs._

**Action**:

**head-subj-test-1**

**Error**: _Each subj-group\[@subj-group-type='heading'] must contain one and only one subject. This one contains XXXXXX._

**Action**:

**head-subj-test2**

**Error**: _article-categories must contain one and or two subj-group\[@subj-group-type='heading'] elements. Currently there are 0._

**Action**:

**head-subj-test3**

**Warning**: _article-categories does not contain a subj-group\[@subj-group-type='heading']. Is this correct?_

**Action**:

**head-subj-distinct-test**

**Error**: _Where there are two headings, the content of one must not match the content of the other (each heading should be unique)_

**Action**:

****

**pre-sec-test-2**

**Warning**: _sec appears to contain no content. This cannot be correct. If the heading is correct and the content is missing, please ensure to query the authors asking for them to update accordingly._

**Action**:

**final-sec-test-2**

**Error**: _sec appears to contain no content. This cannot be correct._

**Action**:

**sec-test-5**

**Error**: _Level XXXXXX sections are not allowed. Please either make this a level 5 heading, or capture the title as a bolded paragraph in its parent section._

**Action**:

**sec-test-3**

**Warning**: _Section has a title 'XXXXXX'. Is it a duplicate of the data availability section (and therefore should be removed)?_

**Action**:

**sec-test-4**

**Warning**: _Section has a title 'XXXXXX'. Is it a duplicate of, or very similar to, the ethics statement (in the article details page)? If so, it should be removed. If not, then which statement is correct? The one in this section or 'XXXXXX'?_

**Action**:

**section-title-test-1**

**Warning**: _XXXXXX text begins a paragraph - XXXXXX - Should it be marked up as a section title (Heading level XXXXXX)?_

**Action**:

XML structure

```
Include an example of the xml with variations if appropriate. 
```

## Changelog

