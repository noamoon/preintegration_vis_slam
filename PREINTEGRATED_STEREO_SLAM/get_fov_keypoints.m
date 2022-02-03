function ls_in_fov = get_fov_keypoints(ls,fov_area)


ls_in_fov = inpolygon(ls(:,1),ls(:,2),fov_area(1,:),fov_area(2,:));
% 
% key_ls = ls(ls_in_fov,:);