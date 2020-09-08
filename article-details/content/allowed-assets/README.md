---
description: >-
  A brief guide to the various assets allowed in eLife articles and their
  approved labels.
---

# Article assets

## What is an asset?

The term 'asset' refers to a figure, video, table or file associated with an article. These items are used to enhance the text of the article, providing illustration, raw data, or the means to replicate the research.

eLife is relatively unique in allowing multiple supplements to 'top level' assets in order to provide more information to a reader. For example, a figure may be supplemented with additional sub-figures \(figure supplements\), source data files, and/or videos.

This page will document the current allowed assets for eLife articles and the file naming conventions for each type.

## Allowed assets

### Main text assets

The following assets appear within the main text of an article. Top-level assets should be placed after the paragraph in which their first citation in the text appears \(unless there is a specific layout reason not to do this e.g. it would disrupt the flow of a mathematical derivation\). Child-assets \(e.g. figure supplements\) are grouped with their parent and have no relation to their in-text citations. Anything marked 'inline' should appear at the point it is placed in the authors' submitted article file.

| Asset label | XML ID | File name |
| :--- | :--- | :--- |
| **Figure 1.** | fig1 | elife-12345-fig1 |
| **Figure 1—source code 1.** | fig1scode1 | elife-12345-fig1-code1 |
| **Figure 1—source data 1.** | fig1sdata1 | elife-12345-fig1-data1 |
| **Figure 1—video 1.** | fig1video1 | elife-12345-fig1-video1 |
| **Figure 1—animation 1.** | fig1video1 | elife-12345-fig1video1 |
| **Figure 1—figure supplement 1.** | fig1s1 | elife-12345-fig1-figsupp1 |
| **Figure 1—figure supplement 1—source code 1.** | fig1s1scode1 | elife-12345-fig1-figsupp1-code1 |
| **Figure 1—figure supplement 1—source data 1.** | fig1s1sdata1 | elife-12345-fig1-figsupp1-data1 |
| **Chemical structure 1.** \[inline\] | chem1 | elife-12345-chem1 |
| **Scheme 1.** \[inline\] | scheme1 | elife-12345-scheme1 |
| \[Illustration, unlabelled\] | fig1 | elife-12345-fig1 |
| **Table 1.** | table1 |  |
| **Table 1—source code 1.** | table1scode1 | elife-12345-table1-code1 |
| **Table 1—source data 1.** | table1sdata1 | elife-12345-table1-data1 |
| **Key resources table** \[inline\] | keyresource |  |
| Unlabelled table \[inline\] | inlinetable1 |  |
| **Video 1.** | video1 | elife-12345-video1 |
| **Video 1—source code 1.** | video1scode1 | elife-12345-video1-code1 |
| **Video 1—source data 1.** | video1sdata1 | elife-12345-video1-data1 |
| **Animation 1.** | video1 | elife-12345-video1 |
| **Animation 1—source code 1.** | video1scode1 | elife-12345-video1-code1 |
| **Animation 1—source data 1.** | video1sdata1 | elife-12345-video1-data1 |

### Additional information assets

The following assets appear in the 'Additional information' section at the back of an article \(within the `<back>` element\). These are broadly referred to as 'supplementary files', though only one of them has this label.

| Asset label | XML ID | File name |
| :--- | :--- | :--- |
| **Supplementary file 1.** | supp1 | elife-12345-supp1 |
| **Audio file 1.** | supp1 | elife-12345-supp1 |
| **Source code 1.** | scode1 | elife-12345-code1 |
| **Source data 1.** | sdata1 | elife-12345-data1 |
| **Reporting standard 1.** | repstand1 | elife-12345-repstand1 |
| **Transparent reporting file** | transrepform | elife-12345-transrepform |

### Appendix assets

The following assets appear in appendices. They follow the same pattern as main-text assets, but prefixed with the appendix label \(e.g. Appendix 1, Appendix 2 etc\).

