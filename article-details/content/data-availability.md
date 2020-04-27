---
description: How to check and copy-edit the data availability section
---

# Data availability

## What is the data availability section?

The data availability section 

## What needs to be checked?

## Examples

## Schematron warnings

### Content warnings

#### ext-link-child-test-5

**Warning**: _ext-link looks like it points to a review dryad dataset - XXXXXX. Should it be updated?_

**Action**:

#### sec-test-3

**Warning**: _Section has a title 'XXXXXX'. Is it a duplicate of the data availability section \(and therefore should be removed\)?_

**Action**:

#### pre-das-elem-person-group-1

**Warning**: _The reference in position XXXXXX of the data availability section does not have any authors \(no person-group\[@person-group-type='author'\]\). Please ensure to add them in or query the authors asking for the author list._

**Action**: 

#### final-das-elem-person-group-1

**Error**: _The reference in position XXXXXX of the data availability section does not have any authors \(no person-group\[@person-group-type='author'\]\). Please ensure to add them._

**Action**: 

#### das-elem-person-group-2

**Error**: _The reference in position XXXXXX of the data availability has XXXXXX person-group elements, which is incorrect_

**Action**: 

#### pre-das-elem-person-1

**Warning**: _The reference in position XXXXXX of the data availability section does not have any authors. Please ensure to add them in or query the authors asking for the author list._

**Action**: 

#### final-das-elem-person-1

**Error**: _The reference in position XXXXXX of the data availability section does not have any authors \(person-group\[@person-group-type='author'\]\). Please ensure to add them in._

**Action**: 

#### pre-das-elem-data-title-1

**Warning**: _The reference in position XXXXXX of the data availability section does not have a title \(no data-title\). Please ensure to add it in or query the authors asking for it._

**Action**: 

#### final-das-elem-data-title-1

**Error**: _The reference in position XXXXXX of the data availability section does not have a title \(no data-title\). Please ensure to add it_

**Action**: 

#### pre-das-elem-source-1

**Warning**: _The reference in position XXXXXX of the data availability section does not have a database name \(no source\). Please ensure to add it in or query the authors asking for it._

**Action**: 

#### final-das-elem-source-1

**Error**: _The reference in position XXXXXX of the data availability section does not have a database name \(no source\). Please ensure to add it in._

**Action**: 

#### pre-das-elem-pub-id-1

**Warning**: _The reference in position XXXXXX of the data availability section does not have an identifier \(no pub-id\). Please ensure to add it in or query the authors asking for it._

**Action**: 

#### final-das-elem-pub-id-1

**Error**: _The reference in position XXXXXX of the data availability section does not have an identifier \(no pub-id\). Please ensure to add it in._

**Action**: 

#### pre-das-elem-pub-id-2

**Warning**: _The reference in position XXXXXX of the data availability section does not have an id \(pub-id is empty\). Please ensure to add it in or query the authors asking for it._

**Action**: 

#### final-das-elem-pub-id-2

**Error**: _The reference in position XXXXXX of the data availability section does not have an id \(pub-id is empty\). Please ensure to add it in._

**Action**: 

#### pre-das-elem-year-1

**Warning**: _The reference in position XXXXXX of the data availability section does not have a year. Please ensure to add it in or query the authors asking for it._

**Action**: 

#### final-das-elem-year-1

**Error**: _The reference in position XXXXXX of the data availability section does not have a year. Please ensure to add it in._

**Action**: 

#### das-elem-cit-1

**Error**: _Every reference in the data availability section must have an @specific-use. The reference in position XXXXXX does not._

**Action**: 

#### das-elem-cit-2

**Error**: _The reference in position XXXXXX of the data availability section has a @specific-use value of XXXXXX, which is not allowed. It must be 'isSupplementedBy' or 'references'._

**Action**: 

#### das-elem-cit-3

**Error**: _The reference in position XXXXXX of the data availability section has a link \(XXXXXX\) which is the same as another dataset reference in that section. Dataset reference links should be distinct._

**Action**: 

#### das-elem-cit-4

**Warning**: _The reference in position XXXXXX of the data availability section has a pub-id \(XXXXXX\) which is the same as another dataset reference in that section. This is very likely incorrect. Dataset reference pub-id should be distinct._

