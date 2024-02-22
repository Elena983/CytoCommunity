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

![image](https://github.com/Elena983/CytoCommunity/assets/68946912/ef8dd872-2ed7-440f-8983-cc400f123d23)

Patient 1

![image](https://github.com/Elena983/CytoCommunity/assets/68946912/891ef772-6737-49e0-ad73-3dac202da0b4)

CD31+ were significantly enriched in TCN-2 in CLR patient 1, which is consistent with the paracrine effect whereby endothelial cells (ECs) promote the cancer stem cell (CSC) phenotype of human colorectal cancer (CRC).

A stroma slightly connects with a tumor in both patients.
-------------------

A supervised approach is under development ...

TCNs are identified in all samples/images simultaneously using the supervised mode, and thus, TCNs from different samples/images are aligned.

Identify condition-specific TCNs from a cohort of labeled tissue samples by leveraging differentiable graph pooling and sample labels (supervised mode), an effective strategy to address the difficulty of graph alignment across samples.
