# CytoCommunity
Unsupervised and supervised discovery of tissue cellular neighborhoods from cell phenotypes with CytoCommunity
https://github.com/tanlabcode/CytoCommunity 

How different cells in a tissue organize and coordinate with each other to support tissue functions in spatial proteomics approaches for a better understanding of the structure-function relationship of a tissue

TCN identification as a community detection problem on graphs and employ a graph neural network (GNN) model to identify TCNs

![image](https://github.com/Elena983/CytoCommunity/assets/68946912/4354e923-cc15-40de-a925-09b1d3a4bd9d)

2 modes

Unbiased approach - infer TCNs for individual samples. 

TCNs are identified per sample/image using the unsupervised mode; thus, TCNs from different samples/images are NOT aligned.

2 CRC cores from COMET were chosen for further analysis
https://lunaphore.com/of4234/

![image](https://github.com/Elena983/CytoCommunity/assets/68946912/358bb2e0-e5e0-4f5b-b980-37ff0586ab1b)

![image](https://github.com/Elena983/CytoCommunity/assets/68946912/9f5becd8-f74b-4d08-8fed-997ba5bfd72d)


A supervised approach is under development ...

TCNs are identified in all samples/images simultaneously using the supervised mode, and thus, TCNs from different samples/images are aligned.

Identify condition-specific TCNs from a cohort of labeled tissue samples by leveraging differentiable graph pooling and sample labels (supervised mode), an effective strategy to address the difficulty of graph alignment across samples.
