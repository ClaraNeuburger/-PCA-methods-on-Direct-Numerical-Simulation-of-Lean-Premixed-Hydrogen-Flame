% Load mesh

%load('sharedData/xm_3D.mat');

%load('sharedData/ym_3D.mat');

 

% Contour plor

[XX, YY] = meshgrid(xm_3D, ym_3D);
%curv = sign(curvature).*log(abs(curvature+1));
%[XX, YY] = meshgrid(curv,data_rr(:,11));
%col='ygrmkcbw';
%set(gcf,'color','w')
%pointsize = 10;
%scatter(curv,data(:,11),pointsize,idx,'filled')
%box on 
%colorbar
%xlabel('mass fraction of NO')
%ylabel('Curvature')
%colormap turbo
 

% The column you want to do a contour
idplot = 1;

ZZ = reshape(data(:,idplot)-rec_X_data(:,idplot), [1536 1024]);
%ZZ = reshape(idx, [1536 1024]);



contourf(XX, YY, ZZ, 100, 'LineStyle','none');
%contourf(XX, YY, 'LineStyle','none');
%colormap('jet');

xlabel('x [m]'); ylabel('y [m]');
set(gcf,'color','w')
box on
cb = colorbar;

%ax = gca; ax.TickLabelInterpreter = 'latex';