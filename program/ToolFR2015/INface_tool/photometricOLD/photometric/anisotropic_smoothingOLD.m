% The function applies the anisotropic smoothing normalization technique to an image
% 
% PROTOTYPE
% Y = anisotropic_smoothing(X,param);
% 
% USAGE EXAMPLE(S)
% 
%     Example 1:
%       X=imread('sample_image.bmp');
%       Y = anisotropic_smoothing(X);
%       figure,imshow(X);
%       figure,imshow(uint8(Y),[]);
% 
%     Example 2:
%       X=imread('sample_image.bmp');
%       Y = anisotropic_smoothing(X,20);
%       figure,imshow(X);
%       figure,imshow(uint8(Y),[]);
% 
%
%
% GENERAL DESCRIPTION
% The function performs photometric normalization of the image X using the
% anisotropic smoothing. The function performs anisotropic diffusion to 
% smooth the image and consequently to estimate the reflectance. For the 
% contrast measure we use Michelsons contrast rather than Webers. The 
% implementation here is rather slow, for an input grey-scale face image of 
% size 128 x 128 pixels it took me an average of approx. 4.5s on my PC. As
% it stands now the function is also limited to the use with square images.
% If I will have some spare time I will augment the function to be
% aplicable to rectangular images and to use multigrid methods, which
% iteratively estimate the luminance and are faster than a direct inversion
% of the sparse matrix (i.e, the inversion of the differential operator),
% which also limits the size of the image one is processing. It should be 
% noted that for an assessment of the technique this implementation should
% suffice. It is not my ultimate goal to optimize the performance of the functions
% in this toolbox, but rather to provide basic implementations of known
% photometric normalization techniques. If anyone adds any improvements to
% this function, they can send it to me and I will be happy to include the
% improved function in any future versions of the toolbox.
% 
% The function is intended for use in face recognition experiments and the
% default parameters are set in such a way that a "good" normalization is
% achieved for images of size 128 x 128 pixels. Of course the term "good" is
% relative. The default parameters are set as used in the chapter of the
% AFIA book.
%
%
% 
% REFERENCES
% This function is an implementation of the anisotropic smoothing technique 
% described in:
%
% R. Gross, and V. Brajovic, �An Image Preprocessing Algorithm for
% Illumination Invariant Face Recognition,� in: Proc. of the 4th 
% International Conference on Audio- and Video-Based Biometric Personal 
% Authentication, AVPBA�03, July 2003, pp. 10-18.
%
%
%
% INPUTS:
% X                     - a grey-scale image of arbitrary size
% param                 - a scalar value controling the relative importance 
%                         of the smoothness constraint, in the papers on 
%                         diffusion processes this parameter is usually 
%                         denoted as "lambda", default value "param=7" 
% 
%
% OUTPUTS:
% Y                     - a grey-scale image processed with the anisotropic
%                         smoothing
%                         
%
% NOTES / COMMENTS
% This function applies the anisotropic-smoothing-based normalization to the
% grey-scale image X. 
%
% The function was tested with Matlab ver. 7.5.0.342 (R2007b).
%
% 
% RELATED FUNCTIONS (SEE ALSO)
% histtruncate  - a function provided by Peter Kovesi
% normalize8    - auxilary function
% 
% ABOUT
% Created:        25.8.2009
% Last Update:    25.8.2009
% Revision:       1.0
% 
%
% WHEN PUBLISHING A PAPER AS A RESULT OF RESEARCH CONDUCTED BY USING THIS CODE
% OR ANY PART OF IT, MAKE A REFERENCE TO THE FOLLOWING PUBLICATIONS:
%
% 1. �truc V., Pave�i�, N.:Performance Evaluation of Photometric Normalization 
% Techniques for Illumination Invariant Face Recognition, in: Y.J. Zhang (Ed), 
% Advances in Face Image Analysis: Techniques and Technologies, IGI Global, 
% 2010.      
% 
% 2. �truc, V., �ibert, J. in Pave�i�, N.: Histogram remapping as a
% preprocessing step for robust face recognition, WSEAS transactions on 
% information science and applications, vol. 6, no. 3, pp. 520-529, 2009.
% (BibTex available from: http://luks.fe.uni-lj.si/sl/osebje/vitomir/pub/WSEAS.bib)
% 
%
% Copyright (c) 2009 Vitomir �truc
% Faculty of Electrical Engineering,
% University of Ljubljana, Slovenia
% http://luks.fe.uni-lj.si/en/staff/vitomir/index.html
% 
% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files, to deal
% in the Software without restriction, subject to the following conditions:
% 
% The above copyright notice and this permission notice shall be included in 
% all copies or substantial portions of the Software.
%
% The Software is provided "as is", without warranty of any kind.
% 
% August 2009

function Y = anisotropic_smoothing(X,param);

%% Parameter checking
Y=0;%dummy
if nargin == 1
    param = 7;
elseif nargin >2
    disp('Error! Wrong number of input parameters.')
    return;
end

%% Init. operations
X = padarray(normalize8(X),[3,3],'symmetric','both');
[a,b]=size(X);
X=normalize8(X,0); 
X=double(X+0.001);
im = zeros(a+2,b+2);
im(2:end-1,2:end-1)=X;


%% Compute contrast
pw1x = zeros(a+2,b+2);
pe1x = zeros(a+2,b+2);
ps1x = zeros(a+2,b+2);
pn1x = zeros(a+2,b+2);

%this we could do more elegantly but wont
[rows,cols]=size(im);
for i=1:rows
    for j=1:cols
        if (i>1) & (i<rows) & (j>1) & (j<cols) 
            
            %get pixels
            A=im(i,j);
            E=im(i,j+1);
            S=im(i+1,j);
            W=im(i,j-1);
            N=im(i-1,j);

            
            %Michelson's contrast inverse
            pw1x(i,j) = (A-W)/(abs(A+W)+0.001);
            pe1x(i,j) = (A-E)/(abs(A+E)+0.001);
            pn1x(i,j) = (A-N)/(abs(A+N)+0.001);
            ps1x(i,j) = (A-S)/(abs(A+S)+0.001);
            
        end
    end
end
pw1 = pw1x(2:end-1,2:end-1);
pe1 = pe1x(2:end-1,2:end-1);
ps1 = ps1x(2:end-1,2:end-1);
pn1 = pn1x(2:end-1,2:end-1);

pw1=normalize8(pw1,0)+0.001;
pe1=normalize8(pe1,0)+0.001;
ps1=normalize8(ps1,0)+0.001;
pn1=normalize8(pn1,0)+0.001;


%% Define the contrast
I = zeros(a*b,1);
pw11 = zeros(a*b,1);
pe11 = zeros(a*b,1);
pn11 = zeros(a*b,1);
ps11 = zeros(a*b,1);
counter=1;
for i=1:a
    for j=1:b
        I(counter,1) = X(i,j);
        pw11(counter,1) = pw1(i,j);
        ps11(counter,1) = ps1(i,j);
        pe11(counter,1) = pe1(i,j);
        pn11(counter,1) = pn1(i,j);
        counter=counter+1;
    end
end
clear  pw1 ps1 pe1 pn1 pw1x ps1x pe1x pn1x


%% Construction of sparse matrix S - in diagonal blocks of axb
x_index = zeros(1,3*(a-1)*a*b+a*b);
y_index = zeros(1,3*(a-1)*a*b+a*b);
s_value = zeros(1,3*(a-1)*a*b+a*b);
cont=1;
for p=1:a  

    %for main-diagonal block
    small_diag = zeros(a,b);
    block_num = p;
    
    
    for i=1:a
        for j=1:b
            param_location = (block_num-1)*b+j;
            k = (1+param*(pw11(param_location,1)+ps11(param_location,1)+pe11(param_location,1)+pn11(param_location,1)));
            if j==1 & j==i
                small_diag(i,j) = k;
                small_diag(i,j+1) = -param*pe11(param_location,1);
            elseif j~=1 & j~=b & j==i
                small_diag(i,j) = k;
                small_diag(i,j+1) = -param*pe11(param_location,1);
                small_diag(i,j-1) = -param*pw11(param_location,1);
            elseif j==b & j==i
                small_diag(i,j) = k;
                small_diag(i,j-1) = -param*pw11(param_location,1);
            end
        end
    end

    
    %the above-main-diagonal block
    if block_num>1
        above_diag = zeros(a,b);
        for i=1:a
            for j=1:b
                param_location = (block_num-1)*b+j;
                if j==i
                   above_diag(i,j) = -param*(ps11(param_location,1));
                end
            end
        end   
    end

    
    %the below-main-diagonal block
    if block_num>1
        below_diag = zeros(a,b);
        for i=1:a
            for j=1:b
                param_location = (block_num-2)*b+j;
                if j==i
                   below_diag(i,j) = -param*(pn11(param_location,1));
                end
            end
        end   
    end 
    

    if block_num==1
        [ind_y,ind_x]=meshgrid(((p-1)*b+1):(p*b),((p-1)*a+1):(p*a));
        leng = numel(ind_x);
        x_index(1,(cont-1)*leng+1:cont*leng) = ind_x(:)';
        y_index(1,(cont-1)*leng+1:cont*leng) = ind_y(:)';
        s_value(1,(cont-1)*leng+1:cont*leng) = small_diag(:)';
        cont=cont+1;
    else
        %main diagonal
        [ind_y,ind_x]=meshgrid((p-1)*b+1:p*b,(p-1)*a+1:p*a);
        leng = numel(ind_x);
        x_index(1,(cont-1)*leng+1:cont*leng) = ind_x(:)';
        y_index(1,(cont-1)*leng+1:cont*leng) = ind_y(:)';
        s_value(1,(cont-1)*leng+1:cont*leng) = small_diag(:)';
        cont=cont+1;
        
        
        %above diagonal
        [ind_y,ind_x]=meshgrid((p-2)*b+1:(p-1)*b,(p-1)*a+1:p*a);
        x_index(1,(cont-1)*leng+1:cont*leng) = ind_x(:)';
        y_index(1,(cont-1)*leng+1:cont*leng) = ind_y(:)';
        s_value(1,(cont-1)*leng+1:cont*leng) = above_diag(:)';
        cont=cont+1;
        
        
        %below diagonal
        [ind_y,ind_x]=meshgrid((p-1)*b+1:(p)*b,(p-2)*a+1:(p-1)*a);
        x_index(1,(cont-1)*leng+1:cont*leng) = ind_x(:)';
        y_index(1,(cont-1)*leng+1:cont*leng) = ind_y(:)';
        s_value(1,(cont-1)*leng+1:cont*leng) =  below_diag(:)';
        cont=cont+1;
    end
end

%% Construct sparse system and solve it using matlabs internal functions
S=sparse(y_index, x_index, s_value, a*b,a*b);
x=S\I;

%% Reshape result 
tmp = reshape(x,[a b]);
tmp = X./tmp';

%% Do some final post-processing (or not)
Y = normalize8(histtruncate(tmp(4:end-3,4:end-3),0.4,0.4));
   


