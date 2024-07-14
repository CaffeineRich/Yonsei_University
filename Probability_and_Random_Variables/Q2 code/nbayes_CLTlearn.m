function [params]=nbayes_CLTlearn(traindata,trainlabels)
nclasses=2;
[n,d]=size(traindata);

for i=1:nclasses
    index=trainlabels==i; 
    ni=sum(index);
    params(1).classprobs(i)=ni/n;
    for j=1:d
        rows=find(index==1);
        Xjc=traindata(rows,j);
        njc=sum(Xjc,1);
        % E[Xj|C]
        params(j).E(i)=njc/ni;
        % Var[Xj|C]
        njc_2=sum(Xjc.^2,1);
        params(j).V(i)=njc_2/ni-(params(j).E(i)).^2;
        params(j).S(i)=sqrt(params(j).V(i));
    end
end

for i=1:nclasses
    for j=1:d
        for k=1:2
            P=normcdf([(k-0.5-params(j).E(i))/(params(j).S(i)+0.00001) (k+0.5-params(j).E(i))/(params(j).S(i)+0.00001)]);
            % P(Xj=k|C=ci)
            params(j).mcprobs(k,i)=P(2)-P(1);
        end
    end
end

for j=1:d
    for k=1:2
        % P(Xj=k)
        params(j).mprobs(k)=(params(j).mcprobs(k,1).*params(1).classprobs(1))+(params(j).mcprobs(k,2).*params(1).classprobs(2));
    end
end