**Action**: 

#### das-pub-id-1

**Error**: _Each pub-id element must have an @pub-id-type with one of these types: accession, archive, or doi._

**Action**: 

#### das-pub-id-2

**Error**: _Each pub-id element which is not a doi must have an @xlink-href \(which is not empty\)._

**Action**: 

#### das-elem-citation-child-1

**Error**: _Reference in the data availability section has a XXXXXX element in a XXXXXX element which is not allowed._

**Action**: 

#### das-elem-citation-year-1

**Error**: _Every year in a reference must have an @iso-8601-date attribute equal to the numbers in the year. Reference with id XXXXXX has a year 'XXXXXX' but an @iso-8601-date 'XXXXXX'._

**Action**: 

#### pre-das-elem-citation-year-2

**Warning**: _Reference with id XXXXXX has an empty year. Please ensure to add it in or query the authors asking for it._

**Action**: 

#### final-das-elem-citation-year-2

**Error**: _Reference with id XXXXXX has an empty year. Please ensure to add it in._

**Action**: 

#### data-geo-test

Warning: Data reference with the title 'XXXXXX' has a 'https://www.ncbi.nlm.nih.gov/geo' type link, but the database name is not 'NCBI Gene Expression Omnibus' - XXXXXX. Is that correct?

**Action**: 

#### data-nucleotide-test

**Warning**: _Data reference with the title 'XXXXXX' has a 'https://www.ncbi.nlm.nih.gov/nuccore' type link, but the database name is not 'NCBI Nucleotide' or 'NCBI GenBank' - XXXXXX. Is that correct?_

**Action**: 

#### data-bioproject-test

**Warning**: _Data reference with the title 'XXXXXX' has a 'https://www.ncbi.nlm.nih.gov/bioproject' type link, but the database name is not 'NCBI BioProject' - XXXXXX. Is that correct?_

**Action**: 

#### data-dbgap-test

**Warning**: _Data reference with the title 'XXXXXX' has a 'https://www.ncbi.nlm.nih.gov/gap' type link, but the database name is not 'NCBI dbGaP' - XXXXXX. Is that correct?_

**Action**: 

#### data-popset-test

**Warning**: _Data reference with the title 'XXXXXX' has a 'https://www.ncbi.nlm.nih.gov/popset' type link, but the database name is not 'NCBI PopSet' - XXXXXX. Is that correct?_

**Action**: 

#### data-sra-test

**Warning**: _Data reference with the title 'XXXXXX' has a 'https://www.ncbi.nlm.nih.gov/sra' type link, but the database name is not 'NCBI Sequence Read Archive' - XXXXXX. Is that correct?_

**Action**: 

#### data-biosample-test

**Warning**: _Data reference with the title 'XXXXXX' has a 'https://www.ncbi.nlm.nih.gov/biosample' type link, but the database name is not 'NCBI BioSample' - XXXXXX. Is that correct?_

**Action**: 

#### data-protein-test

**Warning**: _Data reference with the title 'XXXXXX' has a 'https://www.ncbi.nlm.nih.gov/protein' type link, but the database name is not 'NCBI Protein' - XXXXXX. Is that correct?_

**Action**: 

#### data-assembly-test

**Warning**: _Data reference with the title 'XXXXXX' has a 'https://www.ncbi.nlm.nih.gov/assembly' type link, but the database name is not 'NCBI Assembly' - XXXXXX. Is that correct?_

**Action**: 

#### data-ncbi-test-1

**Warning**: _Data reference with an NCBI link 'XXXXXX' is not marked as an accession number, which is likely incorrect._

**Action**: 

#### data-ncbi-test-2

**Warning**: _Data reference with the database source 'XXXXXX' is not marked as an accession number, which is very likely incorrect._

**Action**: 

#### data-ncbi-test-3

**Warning**: _Data reference with an NCBI link 'XXXXXX' is not marked with NCBI as its assigning authority, which must be incorrect._

**Action**: 

#### data-ncbi-test-4

**Warning**: _Data reference with the database source 'XXXXXX' is not marked with NCBI as its assigning authority, which must be incorrect._

