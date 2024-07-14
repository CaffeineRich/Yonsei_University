function [predictions]=nbayes_MLpredict(params,testdata)
nclasses=2;
ntest=size(testdata,1);
d=size(testdata,2);
predictions=zeros(ntest,1);

for m=1:ntest
    x=testdata(m,:);
    P=zeros(1,nclasses);
    for classi=1:nclasses
        P(classi)=0;
        for varj=1:d
            P(classi)=P(classi)+log(params(varj).cprobs(x(1,varj),classi));
        end
    end
    [mValue,mIndex]=max(P);
    predictions(m)=mIndex;
end
