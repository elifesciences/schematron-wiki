# Country names

This is a page about country names. If you want to know about affiliations instead, please go [here](broken-reference).

## Description

Country names are used in a number of ways in an article including affiliations, references and author bios. It is important to check these are spelled correctly with the appropriate capitalisation.

## Structure

| Component     | Contains                   | XML             | Required? |
| ------------- | -------------------------- | --------------- | :-------: |
| `<countries>` | 1 or more `<country>` tags | `<xml-tagging>` |    Yes    |

## Examples

```markup
<countries>
    <country country="UG">Uganda</country>
    <country country="UA">Ukraine</country>
    <country country="AE">United Arab Emirates</country>
    <country country="UM">United States Minor Outlying Islands</country>
    <country country="UY">Uruguay</country>
</countries>
```

## Guidance

### General troubleshooting

Ensure to check for correct capitalisation, states, counties and general spelling errors.

### Schematron

List of errors and warnings that can occur, with guidance on how to solve each problem or on when it is OK to let the warning go by and not change anything.

#### united-states-test-1

**Rule:** 'United States of America' is not allowed it. This should be 'United States'.

**Action:** Change the spelling to United States.

#### united-states-test-2

**Rule:** 'USA' is not allowed it. This should be 'United States'.

**Action:** Change the spelling to United States.

#### united-kingdom-test-2

**Rule:** 'UK' is not allowed it. This should be 'United Kingdom'

**Action:** Change the spelling to United Kingdom.

#### gen-country-test

**Rule:** affiliation contains a country which is not in the allowed list - ''. For a list of allowed countries, refer to [https://github.com/elifesciences/eLife-JATS-schematron/blob/master/src/countries.xml](https://github.com/elifesciences/eLife-JATS-schematron/blob/master/src/countries.xml).

**Action:** Check the list and change as appropriate. If required, query this change with the author.

## Further reading and links

For the full list of country names - [https://github.com/elifesciences/eLife-JATS-schematron/blob/master/src/countries.xml](broken-reference).
