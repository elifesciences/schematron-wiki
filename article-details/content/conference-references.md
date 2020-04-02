# Conference references

This is a page about entries for journals in the reference list. If you want to know about how to cite references in the text, please go _here_.

## Description

Conference references capture abstracts and posters presented at conferences, usually consisting of an author list, a year of publication, an article title and a conference name.

## Mandatory and optional elements

### Container elements

* `<ref id="bib24">`
* `<element-citation publication-type="confproc">`

### Required elements

* `<person-group person-group-type="author">` \[author list container\]
  * `<name>` \[individual author name container\]
    * `<surname>` \[author surname\]
    * `<given-names>` \[author initials\]
  * `<collab>` \[group author name\]
* `<year>` \[publication year; requires attribute iso-8601-date equal to contents of date\]
* `<article-title>` \[article title\]
* `<conf-name>` \[conference name\]

### Optional elements

* `<source>` \[source - title of proceedings if different to conference name\]
* \[location\]
* `<fpage>` and `<lpage>` OR `<elocation-id>` \[page range OR elocation ID for the article\]
* \[url\]
* `<pub-id pub-id-type="doi">` \[DOI for the article, if one exists\]
* `<pub-id pub-id-type="pmid">` \[PubMed ID for the article, if one exists\]

## Examples

XML for standard references of this style \(several variants\) and the corresponding display

```text
    <ref id="bib24">
        <element-citation publication-type="confproc">
            <person-group person-group-type="author">
                <name>
                    <surname>Jain</surname>
                    <given-names>BV</given-names>
                </name>
                <name>
                    <surname>Bollman</surname>
                    <given-names>B</given-names>
                </name>
                <name>
                    <surname>Richardson</surname>
                    <given-names>M</given-names>
                </name>
                <name>
                    <surname>Berger</surname>
                    <given-names>DR</given-names>
                </name>
                <name>
                    <surname>Helmstaedter</surname>
                    <given-names>MN</given-names>
                </name>
                <name>
                    <surname>Briggman</surname>
                    <given-names>KL</given-names>
                </name>
                <name>
                    <surname>Denk</surname>
                    <given-names>W</given-names>
                </name>
                <name>
                    <surname>Bowden</surname>
                    <given-names>JB</given-names>
                </name>
                <name>
                    <surname>Mendenhall</surname>
                    <given-names>JM</given-names>
                </name>
                <name>
                    <surname>Abraham</surname>
                    <given-names>WC</given-names>
                </name>
                <name>
                    <surname>Harris</surname>
                    <given-names>KM</given-names>
                </name>
                <name>
                    <surname>Kasthuri</surname>
                    <given-names>N</given-names>
                </name>
                <name>
                    <surname>Hayworth</surname>
                    <given-names>KJ</given-names>
                </name>
                <name>
                    <surname>Schalek</surname>
                    <given-names>R</given-names>
                </name>
                <name>
                    <surname>Tapia</surname>
                    <given-names>JC</given-names>
                </name>
                <name>
                    <surname>Lichtman</surname>
                    <given-names>JW</given-names>
                </name>
                <name>
                    <surname>Seung</surname>
                    <given-names>HS</given-names>
                </name>
            </person-group>
            <year iso-8601-date="2010">2010</year>
            <article-title>Boundary learning by optimization with topological
                constraints</article-title>
            <conf-name>IEEE Conference on Computer Vision and Pattern Recognition (CVPR), 2010</conf-name>
        </element-citation>
    </ref>
```

## Troubleshooting

List of errors and warnings that can occur, with guidance on how to solve each problem or on when it is OK to let the warning go by and not change anything. Plus cases like spotting unexpanded journal names, title and source running together, problems with group authors etc.

## Further reading

Links to related pages that might be useful \(internal wiki pages and external resources e.g. crossref, pubmed etc.\)

