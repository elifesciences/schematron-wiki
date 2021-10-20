---
description: >-
  This page describes the house style applied to article content by production.
  It differs from website and communication house style as it is specific to the
  research articles.
---

# Article content house style

{% hint style="info" %}
&#x20;For changelog, click [here](untitled-4.md#changelog).&#x20;
{% endhint %}

## What is article content house style?

The production vendors work with a lot of different clients and most of them have their own house style. Therefore, the vendor requests each of their publishers provide their house style so the vendor can automate checks and changes and their copy editors can check anything not automatable. As an online-only journal, we thought each article should be allowed to be a unit in-of itself and for the author to not be subject to arbitrary changes to their content dictated by the publisher (in a printed edition it's understandable that publishers would want a consistent feel across the publication). However, authors are inconsistent within their own article and it is hard for vendors to spot this if there is not a set of rules to follow. Therefore, we created a house style as guidance. This is also a useful reference point if a copy editor applies another publisher's rules to our content so we can feedback if inappropriate.

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

#### Author keywords and research organisms

See [Keywords and research organisms](../article-details/content/keywords.md).

#### Major subject areas



#### Headings

* eLife allows 4 levels of headings
*

#### General content

* Hyphenation - rule is to leave as author provided as long as it's consistent within an article
* Dashes - use for compound words, eg user-friendly, six-year-old
* en-rules - use for words that carry equal weight (e.g. Mann–Whitney), relationship, and interactions (e.g. Plant–host interactions); ranges (e.g. 5–6); new clause in a sentence (space either side of the en-rule)
* Footnote designators - \*,†, ‡, §,#, ¶,\*\*,††, ‡‡,§§,##,¶¶ Order: Designated footnotes, p value footnotes (\*p<0.05; \*\*p<0.01; \*\*\*p<0.001), undesignated footnotes and abbreviations last. All abbreviations used in tables must be defined in footnotes (unless on list of not required definition).
* Sereal commas (Oxford comma), follow the author as long as it's consistent
* Capitalisation
*
  1. After a colon - not allowed (exceptions listed above for titles)
  2. Do not capitalise w in Western blot, but do for Southern blot
* &#x20;Italicisation - follow author, except

1. Genus and species shuold be italicised. Capital with full stop, italics, e.g. E. coli. Genus should be provided on first use in main text and thereafter abbreviated to first letter and full stop. If only Genus is provided, still use italics \[this is applicable for Table and Figure captions). If both genus and species are given, use only abbreviated genus names with species in tables and figures (exceptions: For S. Typhi, S. Typhimurium, Drosophila, and Arabidopsis add an author query as to whether some or all instances should be Roman or italicised, but we should not autocorrect to italic (since on some occasions the change will be wrong - genus or species).
2. Do not italicise latin terms (eg in vitro, in vivo)

* Language - follow the author, as long as consistent. \[In an article, if the author used US spelling in majority through out the article, but for one of the word if he has used UK spelling in majority, please change the UK spelling to US spelling for that particular word, as the whole article consistency is US.]
* Quotation marks - single for emphasis, double for direct quote
* Abbreviations - Lower case with full stops, (e.g., i.e.). Exception: etc (e.g., i.e. and etc only allowed in parentheses; in main text must spell out (for example, that is, and so on)) Do not automatically change that is to i.e. in parentheses during preediting. Change italic (e.g., i.e.,) to roman. Define, with abbreviation in brackets. Redefine if abbreviation used in abstract, figure, tables, etc (ie anything with it's own DOI)

1. First use Define, with abbreviation in brackets. Redefine if abbreviation used in abstract, figure, tables, etc (ie anything with it’s own DOI) In Headings Allowed At the beginning of sentence Allowed In Figures Allowed. Define in legend. Redefine previously used abbreviations in legends. e.g., i.e. and etc allowed in abbreviated form in legends In Table Allowed but define in footnotes Commonly used abbreviations No defined list, but standard STM abbreviations allowed with no definition Latin abbreviations Lower case with full stops, (e.g., i.e.). Exception: etc (e.g., i.e. and etc only allowed in parentheses; in main text must spell out (for example, that is, and so on)). Do not automatically change that is to i.e. in parentheses during preediting Chemical compounds As author provides Concentrations As author provides Organization Names Follow author
2.

*
* Parentheses - round with square if within the round brackets (\[])
* Time and date - UK version 19 August 1995; US version August 19, 1995. To be used according to style of article – US or UK English. Not '97
*



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

#### **surname-test-3**

**Error**: _surname must not contain any formatting (bold, or italic emphasis, or smallcaps, superscript or subscript)._

**Action**: Author names are not allowed to contain certain formatting (bold, italics, smallcaps or super- or subscript), which is present. Please remove this.

#### **surname-test-4**

**Error**: _surname should usually only contain letters, spaces, or hyphens. XXXXXX contains other characters._

**Action**: This test indicates there are characters present in the surname field that are not allowed and should be removed. For example, there is a full stop or a comma.

#### **surname-test-5**

**Warning**: _surname doesn't begin with a capital letter - XXXXXX. Is this correct?_

**Action**: Not all surnames start with a capital letter, but this test indicates a surname that does not and needs checking against the original submission to ensure this is intentional.

#### **surname-test-6**

**Error**: _surname starts with a space, which cannot be correct - 'XXXXXX'._

**Action**: A space as the start of the surname field is not allowed and so must be removed.

#### **surname-test-7**

**Error**: _surname ends with a space, which cannot be correct - 'XXXXXX'._

**Action**: A space as the end of the surname field is not allowed and so must be removed.

#### **surname-test-8**

**Warning**: _surname looks to start with initial - 'XXXXXX'. Should 'XXXXXX' be placed in the given-names field?_

**Action**: During conversion it is possible for middle initials to be mistagged in the surname field. If this has happened remove the initial(s) and add to the given-name field. If you are unsure ask eLife staff.

#### **surname-test-9**

**Warning**: _surname contains brackets - 'XXXXXX'. Should the brakceted text be placed in the given-names field instead?_

**Action**: Authors can supply During conversion it is possible for middle initials to be mistagged in the surname field. If this has happened remove the initial(s) and add to the given-name field. If you are unsure ask eLife staff.

#### **given-names-test-4**

**Error**: _given-names must not contain any formatting (bold, or italic emphasis, or smallcaps, superscript or subscript) - 'XXXXXX'._

**Action**: Author given-names are not allowed to contain certain formatting (bold, italics, smallcaps or super or- subscript), which is present. Please remove this.

#### **given-names-test-5**

**Error**: _given-names should usually only contain letters, spaces, or hyphens. XXXXXX contains other characters._

**Action**: This test indicates there are characters present in the given-name field that are not allowed and should be removed. For example, there is a full stop or a comma.

#### **given-names-test-6**

**Warning**: _given-names doesn't begin with a capital letter - 'XXXXXX'. Is this correct?_

**Action**: Not all given-names start with a capital letter, but this test indicates a given-name that does not and needs checking against the original submission to ensure this is intentional.

#### **given-names-test-7**

**Error**: _given-names contains initialised full stop(s) which is incorrect - XXXXXX_

**Action**: This test indicates the given-names could be initials only and the author has used fullstops to differentiate the letters. This is not allowed and the full stops should be removed.

#### **given-names-test-8**

**Error**: _given-names starts with a space, which cannot be correct - 'XXXXXX'._

**Action**: A space at the start of the given-name field is not allowed and so must be removed.

#### **given-names-test-9**

**Error**: _given-names ends with a space, which cannot be correct - 'XXXXXX'._

**Action**: A space at the end of the given-name field is not allowed and so must be removed.

#### **given-names-test-10**

**Warning**: _given-names ends with de, der, or den - should this be captured as the beginning of the surname instead? - 'XXXXXX'._

**Action**: de, der and den are usually prefixes to surnames and may have been mistagged as a given-name. Check the original submission or with eLife staff as to whether this should be moved to the surname field.

#### **given-names-test-11**

**Warning**: _given-names ends with ' van' - should this be captured as the beginning of the surname instead? - 'XXXXXX'._

**Action**: van is usually a prefix to a surname and may have been mistagged as a given-name. Check the original submission or with eLife staff as to whether this should be moved to the surname field.

#### **given-names-test-12**

**Warning**: _given-names ends with ' von' - should this be captured as the beginning of the surname instead? - 'XXXXXX'._

**Action**: von is usually a prefix to a surname and may have been mistagged as a given-name. Check the original submission or with eLife staff as to whether this should be moved to the surname field.

#### **given-names-test-13**

**Warning**: _given-names ends with ' el' - should this be captured as the beginning of the surname instead? - 'XXXXXX'._

**Action**: el is usually a prefix to a surname and may have been mistagged as a given-name. Check the original submission or with eLife staff as to whether this should be moved to the surname field.

#### **given-names-test-14**

**Warning**: _given-names ends with te, ter, or ten - should this be captured as the beginning of the surname instead? - 'XXXXXX'._

**Action**: te, ter and ten are usually prefixes to surnames and may have been mistagged as a given-name. Check the original submission or with eLife staff as to whether this should be moved to the surname field.

#### **given-names-test-15**

**Info**: _given-names contains initials with spaces. Ensure that the space(s) is removed between initials - 'XXXXXX'._

**Action**: This test indicates the given-names could be initials with spaces in between each initial, which is not allowed. Remove any spaces between letters that are clearly author initials.

#### **pre-given-names-test-16**

**Warning**: _given-names contains brackets - 'XXXXXX'. This will be flagged by Crossref (although will not actually cause any significant problems). Please add the following author query: Please confirm whether you are happy to remove the brackets around (one of) your given names - 'XXXXXX'. This will cause minor issues at Crossref, although they can be retained if desired._

**Action**: given-names contains brackets - 'XXXXXX'. This will be flagged by Crossref (although will not actually cause any significant problems). Please add the following author query: Please confirm whether you are happy to remove the brackets around (one of) your given names - 'XXXXXX'. This will cause minor issues at Crossref, although they can be retained if desired

#### **final-given-names-test-16**

**Warning**: _given-names contains brackets - 'XXXXXX'. This will be flagged by Crossref (although will not actually cause any significant problems)._

**Action**: given-names contains brackets - 'XXXXXX'. This will be flagged by Crossref (although will not actually cause any significant problems). Check whether the following author query was added before the article went to the author. Please confirm whether you are happy to remove the brackets around (one of) your given names - 'XXXXXX'. If the author was not asked, ask the author. This will cause minor issues at Crossref, although they can be retained if desired.&#x20;

#### **suffix-assert**

**Error**: _suffix can only have one of these values - 'Jr', 'Jnr', 'Sr', 'Snr', 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX', 'X'._

**Action**: The list of allowed suffixes is 'Jr', 'Jnr', 'Sr', 'Snr', 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX', 'X'. Any other suffixes must be removed. Check what has been tagged as a suffix and either retag as appropriate or let the author know it will be removed.

#### **contrib-test-1**

**Error**: _Authors should have at least 1 link to an affiliation. XXXXXX does not._

**Action**: This test indicates there is an author that does not have a linked affiliation in the XML. This is either an error between the interface and the XML, which will require the typesetter to fix, or an author does not have an affiliation associated with them. If it is the latter, check the submission on EJP and add the affiliation via the interface.

#### **contrib-test-5**

**Warning**: _Group author members should very likely have an affiliation. XXXXXX does not. Is this OK?_

**Action**: It is not required for a group author to have an affiliation, but this test indicates there is not one. Check the original submission to ensure this has not dropped off during processing.

#### **contrib-test-2**

**Warning**: _The XXXXXX doesn't have an affiliation - XXXXXX - is this correct?_

**Action**: This indicates an author or group author does not have an affiliation. Check the original submission to ensure this has not dropped off during processing.

#### **contrib-test-4**

**Error**: _The XXXXXX (XXXXXX) must have an affiliation. Exeter: If it is not present in the eJP ouput, please check with eLife production. Production: Please check eJP or ask Editorial for the correct affiliation. - is this correct?_

**Action**: This indicates an author does not have an affiliation. Check the original submission to ensure this has not dropped off during processing. If it is not present there, consult eLife staff.

#### **contrib-test-3**

**Error**: _author contains both a child name and a child collab. This is not correct._

**Action**: An author tag can only contain given-name and surname OR collab. If both are present there is an error in the XML and this needs to be fixed. Check the original submission and either delete the colab tagging or author tagging and move the contents to the right place.

#### **name-test**

**Error**: _Contrib contains no collab but has XXXXXX name(s). This is not correct._

**Action**:

#### **contrib-email-1**

**Error**: _Corresponding authors must have an email._

**Action**: All corresponding authors must have an email address according to eLife style. If an author is tagged as a corresponding author check whether this is correct. If it is either add the email address or ask the author for the email address. If it is wrong unclick the corresponding author box.

#### **contrib-email-2**

**Error**: _Non-corresponding authors must not have an email._

**Action**: Only corresponding authors can have an email address according to eLife style. If an author is not tagged as a corresponding author but has an email associated with them, check whether this is correct. If it is click the corresponding author box, if it is not, remove the email address.

#### **pre-auth-aff-test-1**

**Warning**: _Author affiliations must have a country. This one does not - XXXXXX. Please query with the authors._

**Action**: All affiliations must contain a country. If it is missing it needs to be added. Ask the authors to provide it.

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

#### ****

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

**table-fn-label-test-1**

**Warning**: _Footnote starts with what might be a label which is not in line with house style - XXXXXX. If it is a label, then it should changed to one of the allowed symbols, so that the order of labels in the footnotes follows this sequence \*, †, ‡, §, ¶, \*\*, ††, ‡‡, §§, ¶¶, etc._

**Action**:

**pre-in-vitro-italic-test**

**Error**: _XXXXXX element contains 'in vitro' - this should not be in italics (eLife house style)._

**Action**:

**pre-in-vivo-italic-test**

**Error**: _XXXXXX element contains 'in vivo' - this should not be in italics (eLife house style)._

**Action**:

**pre-ex-vivo-italic-test**

**Error**: _XXXXXX element contains 'ex vivo' - this should not be in italics (eLife house style)._

**Action**:

**pre-a-priori-italic-test**

**Error**: _XXXXXX element contains 'a priori' - this should not be in italics (eLife house style)._

**Action**:

**pre-a-posteriori-italic-test**

**Error**: _XXXXXX element contains 'a posteriori' - this should not be in italics (eLife house style)._

**Action**:

**pre-de-novo-italic-test**

**Error**: _XXXXXX element contains 'de novo' - this should not be in italics (eLife house style)._

**Action**:

**pre-in-utero-italic-test**

**Error**: _XXXXXX element contains 'in utero' - this should not be in italics (eLife house style)._

**Action**:

**pre-in-natura-italic-test**

**Error**: _XXXXXX element contains 'in natura' - this should not be in italics (eLife house style)._

**Action**:

**pre-in-situ-italic-test**

**Error**: _XXXXXX element contains 'in situ' - this should not be in italics (eLife house style)._

**Action**:

**pre-in-planta-italic-test**

**Error**: _XXXXXX element contains 'in planta' - this should not be in italics (eLife house style)._

**Action**:

**pre-rete-mirabile-italic-test**

**Error**: _XXXXXX element contains 'rete mirabile' - this should not be in italics (eLife house style)._

**Action**:

**pre-nomen-novum-italic-test**

**Error**: _XXXXXX element contains 'nomen novum' - this should not be in italics (eLife house style)._

**Action**:

**pre-sensu-italic-test**

**Error**: _XXXXXX element contains 'sensu' - this should not be in italics (eLife house style)._

**Action**:

**pre-ad-libitum-italic-test**

**Error**: _XXXXXX element contains 'ad libitum' - this should not be in italics (eLife house style)._

**Action**:

**pre-in-ovo-italic-test**

**Error**: _XXXXXX element contains 'In Ovo' - this should not be in italics (eLife house style)._

**Action**:

**latin-italic-info**

**Warning**: _Latin terms are not consistenly either roman or italic. There are XXXXXX roman terms which is more common, and XXXXXX italic term(s). The following terms should be unitalicised: XXXXXX._

**Action**:

**latin-roman-info**

**Warning**: _Latin terms are not consistenly either roman or italic. There are XXXXXX italic terms which is more common, and XXXXXX roman term(s). The following terms should be italicised: XXXXXX._

**Action**:

**latin-conformance-info**

**Warning**: _Latin terms are not consistenly either roman or italic. There are an equal number of italic (XXXXXX) and roman (XXXXXX) terms. The following terms are italicised: XXXXXX. The following terms are unitalicised: XXXXXX._

**Action**:

### XML structure

#### **author-xref-test-1**

**Error**: _Affiliation footnote links (xrefs) from authors must be the first type of link. For XXXXXX, their affiliation link - XXXXXX - appears after another non-affiliation link, when it should appear before it._

**Action**: In the structure of the XML the first footnote link from an author must be to their affiliation. This test indicates it is another link that is first. The typesetter will need to fix this.

#### **author-xref-test-2**

**Error**: _Equal contribution links from authors must appear after affiliation footnote links. For XXXXXX, their equal contribution link (to XXXXXX) appears after another non-affiliation link, when it should appear before it._

**Action**: In the structure of the XML the first footnote link from an author must be to their affiliation. This test indicates an equal contribution link is first, which is wrong. The typesetter will need to fix this.

#### **author-xref-test-3**

**Error**: _Present address type footnote links from authors must appear after affiliation and equal contribution links (if there is one). For XXXXXX, their present address link (to XXXXXX) appears before an affiliation link or equal contribution link._

**Action**: In the structure of the XML there is an order for the footnote linking from an author. The first must be to their affiliation. If there are equal contributions this must be next. This test indicates a present address link proceeds an affiliation +/- equal contribution link, which is wrong. The typesetter will need to fix this.

#### **author-xref-test-4**

**Error**: _Author footnote links to datasets are not needed. Please remove this -_

**Action**: eLife used to link datasets to authors if the article authors were listed as authors of a dataset. This is no longer done, so this test indicates there has been a regression in the code and this link has reappeared, which is wrong. The typesetter will need to fix this.

#### **surname-test-1**

**Error**: _Each name must contain only one surname._

**Action**: This test indicates there are two \<surname> tags for a single author. This is wrong, there should only be one. Check the original content on EJP as it is likely the author name has been miss tagged somehow. Delete the content on Kriya and re-add it correctly. If this does not fix the XML  the typesetter will need to fix this.

#### **given-names-test-1**

**Error**: _Each name must contain only one given-names element._

**Action**: This test indicates there are two \<given-name> tags for a single author. This is wrong, there should only be one. Check the original content on EJP as it is likely the author name has been miss tagged somehow. Delete the content on Kriya and re-add it correctly. If this does not fix the XML  the typesetter will need to fix this.

#### **given-names-test-2**

**Warning**: _This name - XXXXXX - does not contain a given-name. Please check with eLife staff that this is correct._

**Action**: This test indicates there is no \<given-name> tag for a single author. This is allowed, but very rare. Check the original content on EJP and consult eLife staff if it is missing from EJP too.

#### **given-names-test-3**

**Error**: _given-names must not be empty._

**Action**: This test indicates there is a \<given-name> tag for a single author but it is empty. This is not allowed. very rare. Check the original content on EJP and consult eLife staff if there is no given-name. If there is none, this field should be removed from the XML.

#### **surname-test-2**

**Error**: _surname must not be empty._

**Action**: This test indicates there is no \<surname> tag for a single author. This is not allowed. Check the original content on EJP - it is possible an author can have no \<given-name> and this has been tagged incorrectly as a \<given-name> rather than \<surname>.

#### **suffix-child-test**

**Error**: _suffix cannot have any child elements - XXXXXX_

**Action**: This test indicates something has gone wrong with the XML tagging and the suffix tag contains other tags within it, which is not allowed. The typesetter will have to fix this.

#### **disallowed-child-assert**

**Error**: _XXXXXX is not allowed as a child of name._

**Action**: This test indicates something has gone wrong with the XML tagging and the suffix tag contains other tags within it, which is not allowed. The typesetter will have to fix this.

****

```
Include an example of the xml with variations if appropriate. 
```

## Changelog

