time  = out_profile(:,1);
roll  = out_profile(:,8);
pitch = out_profile(:,9);
yaw   = out_profile(:,10);

figure;
plot(time, pitch, 'b', ...    % blue = pitch
     time, roll,  'r', ...    % red  = roll
     time, yaw,   'y', ...    % yellow = yaw
     'LineWidth',1.2);
grid on
xlabel('Time (s)')
ylabel('Angle (°)')
legend('Pitch','Roll','Yaw','Location','best')
title('Attitude Angles vs Time')
X = out_profile(:,2);
Y = out_profile(:,3);
Z = out_profile(:,4);

figure;
plot3(X, Y, Z, 'LineWidth',1.2);
grid on
xlabel('X (m)')
ylabel('Y (m)')
zlabel('Z (m)')
title('3D Trajectory')
axis equal
