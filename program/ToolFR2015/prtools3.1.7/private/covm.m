%COVM Compute covariance matrix for large datasets
% 
% 	C = covm(A)
% 
% Similar to C = cov(A) this routine computes the covariance matrix 
% for the datavectors stored in the rows of A. No large intermediate 
% matrices are created. If class(A) is 'dataset' then class(C) is 
% 'double'.

% Copyright: R.P.W. Duin, duin@ph.tn.tudelft.nl
% Faculty of Applied Physics, Delft University of Technology
% P.O. Box 5046, 2600 GA Delft, The Netherlands

function c = covm(a,n)
[m,k] = size(a);
if nargin < 2, n = 0; end
if n ~= 1 & n ~= 0
	error('Second parameter should be either 0 or 1')
end
[loops,n0,n1] = prmem(m,k);
if loops == 1
	c = +cov(+a,n);
	return
end
c = zeros(k,k);
u = ones(n0,1)*mean(a);
for j = 1:loops
	if j == loops, n = n1; else n = n0; end
	nn = (j-1)*n0;
	b = +a(nn+1:nn+n,:) - u(1:n,:);
	c = c + b'*b;
end
if n
	c = c/m;
else
	c = c/(m-1);
end