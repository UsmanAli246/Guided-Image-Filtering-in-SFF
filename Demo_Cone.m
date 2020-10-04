%--- Demo Cone ---%
clear;
close all;

addpath(genpath('Dataset'));
addpath(genpath('Filters'));
addpath(genpath('Functions'));

% load Simc;  % load clean image sequence (simulated conical object)
% img=Simc;
load SimcGP02; % load noisy image sequence
img=SimcGP02;
load SimcD; % load ground truth depth map

[d,g1,g2,g3,g4,g5,g6,g7,g8,g9,g10,g11,g12,g13]=computeInitDandG(img); % compute initial depth map and proposed 13 guidance maps
g1Depth=computeGuidedDepthSimc(d,g1); % compute guided depth maps corresponding to 19 guided filters while using first guidance map (G_avgi)
plotDepthMapsSynth(g1Depth,SimcD,0.8,0.7); % Fig. 6 (13) in paper for clean (noisy)