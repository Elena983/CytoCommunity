clear
%%% Hyperparameters:
image_name='3';
num_TCN=6;

fid0=fopen('C:/Users/melnike/Step1_Output/UniqueCellTypeList.txt');
if fid0 == -1
    error('Failed to open file UniqueCellTypeList.txt');
end
CellTypeVec_List=textscan(fid0,'%s','delimiter','\t','Headerlines',0);
fclose(fid0);
CellTypeVec_List=CellTypeVec_List{1};

filename_1=strcat('C:/Users/melnike/Step4_Output_',image_name,'/ResultTable_',image_name,'.csv');
fid1=fopen(filename_1);
if fid1 == -1
    error('Failed to open file ResultTable_%s.csv', image_name);
end
fmt_1 = ['%f','%f','%s','%d'];
TargetGraph=textscan(fid1,fmt_1,'delimiter',',','Headerlines',1);
fclose(fid1);
TargetGraph_CellType=TargetGraph{3};
TargetGraph_TCN=TargetGraph{4};

CellTypeByTCN_matrix=ones(length(CellTypeVec_List),num_TCN); %initialization.
for j=1:num_TCN
    idx=find(TargetGraph_TCN==j);

    if ~isempty(idx)
        component_CellType=TargetGraph_CellType(idx);

        for i=1:length(CellTypeVec_List)
            overlap_CellType_Cyto=length(find(strcmp(CellTypeVec_List{i},component_CellType)));

            if overlap_CellType_Cyto~=0
                overlap_CellType_Image=length(find(strcmp(CellTypeVec_List{i},TargetGraph_CellType)));
                enrich_p=1-hygecdf(overlap_CellType_Cyto-1,length(TargetGraph{1}),overlap_CellType_Image,length(idx));
                CellTypeByTCN_matrix(i,j)=enrich_p;
            end

        end %end of i.

    end

end %end of j.

%(1)conduct BH-based multi-test correction.
[h, crit_p, adj_ci_cvrg, CellTypeByTCN_matrix_pBH]=fdr_bh(CellTypeByTCN_matrix,0.05,'pdep','no');
%(2)conduct log transformation.
CellTypeByTCN_matrix_pBH(CellTypeByTCN_matrix_pBH<1.0E-20)=1.0E-20; %deal with the p-value of zero.   
CellTypeByTCN_EnrichScoreMatrix=-log10(CellTypeByTCN_matrix_pBH); 
save CellTypeEnrichment_Res CellTypeByTCN_EnrichScoreMatrix CellTypeVec_List
