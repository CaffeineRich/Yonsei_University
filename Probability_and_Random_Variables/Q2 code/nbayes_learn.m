function [params]=nbayes_learn(traindata,trainlabels)
% function [params] = nbayeslearn(traindata,trainlabels)
%
%  function to learn from data the probabilities for a naive Bayes model
%
%  Inputs
%     traindata: a n x d data matrix, d features/variables and n observations
%     trainlabels: a n x 1 vector of classlabels for traindata  
%     [Note to students: you can if you wish assume that all variables
%      are binary, taking values = 1 or 2]
% 
%  Output
%     params: a stucture for the parameters for a Naive Bayes classifier
%     params(j).mprobs(k): probability that variable j takes value k
%     params(j).cprobs(k,i): conditional probability
%                          of prob(variable j = value k | class = value i) 
%     params(1).classprobs(i): probability that class variable = i 

% YOU ARE FREE TO WRITE THIS CODE IN ANY
% WAY YOU LIKE AS LONG AS IT TAKES AND RETURNS THE ARGUMENTS ABOVE.
% THE OUTLINE BELOW IS JUST ONE EXAMPLE OF HOW YOU COULD WRITE THIS CODE. 
 
% ... define global parameters, etc............ 
nclasses=2;
[n,d]=size(traindata);

% Estimate class probabilities and conditional probabilities  
for i=1:nclasses
    index=trainlabels==i; 
    ni=sum(index);
    params(1).classprobs(i)=ni/n;   % estimate the probability of class i
    for j=1:d
        rows=find(index==1);
        Xjc=traindata(rows,j);
        for k=1:2
            njc=size(find(Xjc==k),1);
            % estimate prob(variable j = k | class i)
            params(j).cprobs(k,i)=(njc+0.5)/(ni+1);
        end
    end
end

% Estimate the probabilities p(x_j = value_k)
for j=1:d
    for k=1:2
        % estimate prob(variable x_j = k)
        params(j).mprobs(k)=(params(j).cprobs(k,1).*params(1).classprobs(1))+(params(j).cprobs(k,2).*params(1).classprobs(2));
    end
end