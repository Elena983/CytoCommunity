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

![image](https://github.com/Elena983/CytoCommunity/assets/68946912/0f432d88-3c7e-4feb-9306-13b76a736f5f)

![image](https://github.com/Elena983/CytoCommunity/assets/68946912/d6d59253-11b1-49eb-90a9-a4a864e60fcb)


Supervised approach is under development ...

TCNs are identified in all samples/images simultaneously using the supervised mode and thus TCNs from different samples/images are aligned.

Identify condition-specific TCNs from a cohort of labeled tissue samples by leveraging differentiable graph pooling and sample labels (supervised mode), an effective strategy to address the difficulty of graph alignment across samples.
