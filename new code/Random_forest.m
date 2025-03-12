%sample_data = data(1:100000,:);
%sample_idx = idx(1:100000,:);
sample_data = data;
sample_idx = idx;
sample_data= [sample_data sample_idx];

colNames = {'N2', 'H2', 'H', 'O', 'O2', 'OH', 'H2O', 'HO2', 'H2O2', ...
'N', 'NO', 'NH', 'NH2', 'HNO', 'H2NN', 'NO2', 'N2O', 'NNH', 'HONO', ...
    'HONO2','T','idx'};
sample_data = array2table(sample_data,'VariableNames',colNames);

cv = cvpartition(size(sample_data,1),'HoldOut',0.3);
index = cv.test;
dataTrain=sample_data(~index,:);
dataTest=sample_data(index,:);

testing=dataTest(1:end,1:end-1);

% Returns the trained classification ensemble model object (Mdl) that 
% contains the results of boosting 100 classification trees and the 
% predictor and response data
model=fitensemble(dataTrain,'idx','Bag',100,'Tree','Type','classification');
prediction=predict(model,testing);

% Computes estimates of predictor importance for the model by summing these 
% estimates over all weak learners in the ensemble
imp = predictorImportance(model);

X=categorical({'N2', 'H2', 'H', 'O', 'O2', 'OH', 'H2O', 'HO2', 'H2O2', ...
'N', 'NO', 'NH', 'NH2', 'HNO', 'H2NN', 'NO2', 'N2O', 'NNH', 'HONO', ...
    'HONO2','T'});
X=reordercats(X,{'N2', 'H2', 'H', 'O', 'O2', 'OH', 'H2O', 'HO2', 'H2O2', ...
'N', 'NO', 'NH', 'NH2', 'HNO', 'H2NN', 'NO2', 'N2O', 'NNH', 'HONO', ...
    'HONO2','T'});
set(gcf,'color','w')
bar(X,imp)
box on

% Accuracy
ms=(sum(prediction==table2array(dataTest(:,end)))/size(dataTest,1))*100

