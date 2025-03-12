%%% RMSE for log
q2_log = [0.0005    0.0011    0.0000    0.0000    0.0036    0.0002    0.0044    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000  124.3914];
q3_log = [0.0004    0.0007    0.0000    0.0000    0.0033    0.0002    0.0039    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000  104.5734];
q4_log = [0.0002    0.0006    0.0000    0.0000    0.0031    0.0001    0.0039    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000  101.3630];
q5_log = [0.0002    0.0006    0.0000    0.0000    0.0023    0.0001    0.0030    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000   83.1262];


%%% RMSE normal
q2_normal = [0.0005    0.0012    0.0000    0.0000    0.0041    0.0002    0.0053    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000   59.5674];
q3_normal = [0.0004    0.0007    0.0000    0.0000    0.0033    0.0002    0.0038    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000   42.3489];
q4_normal = [0.0002    0.0007    0.0000    0.0000    0.0032    0.0001    0.0038    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000   42.2931];
q5_normal = [0.0002    0.0006    0.0000    0.0000    0.0024    0.0001    0.0029    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000   33.3609];


%%% RMSE sqrt
q2_sqrt = [0.0005    0.0002    0.0000    0.0000    0.0066    0.0002    0.0081    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000   66.2310];
q3_sqrt = [0.0004    0.0002    0.0000    0.0000    0.0044    0.0002    0.0079    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000   57.3407];
q4_sqrt = [0.0002    0.0002    0.0000    0.0000    0.0044    0.0001    0.0068    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000   51.6395];
q5_sqrt = [0.0001    0.0002    0.0000    0.0000    0.0034    0.0001    0.0047    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000   37.0840];


%%% RMSE normal no T
q2_normal_noT = [0.0005    0.0011    0.0000    0.0000    0.0032    0.0002    0.0040    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000   45.1328];


%%% RMSE log no T
q2_log_noT = [0.0005    0.0010    0.0000    0.0000    0.0033    0.0002    0.0040    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000  114.1794];

t = tiledlayout(2,2);
set(gcf,'color','w')
nexttile
hold on
plot(q2_normal(:,1:20),'r')
plot(q2_log(:,1:20),'b')
plot(q2_sqrt(:,1:20),'m')
box on
str = 'RMSE for GPCA q = 2';
title(str)
legend('No transformation','log transformation','sqrt transformation')
xlabel('Species')
ylabel('Root Mean Squared Error')

nexttile
hold on
plot(q3_normal(:,1:20),'r')
plot(q3_log(:,1:20),'b')
plot(q3_sqrt(:,1:20),'m')
box on
str = 'RMSE for GPCA q = 3';
title(str)
legend('No transformation','log transformation','sqrt transformation')
xlabel('Species')
ylabel('Root Mean Squared Error')

nexttile
hold on
plot(q4_normal(:,1:20),'r')
plot(q4_log(:,1:20),'b')
plot(q4_sqrt(:,1:20),'m')
box on
str = 'RMSE for GPCA q = 4';
title(str)
legend('No transformation','log transformation','sqrt transformation')
xlabel('Species')
ylabel('Root Mean Squared Error')

nexttile
hold on
plot(q5_normal(:,1:20),'r')
plot(q5_log(:,1:20),'b')
plot(q5_sqrt(:,1:20),'m')
box on
str = 'RMSE for GPCA q = 5';
title(str)
legend('No transformation','log transformation','sqrt transformation')
xlabel('Species')
ylabel('Root Mean Squared Error')

figure
hold on
plot(q2_normal_noT,'r')
plot(q2_log_noT,'b')
%plot(q5_sqrt(:,1:20),'m')
str = 'RMSE for GPCA q = 5';
title(str)
%legend('No transformation','log transformation','sqrt transformation')
xlabel('Species')
ylabel('Root Mean Squared Error')
%plot(q3,'b')
%plot(q4,'g')
%plot(q5,'k')
hold off


