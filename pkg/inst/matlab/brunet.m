%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Original MATLAB/Octave code for NMF from Brunet et al.
%
% The original function 'nmf' was adapted to accept arguments to set the initial
% values for the matrix factors W and H.
%
% Original MATLAB codes can be found at:
% http://www.broadinstitute.org/mpr/publications/projects/NMF/nmf.m
% http://www.broadinstitute.org/publications/broad872
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [w,h]=nmf(v,r,verbose, w, h)
%
% Jean-Philippe Brunet
% Cancer Genomics 
% The Broad Institute
% brunet@broad.mit.edu
%
% This software and its documentation are copyright 2004 by the
% Broad Institute/Massachusetts Institute of Technology. All rights are reserved.
% This software is supplied without any warranty or guaranteed support whatsoever. 
% Neither the Broad Institute nor MIT can not be responsible for its use, misuse, 
% or functionality. 
%
% NMF divergence update equations :
% Lee, D..D., and Seung, H.S., (2001), 'Algorithms for Non-negative Matrix 
% Factorization', Adv. Neural Info. Proc. Syst. 13, 556-562.
%
% v (n,m) : N (genes) x M (samples) original matrix 
%           Numerical data only. 
%           Must be non negative. 
%           Not all entries in a row can be 0. If so, add a small constant to the 
%           matrix, eg.v+0.01*min(min(v)),and restart.
%           
% r       : number of desired factors (rank of the factorization)
%
% verbose : prints iteration count and changes in connectivity matrix elements
%           unless verbose is 0 
%
%% RG_START: Added by Renaud Gaujoux (2009)
% w : N (genes) x r matrix to used to seed the computation
% h : r x M (samples) matrix to used to seed the computation
%
% Note : both matrices w and h must be supplied to effectively seed the 
% computation. Otherwise the original random initialisation of both is 
% used.
%% RG_END: 
%           
% Note : NMF iterations stop when connectivity matrix has not changed 
%        for 10*stopconv interations. This is experimental and can be
%        adjusted.
%
% w    : N x r NMF factor
% h    : r x M NMF factor

% test for negative values in v
if min(min(v)) < 0
error('matrix entries can not be negative');
return
end
if min(sum(v,2)) == 0
error('not all entries in a row can be zero');
return
end


[n,m]=size(v);
stopconv=40;      % stopping criterion (can be adjusted)
niter = 2000;     % maximum number of iterations (can be adjusted)

cons=zeros(m,m);
consold=cons;
inc=0;
j=0;

%% RG_START: Modified by Renaud Gaujoux (2009)
%
% initialize random w and h (only if one of the factor is missing)
%
if nargin<5,
 fprintf('Use random W and H\n'), 
 w=rand(n,r); 
 h=rand(r,m);
end
%% RG_END

for i=1:niter

% divergence-reducing NMF iterations

x1=repmat(sum(w,1)',1,m);
h=h.*(w'*(v./(w*h)))./x1;
x2=repmat(sum(h,2)',n,1);
w=w.*((v./(w*h))*h')./x2;

% test convergence every 10 iterations

if(mod(i,10)==0)  
j=j+1;

% adjust small values to avoid undeflow
h=max(h,eps);w=max(w,eps);

% construct connectivity matrix
[y,index]=max(h,[],1);   %find largest factor
mat1=repmat(index,m,1);  % spread index down
mat2=repmat(index',1,m); % spread index right
cons=mat1==mat2;

if(sum(sum(cons~=consold))==0) % connectivity matrix has not changed
inc=inc+1;                     %accumulate count 
else
inc=0;                         % else restart count
end
if verbose                     % prints number of changing elements 
fprintf('\t%d\t%d\t%d\n',i,inc,sum(sum(cons~=consold))), 
end

if(inc>stopconv)
break,                % assume convergence is connectivity stops changing 
end 

consold=cons;

end
end