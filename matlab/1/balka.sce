clear

L = 10;
EI=100;
 
function u = bendingUnderForces(xf)
    u = xf(:,1); 
    R = -sum(xf(:,2));
    M = xf(:,1)'*xf(:,2);    
endfunction

bendingUnderForces([..
 1, 10;..
 2, 20;..
 3, 30;..
])
 
