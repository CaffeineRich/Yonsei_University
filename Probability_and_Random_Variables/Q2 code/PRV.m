% % Q 1
% clc;
% clear;
% 
% features=load('spam_features.txt');
% labels=load('spam_labels.txt');
% 
% % Train the Naive Bayes model
% n_examples=1500;
% N=size(labels,1);
% F=features(1:n_examples,:); 
% L=labels(1:n_examples,1);
% params=nbayes_learn(F,L);
% 
% % Make predicted labels
% t_data=features(1501:N,:);
% p_labels=nbayes_predict(params,t_data);
% 
% % Calculate the accuracy
% count=0;
% for i=1501:N
%     if labels(i)==p_labels(i-1500)
%         count=count+1;
%     end
% end
% 
% accuracy=(count/(N-1500))*100;
% fprintf('Train the Naive Bayes model on the first %d examples.\n',n_examples);
% fprintf('Test data set: rows 1501 through %d\n',N);
% fprintf('%f%% of all class labels are predicted correctly.\n',accuracy);



% % Q 2
% clc;
% clear;
% 
% features=load('spam_features.txt');
% labels=load('spam_labels.txt');
% 
% % Train the Naive Bayes model
% n_examples=500;
% N=size(labels,1);
% F=features(1:n_examples,:); 
% L=labels(1:n_examples,1);
% params=nbayes_learn(F,L);
% 
% % Make predicted labels
% t_data=features(1501:N,:);
% p_labels=nbayes_predict(params,t_data);
% 
% % Calculate the accuracy
% count=0;
% for i=1501:N
%     if labels(i)==p_labels(i-1500)
%         count=count+1;
%     end
% end
% 
% accuracy=(count/(N-1500))*100;
% fprintf('Train the Naive Bayes model on the first %d examples.\n',n_examples);
% fprintf('Test data set: rows 1501 through %d\n',N);
% fprintf('%f%% of all class labels are predicted correctly.\n',accuracy);



% % Q 3
% clc;
% clear;
% 
% features=load('spam_features.txt');
% labels=load('spam_labels.txt');
% 
% % Train the Naive Bayes model
% n_examples=10;
% N=size(labels,1);
% F=features(1:n_examples,:); 
% L=labels(1:n_examples,1);
% params=nbayes_learn(F,L);
% 
% % Make predicted labels
% t_data=features(1501:N,:);
% p_labels=nbayes_predict(params,t_data);
% 
% % Calculate the accuracy
% count=0;
% for i=1501:N
%     if labels(i)==p_labels(i-1500)
%         count=count+1;
%     end
% end
% 
% accuracy=(count/(N-1500))*100;
% fprintf('Train the Naive Bayes model on the first %d examples.\n',n_examples);
% fprintf('Test data set: rows 1501 through %d\n',N);
% fprintf('%f%% of all class labels are predicted correctly.\n',accuracy);



% % Q 4-1
% clc;
% clear;
% 
% features=load('spam_features.txt');
% labels=load('spam_labels.txt');
% 
% % Train the Naive Bayes model
% n_examples=1500;
% N=size(labels,1);
% F=features(1:n_examples,:); 
% L=labels(1:n_examples,1);
% params=nbayes_learn(F,L);
% 
% % Make predicted labels
% t_data=features(1501:N,:);
% p_labels=nbayes_MLpredict(params,t_data);
% 
% % Calculate the accuracy
% count=0;
% for i=1501:N
%     if labels(i)==p_labels(i-1500)
%         count=count+1;
%     end
% end
% 
% accuracy=(count/(N-1500))*100;
% fprintf('Train the Naive Bayes model on the first %d examples.\n',n_examples);
% fprintf('Test data set: rows 1501 through %d\n',N);
% fprintf('%f%% of all class labels are predicted correctly.\n',accuracy);



% % Q 4-2
% clc;
% clear;
% 
% features=load('spam_features.txt');
% labels=load('spam_labels.txt');
% 
% % Train the Naive Bayes model
% n_examples=500;
% N=size(labels,1);
% F=features(1:n_examples,:); 
% L=labels(1:n_examples,1);
% params=nbayes_learn(F,L);
% 
% % Make predicted labels
% t_data=features(1501:N,:);
% p_labels=nbayes_MLpredict(params,t_data);
% 
% % Calculate the accuracy
% count=0;
% for i=1501:N
%     if labels(i)==p_labels(i-1500)
%         count=count+1;
%     end
% end
% 
% accuracy=(count/(N-1500))*100;
% fprintf('Train the Naive Bayes model on the first %d examples.\n',n_examples);
% fprintf('Test data set: rows 1501 through %d\n',N);
% fprintf('%f%% of all class labels are predicted correctly.\n',accuracy);



% % Q 4-3
% clc;
% clear;
% 
% features=load('spam_features.txt');
% labels=load('spam_labels.txt');
% 
% % Train the Naive Bayes model
% n_examples=10;
% N=size(labels,1);
% F=features(1:n_examples,:); 
% L=labels(1:n_examples,1);
% params=nbayes_learn(F,L);
% 
% % Make predicted labels
% t_data=features(1501:N,:);
% p_labels=nbayes_MLpredict(params,t_data);
% 
% % Calculate the accuracy
% count=0;
% for i=1501:N
%     if labels(i)==p_labels(i-1500)
%         count=count+1;
%     end
% end
% 
% accuracy=(count/(N-1500))*100;
% fprintf('Train the Naive Bayes model on the first %d examples.\n',n_examples);
% fprintf('Test data set: rows 1501 through %d\n',N);
% fprintf('%f%% of all class labels are predicted correctly.\n',accuracy);



% % Q 5-1
% clc;
% clear;
% 
% features=load('spam_features.txt');
% labels=load('spam_labels.txt');
% 
% n_examples=1500;
% N=size(labels,1);
% F=features(1:n_examples,:); 
% L=labels(1:n_examples,1);
% params=nbayes_CLTlearn(F,L);
% 
% t_data=features(1501:N,:);
% p_labels=nbayes_CLTpredict(params,t_data);
% 
% count=0;
% for i=1501:N
%     if labels(i)==p_labels(i-1500)
%         count=count+1;
%     end
% end
% 
% accuracy=(count/(N-1500))*100;
% fprintf('Train with the first %d examples.\n',n_examples);
% fprintf('Test data set: rows 1501 through %d\n',N);
% fprintf('%f%% of all class labels are predicted correctly.\n',accuracy);



% % Q 5-3
% clc;
% clear;
% 
% features=load('spam_features.txt');
% labels=load('spam_labels.txt');
% 
% n_examples=10;
% N=size(labels,1);
% F=features(1:n_examples,:); 
% L=labels(1:n_examples,1);
% params=nbayes_CLTlearn(F,L);
% 
% t_data=features(1501:N,:);
% p_labels=nbayes_CLTpredict(params,t_data);
% 
% count=0;
% for i=1501:N
%     if labels(i)==p_labels(i-1500)
%         count=count+1;
%     end
% end
% 
% accuracy=(count/(N-1500))*100;
% fprintf('Train with the first %d examples.\n',n_examples);
% fprintf('Test data set: rows 1501 through %d\n',N);
% fprintf('%f%% of all class labels are predicted correctly.\n',accuracy);
