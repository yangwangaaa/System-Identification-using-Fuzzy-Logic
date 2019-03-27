clc
close all
w=0;
wk=[0.5 1.0 1.5 2.0 2.5 3.0];
t=0;
i=0;
%nnin=zeros(1001,4);

%for i=1:6
   % w=wk(i);
    [t,y]=sim('Hw6P1b',[0 15]);
    if i==1
        nnin=NN_In;
        
    else
       nnin=[nnin;NN_In];
      
    end
    
end