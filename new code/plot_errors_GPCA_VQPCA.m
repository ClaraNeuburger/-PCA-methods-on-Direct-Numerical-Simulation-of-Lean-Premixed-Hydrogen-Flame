q2 = [1.875685e+00 
    9.979324e-01 
    3.729741e-01 
    2.887915e-01];

q3 = [1.032387e+00
    3.184463e-01 
    1.479882e-01
    1.012911e-01];

q4 = [5.682560e-01 
    1.435791e-01
    5.756654e-02 
    4.128885e-02];

q5 = [3.068580e-01
    5.460615e-02 
    2.272391e-02
    1.359395e-02 ];

q2_f = [2.044846e+00
    1.073321e+00 
    8.664827e-01
    7.461607e-01];

q3_f = [1.012878e+00 
    5.280107e-01 
    4.142427e-01 
    3.183131e-01];

q4_f = [6.025738e-01 
    2.826906e-01 
    2.025945e-01 
    1.502965e-01];

q5_f =[3.695293e-01 
    1.535163e-01 
    1.135120e-01 
    6.840704e-02];

range_error = [0.0527
    0.0169
    0.0077
    0.0031
    0.0011];

range_var = [0
    0.9040
    0.9473
    0.9831
    0.9923
    0.9969
    0.9989];

pareto_error = [1.1586e-06
    1.1827e-07
    0
    0
    0];

pareto_var = [0
    1
    1.0000
    1
    1
    1
    1];

vast_error = [6.5625e-07
    0
    0
    0
    0];


vast_var = [0
    1
    1.0000
    1
    1
    1
    1];

level_error = [0.0869
     0.0355
     0.0139
     0.0048
     9.3900e-04];

level_var = [0
    0.6201
    0.9131
    0.9645
    0.9861
    0.9952
    0.9991];

max_error = [0.0550
    0.0166
    0.0058
    0.0018
    8.0630e-04];

max_var = [0
    0.8935
    0.9450
    0.9834
    0.9942
    0.9982
    0.9992];

auto_var = [0
    0.3897
    0.6777
    0.9044
    0.9644
    0.9858
    0.9939];


t=[2 4 6 8];
figure 
box on 
set(gcf,'color','w')
hold on
plot(t,q2,'-rs','LineWidth',2)
plot(t,q2_f,':rs','LineWidth',2)
plot(t,q3,'-b','Marker','square','LineWidth',2)
plot(t,q3_f,':b','Marker','square','LineWidth',2)
plot(t, q4, 'Color', [0 0.5 0], 'LineStyle', '-','Marker','^','LineWidth',2)
plot(t, q4_f, 'Color', [0 0.5 0], 'LineStyle', ':','Marker','^','LineWidth',2)
plot(t,q5,'-k','Marker','diamond','LineWidth',2)
plot(t,q5_f,':k','Marker','diamond','LineWidth',2)

hold off
xlabel('Number of clusters')
ylabel('Reconstruction error')
legend('VQPCA, q=2','FPCA, q=2','VQPCA, q=3','FPCA, q=3','VQPCA, q=4','FPCA, q=4','VQPCA, q=4','FPCA, q=4')

figure
box on 
set(gcf,'color','w')
hold on
plot(auto_var,'r')
plot(max_var,'b')
plot(level_var,'k')
plot(vast_var,'g')
plot(pareto_var,'v')
plot(range_var,'m')
hold off
legend('auto','max','level','vast','pareto','range')
xlabel('Number of PCs')
ylabel('Cumulative explained variance')


percentage = [9.0186    -1.8897  6.0391 20.4236;          
              4.0193    20.2990 24.4804 32.2332;         
              26.3108   25.7902 25.5216 29.5864;         
              24.3841   21.0214 19.1828 17.8627];