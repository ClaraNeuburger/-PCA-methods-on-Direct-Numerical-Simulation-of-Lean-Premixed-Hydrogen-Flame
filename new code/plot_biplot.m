i = input('Which first PC do you want to plot? \n');
j = input('Which second PC do you want to plot? \n');
k = input('Do yo need to represent clusters? [1/0] \n');
if k == 1
    l = input('which cluster? \n');
    figure
    biplot(infos.Loadings(:,i:j),'Scores',infos.WScores{l,1}(:,i:j),'VarLabels',species)
    ttl = sprintf('Biplot of the PCs %d and %d for the cluster k = %d',i,j,l);
    title(ttl)
else
    biplot(infos.Loadings(:,i:j),'Scores',W_scores(:,i:j),'VarLabels',species)
end

