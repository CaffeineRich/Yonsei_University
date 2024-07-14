function [predictions]=nbayes_predict(params,testdata)
% function [predictions] = nbayes_predict(params,testdata)
%
%  function to make class label predictions on test data,
%  using a naive Bayes model (as described by the structure "params") 
%
%                                     
%  Inputs 
%     params: a stucture for the parameters for a Naive Bayes classifier
%     params(j).mprobs(k): probability that variable j takes value k
%     params(j).cprobs(k,i): conditional probability
%                          of prob(variable j = value k | class = value i) 
%     params(1).classprobs(i): probability that class variable = i 
%
%     testdata: n x d data matrix, d features/variables and n observations 
%
%  Outputs
%     predictions: n x 1 vector of class predictions  (for 178 these will
%        take values 1 or 2)

% YOU ARE FREE TO WRITE THIS CODE IN ANY
% WAY YOU LIKE AS LONG AS IT TAKES AND RETURNS THE ARGUMENTS ABOVE.
% THE OUTLINE BELOW IS JUST ONE EXAMPLE OF HOW YOU COULD WRITE THIS CODE.
  
% .....determine the number of test data points, etc.....
nclasses=2;
ntest=size(testdata,1);
d=size(testdata,2);
predictions=zeros(ntest,1);

% for each of the test data points
for m=1:ntest
    x=testdata(m,:);
    % for each class value calculate log[ p(x|c) p(c) ]
    P=zeros(1,nclasses);
    for classi=1:nclasses
        P(classi)=log(params(1).classprobs(classi));
        for varj=1:d
            P(classi)=P(classi)+log(params(varj).cprobs(x(1,varj),classi));
        end
    end
    % select the maximum value over all classes as the predicted class
    [mValue,mIndex]=max(P);
    % store the class prediction for each test data point 
    predictions(m)=mIndex;
end
