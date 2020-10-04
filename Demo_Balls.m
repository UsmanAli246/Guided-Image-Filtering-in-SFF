%--- Demo Balls ---%
clear;
close all;

addpath(genpath('Dataset'));
addpath(genpath('Filters'));
addpath(genpath('Functions'));

% load Balls;  % load clean image sequence
% img=Balls;
load BallsGP003; % load noisy image sequence
img=BallsGP003;

[d,g1,g2,g3,g4,g5,g6,g7,g8,g9,g10,g11,g12,g13]=computeInitDandG(img); % compute initial depth map and proposed 13 guidance maps
g1Depth=computeGuidedDepthBalls(d,g1); % compute guided depth maps corresponding to 19 guided filters while using first guidance map (G_avgi)
plotDepthMapsReal(g1Depth); % Fig. 11 (19) in paper for clean (noisy)