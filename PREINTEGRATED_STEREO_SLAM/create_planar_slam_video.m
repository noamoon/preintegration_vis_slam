

function [] = create_planar_slam_video(ts,xs,ls,file_name,fps,loops,PS)


v = VideoWriter(file_name);
% fps = 40;
v.FrameRate = fps;
open(v);

% mean_vec = ones(n,1)/n;

% loops = N;
F(loops) = struct('cdata',[],'colormap',[]);

figure()


% pose = Pose3() ;


plot(ls(:,1),ls(:,2),'k+','MarkerSize',7)

px = xs(:,1);
pz = xs(:,2);

px_min = min(ls(:,1));
px_max = max(ls(:,1));
px_m = (px_min+px_max)/2;
dx = (px_max-px_min);

pz_min = min(ls(:,2));
pz_max = max(ls(:,2));
pz_m = (pz_min+pz_max)/2;
dz = (pz_max-pz_min);

xlim([px_m-0.6*dx,px_m+0.6*dx])
ylim([pz_m-0.6*dz,pz_m+0.6*dz])
    
elapsed_t_cam = 0;
j_pose = 0;

ls_track = [];
ls_in = NaN(1,2);


for i=1:loops
    
    plot(px(1:i),pz(1:i))
    grid on
    hold on
    plot(ls(:,1),ls(:,2),'k+','MarkerSize',7)
    
    xlabel('x','fontsize',16)
    ylabel('z','fontsize',16)
    
    x = interp1(ts,xs,ts(i));
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
   
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    fov_cam_L = get_fov2D(x,PS,PS.t_cam_L);
    fov_cam_R = get_fov2D(x,PS,PS.t_cam_R);
    a = patch(fov_cam_L(1,:),fov_cam_L(2,:),'red');
    a.FaceAlpha = 0.2;
    
    a = patch(fov_cam_R(1,:),fov_cam_R(2,:),'green');
    a.FaceAlpha = 0.2;
    
    axis equal
    
    if mod(elapsed_t_cam,PS.dt_cam)==0
        elapsed_t_cam = 0;
        
        if i==1
            
            
            
        else
            
            
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            ls_in_fov_L = get_fov_keypoints(ls,fov_cam_L);
            ls_in_fov_R = get_fov_keypoints(ls,fov_cam_R);
            in_stereo = ls_in_fov_L&ls_in_fov_R;
            
            ls_in = ls(in_stereo,:);
            
        end
        
    end
    elapsed_t_cam = elapsed_t_cam+PS.dt_imu;
    
    xlim([px_m-0.6*dx,px_m+0.6*dx])
    ylim([pz_m-0.6*dz,pz_m+0.6*dz])

    plot(ls_in(:,1),ls_in(:,2),'g*','MarkerSize',7)
    drawnow
    F(i) = getframe;
    
%     dim = [.25 .65 .3 .3];
%     str = ['t=',num2str(ts(i),2)];
%     annotation('textbox',dim,'String',str,'FitBoxToText','on');

%     text(px_m-0.5*dx,pz_m+0.5*dz,  )
    
    writeVideo(v,F(i));
    hold off
    
    if i==2
        print -dpng unicycle_2d_init.png
        print -depsc2 unicycle_2d_init.eps
    end
            
end
%%

close(v);

