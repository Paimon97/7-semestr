clear;
rules = [0,1,0,1,0,2,1];

function xnext = nextState(x)
    
    n = length(x)';
    xnext = zeros(x);
    
    for i = 1:n
        s = 0;
        for j = -1:1
            s = s + x(1+modulo(i-1+j+n,n));
        end
        xnext(i) = rules(s+1);
    end
    
endfunction

function M = evolution(x0,N)
    
    nrows = N+1
    ncols = length(x0);
    M = zeros(nrows,ncols);
    
    M(1,:) = 0
    
    x=x0;
    for i = 0:nrows
        x = nextState(x);
        M(i+1,:) = x;
    end
    
endfunction

z = 50;
initState = [zeros(1,10),1,zeros(1,10)];

M = evolution(initState, 100);

Matplot(M+1);
