%--- Demo Sinusoidal ---%
clear;
close all;

addpath(genpath('Dataset'));
addpath(genpath('Filters'));
addpath(genpath('Functions'));

% load Sin;  % load clean image sequence
% img=Sin;
load SinGP005; % load noisy image sequence
img=SinGP005;
load SinD; % load ground truth depth map

[d,g1,g2,g3,g4,g5,g6,g7,g8,g9,g10,g11,g12,g13]=computeInitDandG(img); % compute initial depth map and proposed 13 guidance maps
g1Depth=computeGuidedDepthSin(d,g1); % compute guided depth maps corresponding to 19 guided filters while using first guidance map (G_avgi)
plotDepthMapsSynth(g1Depth,SinD,0.15,0.94); % Fig. 7 (14) in paper for clean (noisy)