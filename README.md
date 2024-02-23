# CytoCommunity
Unsupervised and supervised discovery of tissue cellular neighborhoods from cell phenotypes with CytoCommunity
https://github.com/tanlabcode/CytoCommunity 

How different cells in a tissue organize and coordinate with each other to support tissue functions in spatial proteomics approaches for a better understanding of the structure-function relationship of a tissue.

TCN identification as a community detection problem on graphs and employ a graph neural network (GNN) model to identify TCNs

![image](https://github.com/Elena983/CytoCommunity/assets/68946912/4354e923-cc15-40de-a925-09b1d3a4bd9d)

2 modes

Unbiased approach - infer TCNs for individual samples. 

TCNs are identified per sample/image using the unsupervised mode; thus, TCNs from different samples/images are NOT aligned.

2 CRC cores from COMET were chosen for further analysis
https://lunaphore.com/of4234/

Patient 3

![image](https://github.com/Elena983/CytoCommunity/assets/68946912/6756b77d-cbaa-4121-baad-1352da6c0a8f)

Patient 1

![image](https://github.com/Elena983/CytoCommunity/assets/68946912/0b5a67e8-f013-4a0b-98d2-5f76b79df4f4)

The enrichment of B cells in TCN-1 and the co-localization of T cells or myeloid cells in TCN-3 could be indicative of the presence of tertiary lymphoid structures (TLS) within the tumor. TLS are organized lymphoid structures that resemble lymph nodes and can develop within tumors. They are associated with favorable outcomes in some cancers and suggest an active anti-tumor immune response.

Endothelial cells alongside stroma were significantly enriched in many TCNs in both CLR patients, which is consistent with the paracrine effect whereby endothelial cells (ECs) promote the cancer stem cell (CSC) phenotype of human colorectal cancer (CRC), but never with tumor showing primarily interactions with other TME components of the tumor microenvironment rather than tumor cells themselves.

Stroma strongly connect with the Endothelium 

The value in the matrix is -log10(hypergeometric test p-value)
![image](https://github.com/Elena983/CytoCommunity/assets/68946912/6c43e4b3-ea6a-440f-872e-aa33d47992ad)

-------------------

A supervised approach may be exhibited considering different conditions (for instance, disease risk or patient prognosis) and requires additional information about the samples.
