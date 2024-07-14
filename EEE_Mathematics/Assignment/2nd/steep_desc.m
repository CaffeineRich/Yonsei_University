function [x,N]=steep_desc(grad,xnew)

epsilon_x = 10^(-6);
epsilon_g = 10^(-6);
max_iter=1000*length(xnew);

for k = 1:max_iter
    xcurr=xnew;
    g_curr=feval(grad,xcurr);
    if norm(g_curr) <= epsilon_g
        disp('Terminating: Norm of gradient less than');
        disp(epsilon_g);
        k = k-1;
            break;
    end %if
    
    alpha=linesearch_secant(grad,xcurr,-g_curr);

    xnew = xcurr-alpha*g_curr;

    if norm(xnew-xcurr) <= epsilon_x*norm(xcurr)
        disp('Terminating: Norm of difference between iterates less than');
        disp(epsilon_x);
        break;
    end %if

    if k == max_iter
        disp('Terminating with maximum number of iterations');
    end %if
end %for

disp('Final point = ');
disp(xnew');
disp('Number of iterations = ');
disp(k);