| Asset label | XML ID | File name |
| :--- | :--- | :--- |
| **Appendix 1—figure 1.** \[inline\] | app1fig1 | elife-12345-app1-fig1 |
| **Appendix 1—figure 1—source code 1.** | app1fig1scode1 | elife-12345-app1-fig1-code1 |
| **Appendix 1—figure 1—source data 1.** | app1fig1sdata1 | elife-12345-app1-fig1-data1 |
| **Appendix 1—figure 1—video 1.** | app1fig1video1 | elife-12345-app1-fig1-video1 |
| **Appendix 1—figure 1—figure supplement 1.** | app1fig1s1 | elife-12345-app1-fig1-figsupp1 |
| **Appendix 1—figure 1—figure supplement 1—source code 1.** | app1fig1s1scode1 | elife-12345-app1-fig1-figsupp1-code1 |
| **Appendix 1—figure 1—figure supplement 1—source data 1.** | app1fig1s1sdata1 | elife-12345-app1-fig1-figsupp1-data1 |
| **Appendix 1—table 1.** \[inline\] | app1table1 |  |
| **Appendix 1—table 1—source code 1.** | app1table1scode1 | elife-12345-app1-table1-code1 |
| **Appendix 1—table 1—source data 1.** | app1table1sdata1 | elife-12345-app1-table1-data1 |
| Unlabelled table \[inline\] | inlinetable1 |  |
| **Appendix 1—video 1.** \[inline\] | app1video1 | elife-12345-app1-video1 |
| **Appendix 1—video 1—source code 1.** | app1video1scode1 | elife-12345-app1-video1-code1 |
| **Appendix 1—video 1—source data 1.** | app1video1sdata1 | elife-12345-app1-video1-data1 |
| **Appendix 1—chemical structure 1.** \[inline\] | app1chem1 | elife-12345-app1-chem1 |
| **Appendix 1—scheme 1.** \[inline\] | app1scheme1 | elife-12345-app1-scheme1 |

### Box assets

The following assets are allowed within boxes. These will always need to be positioned inline as they need to be contained within their parent box.

| Asset label | XML ID | File name |
| :--- | :--- | :--- |
| **Box 1—figure 1.** \[inline\] | box1fig1 | elife-12345-box1-fig1 |
| **Box 1—figure 1—source code 1.** | box1fig1scode1 | elife-12345-box1-fig1-code1 |
| **Box 1—figure 1—source data 1.** | box1fig1sdata1 | elife-12345-box1-fig1-data1 |
| **Box 1—table 1.** \[inline\] | box1table1 |  |
| **Box 1—table 1—source code 1.** | box1table1scode1 | elife-12345-box1-table1-code1 |
| **Box 1—table 1—source data 1.** | box1table1sdata1 | elife-12345-box1-table1-data1 |
| **Box 1—video 1.** \[inline\] | box1video1 | elife-12345-box1-video1 |
| **Box 1—video 1—source code 1.** | box1video1scode1 | elife-12345-box1-video1-code1 |
| **Box 1—video 1—source data 1.** | box1video1sdata1 | elife-12345-box1-video1-data1 |

### Sub-article assets

#### Decision letter

The following assets are allowed in decision letters.

| Asset label | XML ID | File name |
| :--- | :--- | :--- |
| **Decision letter image 1.** | sa1fig1 | elife-12345-sa1-fig1 |
| **Decision letter table 1.** | sa1table1 |  |
| **Decision letter video 1.** | sa1video1 | elife-12345-sa1-video1 |

#### Author response

The following assets are allowed in author responses.

| Asset label | XML ID | File name |
| :--- | :--- | :--- |
| **Author response image 1.** | sa2fig1 | elife-12345-sa2-fig1 |
| **Author response table 1.** | sa2table1 |  |
| **Author response video 1.** | sa2video1 | elife-12345-sa2-video1 |

## XML structure

Figure with source data and figure supplement.

