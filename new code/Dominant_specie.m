species = {'N2'; 'H2'; 'H'; 'O'; 'O2'; 'OH'; 'H2O'; 'HO2'; 'H2O2';'N'; 'NO'; 'NH'; 'NH2'; 'HNO'; 'H2NN'; 'NO2'; 'N2O'; 'NNH'; 'HONO';'HONO2';'T'};

k = input('Which cluster do you want to analyse? \n');

cluster = (infos.eigenvectors{k,1}).^2;

results = zeros(21,1);
for i=1:21
    % Raw contribution of the variable
    results(i,:) = sum(cluster(i,:));
end
total = sum(results);
weight = results./total;

[M,I]=max(weight);
weight(I) = 0;
dominant_specie = species(I);
fprintf('The most represented specie in cluster %d is %s \n',k,char(dominant_specie));

[M,I]=max(weight);
weight(I) = 0;
dominant_specie = species(I);
fprintf('The second most represented specie in cluster %d is %s \n',k,char(dominant_specie));

[M,I]=max(weight);
weight(I) = 0;
dominant_specie = species(I);
fprintf('The thirs most represented specie in cluster %d is %s \n',k,char(dominant_specie));


