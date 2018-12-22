function [br_h_index,br_w_index] = construct_region_index(sub_ri,bh_n,bw_n,sh_n,sw_n,height,width)

region_w_index=[];
region_h_index=[];
w_step=floor(width/bw_n/sw_n)*sw_n;
h_step=floor(height/bh_n/sh_n)*sh_n;

w_i = ceil(sub_ri/bh_n);
h_i = sub_ri-(w_i-1)*bh_n;

br_h_index = [(h_i-1)*h_step+1:h_i*h_step];
br_w_index = [(w_i-1)*w_step+1:w_i*w_step];

% for w_i=1:bw_n
%     for h_i=1:bh_n
%        region_w_index=[region_w_index;[(w_i-1)*w_step+1:w_i*w_step]];
%        region_h_index=[region_h_index;[(h_i-1)*h_step+1:h_i*h_step]];
%     end
% end

% br_h_index = region_h_index(sub_ri,:);
% br_w_index = region_w_index(sub_ri,:);
