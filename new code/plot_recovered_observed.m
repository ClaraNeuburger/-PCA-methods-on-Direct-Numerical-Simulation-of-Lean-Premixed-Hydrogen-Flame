i = input('Which variable do you want to plot? \n');
figure
%scatter(rec_X_data(:,i),data(:,i))
scatter(rec_data(:,i),data(:,i))
name = string(species(1,i));
first = sprintf('Observed %s',name);
second = sprintf('Reconstructed %s',name);
xlabel(first);
ylabel(second);
hline = refline(1);
hline.Color = 'r';
refline(1,'r')
axis equal


t = tiledlayout(2,3);
nexttile
set(gcf,'color','w')
scatter(rec_data(:,5),data(:,5))
box on 
name = string(species(1,5));
first = sprintf('Observed %s',name);
second = sprintf('Reconstructed %s',name);
xlabel(first);
ylabel(second);
hline = refline(1);
hline.Color = 'r';
axis equal
title('GPCA q=2');

nexttile
set(gcf,'color','w')
scatter(rec_data(:,10),data(:,10))
box on 
name = string(species(1,10));
first = sprintf('Observed %s',name);
second = sprintf('Reconstructed %s',name);
xlabel(first);
ylabel(second);
hline = refline(1);
hline.Color = 'r';
%refline(1,'r')
axis equal

nexttile
set(gcf,'color','w')
scatter(rec_data(:,21),data(:,21))
box on 
name = string(species(1,21));
first = sprintf('Observed %s',name);
second = sprintf('Reconstructed %s',name);
xlabel(first);
ylabel(second);
hline = refline(1);
hline.Color = 'r';
%refline(1,'r')
axis equal

nexttile 
set(gcf,'color','w')
scatter(rec_X_data(:,5),data(:,5))
box on
name = string(species(1,5));
first = sprintf('Observed %s',name);
second = sprintf('Reconstructed %s',name);
xlabel(first);
ylabel(second);
hline = refline(1);
hline.Color = 'r';
axis equal
title('VQPCA q=2 and k=8')

nexttile
set(gcf,'color','w')
scatter(rec_X_data(:,10),data(:,10))
box on 
name = string(species(1,10));
first = sprintf('Observed %s',name);
second = sprintf('Reconstructed %s',name);
xlabel(first);
ylabel(second);
hline = refline(1);
hline.Color = 'r';
%refline(1,'r')
axis equal

nexttile
set(gcf,'color','w')
scatter(rec_X_data(:,21),data(:,21))
box on 
name = string(species(1,21));
first = sprintf('Observed %s',name);
second = sprintf('Reconstructed %s',name);
xlabel(first);
ylabel(second);
hline = refline(1);
hline.Color = 'r';
%refline(1,'r')
axis equal
