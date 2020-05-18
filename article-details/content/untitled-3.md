# Tables

This is a page about tables.

## Description

Tables are a way to present complex information in a neat and easy to read format. These allow readers to find key points or results, whilst also attracting readers to the work.

## Structure

| Component | Contains | XML | Required? |
| :--- | :--- | :--- | :---: |
| Table wrapper | All the table tags | `<table-wrap id="" position="">` | Yes |
| Label | Label for the table | `<label>Table 1</label>` | Yes |
| Caption & Title | Title for the table | `<caption><title>table title</title></caption>` | Yes |
| Table | The main table data - one per wrapper | `<table>` | Yes |
| Table Header | Column header information | `<thead><tr><th>Column 1</th></tr></thead>` | No |
| Table Body | Table data | `<tbody><tr><td>Data for column 1</td></tr></tbody>` | No |

## Examples

Example of a table

```markup
<table-wrap id="table1" position="float">
  <label>Table 1</label>
  <caption><title>Parameter values and definitions.</title></caption>
  <table>
    <thead>
      <tr>
        <th>Column 1</th>
        <th>Column 2</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Test data A</td>
        <td>Test data B</td>
      </tr>
    </tbody>
  </table>
</table-wrap>
```

## Troubleshooting

### General advice

* A list
* Of general points
* To be aware of
* And any specific quirks/issues
* That a user will need to address

### Schematron

#### table-wrap-test-2

**Rule:** table-wrap has more than one table - Is this correct?

**Action:** Make sure only one table element exists inside of a `<table-wrap>`

**Example:**

```markup
<table-wrap id="inlinetable1" position="anchor">
  <table frame="hsides" rules="groups"></table>
  <table frame="hsides" rules="groups"></table> <!-- remove this table -->
</table-wrap>
```

#### tr-test-2

**Rule:** table row in body contains a th element \(a header\), which is unusual. Please check that this is correct.

**Action:** Ensure that `<th>` elements are appropriately used, and not used for normal rows where a `<td>` would suffice

**Example:**

```markup
<table>
  <thead>
    <tr>
      <th>Symbol</th> <!-- this is fine as it is a header element in the thead element -->
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>Parameters</th> <!-- a header on a normal table row is unusual -->
    </tr>
  </tbody>
</table>
```

## Further reading and links

Where applicable, give links to related pages and external sites.

