function w= ovo_1(w0,train)
%训练权值向量
w=w0;
count=0;
r=size(train);
while(1)
    error=0;
for i=1:r(1)
    if sign(w'*train(i,1:5)')~=train(i,6)
        w=w+train(i,6)*train(i,1:5)';
        error=error+1;
    end
end
count=count+1;
if error==0||count==2000
    break;
end
end
end

