# Pre-print references

This is a page about entries for pre-prints in the reference list. If you want to know about how to cite references in the text, please go _here_.

## Description

Pre-print references capture articles which have been uploaded to a pre-print server, usually consisting of an author list, a year of publication, an article title, a pre-print server name, a volume and DOI or URL.

## Mandatory and optional elements

### Container elements

* `<ref id="bib3">`
* `<element-citation publication-type="preprint">`

### Required elements

* `<person-group person-group-type="author">` \[author list container\]
  * `<name>` \[individual author name container\]
    * `<surname>` \[author surname\]
    * `<given-names>` \[author initials\]
  * `<collab>` \[group author name\]
* `<year>` \[publication year; requires attribute iso-8601-date equal to contents of date\]
* `<article-title>` \[article title\]
* `<source>` \[prepint server name\]
* `<pub-id pub-id-type="doi">` \[DOI for the article, if one exists\] OR \[URL for the article, if one exists\]

### Optional elements

## Examples

XML for standard references of this style \(several variants\) and the corresponding display

```text
    <ref id="bib3">
        <element-citation publication-type="preprint">
            <person-group person-group-type="author">
                <name>
                    <surname>Bloss</surname>
                    <given-names>CS</given-names>
                </name>
                <name>
                    <surname>Wineinger</surname>
                    <given-names>NE</given-names>
                </name>
                <name>
                    <surname>Peters</surname>
                    <given-names>M</given-names>
                </name>
                <name>
                    <surname>Boeldt</surname>
                    <given-names>DL</given-names>
                </name>
                <name>
                    <surname>Ariniello</surname>
                    <given-names>L</given-names>
                </name>
                <name>
                    <surname>Kim</surname>
                    <given-names>JL</given-names>
                </name>
                <name>
                    <surname>Judy Sheard</surname>
                    <given-names>J</given-names>
                </name>
                <name>
                    <surname>Komatireddy</surname>
                    <given-names>R</given-names>
                </name>
                <name>
                    <surname>Barrett</surname>
                    <given-names>P</given-names>
                </name>
                <name>
                    <surname>Topol</surname>
                    <given-names>EJ</given-names>
                </name>
            </person-group>
            <year iso-8601-date="2016">2016</year>
            <article-title>A prospective randomized trial examining health care utilization in individuals using multiple 
                smartphone-enabled biosensors</article-title>
            <source>bioRxiv</source>
            <pub-id pub-id-type="doi">10.1101/029983</pub-id>
        </element-citation>
    </ref>
```

## Troubleshooting

List of errors and warnings that can occur, with guidance on how to solve each problem or on when it is OK to let the warning go by and not change anything. Plus cases like spotting title and source running together, problems with group authors etc.

## Further reading

Links to related pages that might be useful \(internal wiki pages and external resources e.g. bioRxiv, pubmed etc.\)