```markup
<fig-group>
    <fig id="fig1" position="float">
        <label>Figure 1.</label>
        <caption>
            <title>Patterning model and HetL/HetR interaction.</title>
            <p>(<bold>A</bold>) Self-organized patterning in <italic>Nostoc</italic> 
            Heterocysts are presented in green. Vegetative cells in brown. The width
            of the shade around the cells represents the strength of the activation/
            inhibition . . .</p>
            <p>
                <supplementary-material id="fig1sdata1">
                    <label>Figure 1—source data 1.</label>
                    <caption>
                        <title>Source data to <xref ref-type="fig" rid="fig1">Figure 1B</xref>.</title>
                        <p>(upper) Bacterial two hybrid assay between HetL and HetR. 
                        BTH101 strain was transformed with pKT25-HetL and pUT18C-HetR,
                         β-galactosidase activities were measured.</p>
                     </caption>
                     <media mime-subtype="xlsx" mimetype="application"
                        xlink:href="elife-59190-fig1-data1-v2.xlsx"/>
                </supplementary-material>
            </p>
        </caption>
        <graphic mime-subtype="tiff" mimetype="image"
            xlink:href="elife-59190-fig1-v2.tif"/>
    </fig>
    <fig id="fig1s1" position="float" specific-use="child-fig">
        <label>Figure 1—figure supplement 1.</label>
        <caption>
            <title>Purified HetL and HetR proteins.</title>
            <p>(<italic>left</italic>) 1 µg purified proteins migrated in 4–20% gel
            (Nusep) colored by instant blue. (<italic>right</italic>) Anti-Histidine
            immunoblot analysis of 1 µg purified proteins.</p>
        </caption>
        <graphic mime-subtype="tiff" mimetype="image"
            xlink:href="elife-59190-fig1-figsupp1-v2.tif"/>
    </fig>
</fig-group>
```

Table with source data.

```markup
<table-wrap id="table1" position="float">
    <label>Table 1.</label>
    <caption>
        <title>Percentage of heterocysts formed by different strains used in this
        study after combined nitrogen starvation.</title>
        <p>The number of the filaments analyzed was 60–100 in average.</p>
        <p>
            <supplementary-material id="table1sdata1">
                <label>Table 1—source data 1.</label>
                <caption>
                    <title>Raw data for heterocyst intervals and percentages.</title>
                </caption>
                <media mime-subtype="xlsx" mimetype="application"
                    xlink:href="elife-59190-table1-data1-v2.xlsx"/>
            </supplementary-material>
        </p>
    </caption>
    <table frame="hsides" rules="groups">
        <thead>
            <tr>
                <th valign="top">Strain and condition</th>
                <th valign="top">% of heterocysts, 24H after <break/>nitrogen starvation</th>
                <th valign="top">Mean interval between<break/>two heterocysts</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td valign="top">Wild type</td>
                <td valign="top">9.1 ± 1.6</td>
                <td valign="top">10.7 ± 1.3</td>
            </tr>
            <tr>
                <td valign="top">WT/<italic>PpetE-patS</italic></td>
                <td valign="top">0</td>
                <td valign="top">ND</td>
            </tr>
            <tr>
                <td valign="top">WT and PatS-5 addition</td>
                <td valign="top">0</td>
                <td valign="top">ND</td>
            </tr>
            <tr>
                <td valign="top">WT/<italic>PpetE-hetL</italic>[D151A]</td>
                <td valign="top">10.5 ± 0.6</td>
                <td valign="top">9.1 ± 1.6</td>
            </tr>
            <tr>
                <td valign="top">WT/<italic>PpetE-patS PpetE-hetL</italic></td>
                <td valign="top">11.1 ± 2.4</td>
                <td valign="top">6.1 ± 1.8</td>
            </tr>
            <tr>
                <td valign="top">WT/<italic>PpetE-patS PpetE-hetL</italic>[D151A]</td>
                <td valign="top">0</td>
                <td valign="top">ND</td>
            </tr>
        </tbody>
    </table>
</table-wrap>
```



