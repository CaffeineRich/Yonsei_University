function Mnew=pivot(M,p,q)
for i=1:size(M,1)
    if i==p
        Mnew(p,:)=M(p,:)/M(p,q);
    else
        Mnew(i,:)=M(i,:)-M(p,:)*(M(i,q)/M(p,q));
    end
end