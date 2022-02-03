function [] = create_2d_animation(file_name,SOL,fps,dt)


ts = SOL.ts;
X = SOL.X;
Y = SOL.Y;
Xr = SOL.Xr;
Yr = SOL.Yr;

n = size(X,2);
m = size(Xr,1);



% dt = 1/fps;
% dt = 0.2;

t_vid = 0:dt:ts(end);

x_vid = interp1(ts,X,t_vid);
y_vid = interp1(ts,Y,t_vid);

xr_vid = interp1(ts,Xr',t_vid);
yr_vid = interp1(ts,Yr',t_vid);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


figure
j = 1;
%     x_m = x_vid(j,:)*mean_vec;
%     y_m = y_vid(j,:)*mean_vec;
xs = [x_vid(j,:),xr_vid(j,:)];
ys = [y_vid(j,:),yr_vid(j,:)];

x_m = 0.5*(max(xs)+min(xs));
y_m = 0.5*(max(ys)+min(ys));
dx = max(xs)-min(xs);
dy = max(ys)-min(ys);

j0 = max(1,j-20);
for k=1:m
    plot(xr_vid(j0:j,k),yr_vid(j0:j,k),'g.');
    hold on
    %         grid on
    plot(xr_vid(j,k),yr_vid(j,k),'g+','MarkerSize',7,'LineWidth',2);
end
%     axis equal

for i=1:n
    if i<=m
        plot(x_vid(j,i),y_vid(j,i),'r*','MarkerSize',7,'LineWidth',1.5);
    else
        plot(x_vid(j,i),y_vid(j,i),'bo','MarkerSize',4,'LineWidth',1.5);
    end
end
xlim([x_m-0.6*dx,x_m+0.6*dx])
ylim([y_m-0.6*dy,y_m+0.6*dy])

print -dpng ../Seminar/herd_2d_init.png
print -depsc2 ../Seminar/herd_2d_init.eps
close gcf
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
v = VideoWriter(file_name);
% fps = 40;
v.FrameRate = fps;
open(v);

% mean_vec = ones(n,1)/n;

figure

loops = length(t_vid);
F(loops) = struct('cdata',[],'colormap',[]);

for j = 1:loops
    
    
    %     x_m = x_vid(j,:)*mean_vec;
    %     y_m = y_vid(j,:)*mean_vec;
    xs = [x_vid(j,:),xr_vid(j,:)];
    ys = [y_vid(j,:),yr_vid(j,:)];
    
    x_m = 0.5*(max(xs)+min(xs));
    y_m = 0.5*(max(ys)+min(ys));
    dx = max(xs)-min(xs);
    dy = max(ys)-min(ys);
    
    j0 = max(1,j-20);
    for k=1:m
        plot(xr_vid(j0:j,k),yr_vid(j0:j,k),'g.');
        hold on
        %         grid on
        plot(xr_vid(j,k),yr_vid(j,k),'g+','MarkerSize',7,'LineWidth',2);
    end
    %     axis equal
    
    for i=1:n
        if i<=m
            plot(x_vid(j,i),y_vid(j,i),'r*','MarkerSize',7,'LineWidth',1.5);
        else
            plot(x_vid(j,i),y_vid(j,i),'bo','MarkerSize',4,'LineWidth',1.5);
        end
    end
    xlim([x_m-0.6*dx,x_m+0.6*dx])
    ylim([y_m-0.6*dy,y_m+0.6*dy])
    
    %     str = {'Scenario Time';[num2str(t_vid(j),3),' sec']};
    %     hText = text(-5, 8, str,'FontSize',16);
    
    drawnow
    F(j) = getframe;
    
    writeVideo(v,F(j));
    hold off
    %     delete(hText);
    
end

% movie(F,2)
close(v);