**Action**: 

#### data-dryad-test-1

**Warning**: _Data reference with the title 'XXXXXX' has a Dryad type doi XXXXXX, but the database name is not 'Dryad Digital Repository' - XXXXXX._

**Action**: 

#### data-dryad-test-2

**Warning**: _Data reference with the title 'XXXXXX' has the database name XXXXXX, but no doi starting with '10.5061/dryad' or '10.7272', which is incorrect._

**Action**: 

#### data-dryad-test-3

**Warning**: _Data reference with the title 'XXXXXX' has a Dryad type doi - XXXXXX, but the assigning authority is not Dryad, which must be incorrect._

**Action**: 

#### data-rcsbpbd-test-1

**Warning**: _Data reference with the title 'XXXXXX' has a 'http://www.rcsb.org' type link, but the database name is not 'RCSB Protein Data Bank' - XXXXXX. Is that correct?_

**Action**: 

data-rcsbpbd-test-2

**Warning**: _Data reference with the title 'XXXXXX' has a 'http://www.rcsb.org' type link, but is not marked with PDB as its assigning authority, which must be incorrect_

**Action**: 

#### data-rcsbpbd-test-3

**Warning**: _Data reference with the title 'XXXXXX' has a PDB 'http://www.rcsb.org' type link, but is not marked as an accession type link._

**Action**: 

#### data-emdb-test-1

**Warning**: _Data reference with the title 'XXXXXX' has a 'http://www.ebi.ac.uk/pdbe/emdb' type link, but the database name is not 'Electron Microscopy Data Bank' - XXXXXX. Is that correct?_

**Action**: 

#### data-emdb-test-2

**Warning**: _Data reference with the title 'XXXXXX' has a 'http://www.ebi.ac.uk/pdbe/emdb' type link, but is not marked with EMDB as its assigning authority, which must be incorrect_

**Action**: 

#### data-emdb-test-3

**Warning**: _Data reference with the title 'XXXXXX' has a EMDB 'http://www.ebi.ac.uk/pdbe/emdb' type link, but is not marked as an accession type link._

**Action**: 

#### data-arrayexpress-test-1

**Warning**: _Data reference with the title 'XXXXXX' has a 'www.ebi.ac.uk/arrayexpress' type link, but the database name is not 'ArrayExpress' - XXXXXX. Is that correct?_

**Action**: 

#### data-arrayexpress-test-2

**Warning**: _Data reference with the title 'XXXXXX' has a 'www.ebi.ac.uk/arrayexpress' type link, but is not marked with EBI as its assigning authority, which must be incorrect_

**Action**: 

#### data-arrayexpress-test-3

**Warning**: _Data reference with the title 'XXXXXX' has an ArrayExpress 'www.ebi.ac.uk/arrayexpress' type link, but is not marked as an accession type link._

**Action**: 

#### data-pride-test-1

**Warning**: _Data reference with the title 'XXXXXX' has a 'www.ebi.ac.uk/pride' type link, but the database name is not 'PRIDE' - XXXXXX. Is that correct?_

**Action**: 

#### data-pride-test-2

**Warning**: _Data reference with the title 'XXXXXX' has a 'www.ebi.ac.uk/pride' type link, but is not marked with EBI as its assigning authority, which must be incorrect_

**Action**: 

#### data-pride-test-3

Warning: _Data reference with the title 'XXXXXX' has a PRIDE 'www.ebi.ac.uk/pride' type link, but is not marked as an accession type link._

**Action**: 

data-zenodo-test-1	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a doi starting with '10.5281/zenodo' but the database name is not 'Zenodo' - XXXXXX.\_

data-zenodo-test-2	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has the database name XXXXXX, but no doi starting with '10.5281/zenodo', which is incorrect.\_

data-zenodo-test-3	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a Zenodo type doi - XXXXXX, but the assigning authority is not Zenodo, which must be incorrect.\_

data-osf-test-1	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a 'https://osf.io' type link, but the database name is not 'Open Science Framework' - XXXXXX. Is that correct?\_

data-osf-test-2	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a 'https://osf.io' type link, but is not marked with Open Science Framework as its assigning authority, which must be incorrect.\_

