function [R] = eAngles2rotM(yaw, pitch, roll)
% [R] = eAngles2rotM(yaw, pitch, roll)
% Computes the rotation matrix R given the Euler angles (yaw, pitch, roll). 
% Inputs:
%	yaw: angle of rotation around the z axis ?
%	pitch: angle of rotation around the y axis ?
%	roll: angle of rotation around the x axis ?
% Outputs:
%	R: rotation matrix

R=[cosd(yaw)*cosd(pitch) cosd(yaw)*sind(pitch)*sind(roll)-cosd(roll)*sind(yaw) cosd(yaw)*cosd(roll)*sind(pitch) + sind(yaw)*sind(roll);
    cosd(pitch)*sind(yaw) sind(yaw)*sind(pitch)*sind(roll) + cosd(roll)*cosd(yaw) sind(yaw)*sind(pitch)*cosd(roll) - cosd(yaw)*sind(roll);
    -sind(pitch) cosd(pitch)*sind(roll) cosd(pitch)*cosd(roll)];
end