data-osf-test-3	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has an OSF 'https://osf.io' type link, but is not marked as an archive type link.\_

data-osf-test-4	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a doi starting with '10.17605/OSF' but the database name is not 'Open Science Framework' - XXXXXX.\_

data-osf-test-5	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a OSF type doi - XXXXXX, but the assigning authority is not Open Science Framework, which must be incorrect.\_

data-figshare-test-1	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a doi starting with '10.6084/m9.figshare' but the database name is not 'figshare' - XXXXXX.\_

data-figshare-test-2	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has the database name XXXXXX, but no doi starting with '10.6084/m9.figshare' - is this correct? Figshare sometimes host for other organisations \(example http://doi.org/10.1184/R1/9963566\), so this may be fine.\_

data-figshare-test-3	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a figshare type doi - XXXXXX, but the assigning authority is not figshare, which must be incorrect.\_

data-proteomexchange-test-1	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a 'http://proteomecentral.proteomexchange.org/' type link, but the database name is not 'ProteomeXchange' - XXXXXX. Is that correct?\_

data-proteomexchange-test-2	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a 'http://proteomecentral.proteomexchange.org/' type link, but is not marked with 'other' as its assigning authority, which must be incorrect.\_

data-proteomexchange-test-3	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a ProteomeXchange 'http://proteomecentral.proteomexchange.org/' type link, but is not marked as an accession type link.\_

data-openneuro-test-1	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a doi starting with '10.18112/openneuro' but the database name is not 'OpenNeuro' - XXXXXX.\_

data-openneuro-test-2	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has the database name XXXXXX, but no doi starting with '10.18112/openneuro' or 'openneuro.org/datasets' type link, which is incorrect.\_

data-openneuro-test-3	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a OpenNeuro type doi - XXXXXX, but the assigning authority is not 'other', which must be incorrect.\_

data-synapse-test-1	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a doi starting with '10.7303/syn' but the database name is not 'Synapse' - XXXXXX.\_

data-synapse-test-2	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has the database name XXXXXX, but no doi starting with '10.7303/syn', which is incorrect.\_

data-synapse-test-3	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a Synapse type doi - XXXXXX, but the assigning authority is not 'other', which must be incorrect.\_

data-bmrb-test-1	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a 'www.bmrb.wisc.edu/data\_library/summary' type link, but the database name is not 'Biological Magnetic Resonance Data Bank' - XXXXXX. Is that correct?\_

data-bmrb-test-2	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a 'www.bmrb.wisc.edu/data\_library/summary' type link, but is not marked with 'other' as its assigning authority, which must be incorrect\_

data-bmrb-test-3	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a BMRB 'www.bmrb.wisc.edu/data\_library/summary' type link, but is not marked as an accession type link.\_

data-morphdbase-test-1	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a 'www.morphdbase.de' type link, but the database name is not 'Morph D Base' - XXXXXX. Is that correct?\_

data-morphdbase-test-2	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a 'www.morphdbase.de' type link, but is not marked with 'other' as its assigning authority, which must be incorrect\_

data-morphdbase-test-3	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a Morph D Base 'www.morphdbase.de' type link, but is not marked as an accession type link.\_

data-mendeley-test-1	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a doi starting with '10.17632' but the database name is not 'Mendeley Data' - XXXXXX.\_

data-mendeley-test-2	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has the database name XXXXXX, but no doi starting with '10.17632', which is incorrect.\_

data-mendeley-test-3	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a Mendeley Data type doi - XXXXXX, but the assigning authority is not 'other', which must be incorrect.\_

data-edatashare-test-1	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a doi starting with '10.7488' but the database name is not 'Edinburgh DataShare' - XXXXXX.\_

data-edatashare-test-2	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has the database name XXXXXX, but no doi starting with '10.7488', which is incorrect.\_

data-edatashare-test-3	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a Edinburgh DataShare type doi - XXXXXX, but the assigning authority is not 'Edinburgh University', which must be incorrect.\_

data-eth-test-1	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a doi starting with '10.3929' but the database name is not 'ETH Library research collection' - XXXXXX.\_

data-eth-test-2	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has the database name XXXXXX, but no doi starting with '10.3929', which is incorrect.\_

data-eth-test-3	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a ETH Library research collection type doi - XXXXXX, but the assigning authority is not 'other', which must be incorrect.\_

data-crcns-test-1	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a doi starting with '10.6080' but the database name is not 'Collaborative Research in Computational Neuroscience' - XXXXXX.\_

data-crcns-test-2	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has the database name XXXXXX, but no doi starting with '10.6080', which is incorrect.\_

data-crcns-test-3	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a CRCNS type doi - XXXXXX, but the assigning authority is not 'other', which must be incorrect.\_

data-morphosource-test-1	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a doi starting with '10.17602' but the database name is not 'MorphoSource' - XXXXXX.\_

data-morphosource-test-2	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has the database name XXXXXX, but no doi starting with '10.17602', which is incorrect.\_

data-morphosource-test-3	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a MorphoSource type doi - XXXXXX, but the assigning authority is not 'other', which must be incorrect.\_

data-neurovault-test-1	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a 'neurovault.org/collections' type link, but the database name is not 'NeuroVault' - XXXXXX. Is that correct?\_

data-neurovault-test-2	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a 'neurovault.org/collections' type link, but is not marked with 'other' as its assigning authority, which must be incorrect\_

data-neurovault-test-3	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a NeuroVault 'neurovault.org/collections' type link, but is not marked as an archive type link.\_

data-wwpdb-test-1	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a doi starting with '10.2210' but the database name is not 'Worldwide Protein Data Bank' - XXXXXX.\_

data-wwpdb-test-2	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has the database name XXXXXX, but no doi starting with '10.2210', which is incorrect.\_

data-wwpdb-test-3	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a Worldwide Protein Data Bank type doi - XXXXXX, but the assigning authority is not 'PDB', which must be incorrect.\_

data-sbgdb-test-1	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a doi starting with '10.15785/SBGRID' but the database name is not 'SBGrid Data Bank' - XXXXXX.\_

data-sbgdb-test-2	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has the database name XXXXXX, but no doi starting with '10.15785/SBGRID', which is likely incorrect.\_

data-sbgdb-test-3	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a SBGrid Data Bank type doi - XXXXXX, but the assigning authority is not 'other', which must be incorrect.\_

data-harvard-dataverse-test-1	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a doi starting with '10.7910' but the database name is not 'Harvard Dataverse' - XXXXXX.\_

data-harvard-dataverse-test-2	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has the database name XXXXXX, but no doi starting with '10.7910', which is likely incorrect.\_

data-harvard-dataverse-test-3	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a Harvard Dataverse type doi - XXXXXX, but the assigning authority is not 'other', which must be incorrect.\_

data-encode-test-1	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a 'www.encodeproject.org' type link, but the database name is not 'ENCODE' - XXXXXX. Is that correct?\_

data-encode-test-2	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a 'www.encodeproject.org' type link, but is not marked with 'other' as its assigning authority, which must be incorrect\_

data-encode-test-3	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has an ENCODE 'www.encodeproject.org' type link, but is not marked as an archive type link.\_

data-emdr-test-1	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a 'www.emdataresource.org' type link, but the database name is not 'EMDataResource' - XXXXXX. Is that correct?\_

data-emdr-test-2	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has a 'www.emdataresource.org' type link, but is not marked with 'other' as its assigning authority, which must be incorrect\_

data-emdr-test-3	element-citation\[@publication-type='data'\]	\*Warning\*: \_Data reference with the title 'XXXXXX' has an EMDataResource 'www.emdataresource.org' type link, but is not marked as an accession type link.\_

### XML structure warnings

back-test-3

Error: One and only one Data availiability section \(sec\[@sec-type="data-availability"\]\) must be present \(as a child of back\) for 'XXXXXX'.

back-test-10

Warning: One and only one Data availiability section \(sec\[@sec-type="data-availability"\]\) should be present \(as a child of back\) for 'XXXXXX'. Is this a new version which was published first without one? If not, then it certainly needs adding.

data-p-presence

Error: At least one p element must be present in sec\[@sec-type='data=availability'\].



## XML structure

