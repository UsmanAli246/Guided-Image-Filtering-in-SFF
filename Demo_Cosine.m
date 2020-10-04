%--- Demo Cosine ---%
clear;
close all;

addpath(genpath('Dataset'));
addpath(genpath('Filters'));
addpath(genpath('Functions'));

% load Cos;  % load clean image sequence
% img=Cos;
load CosGP005; % load noisy image sequence
img=CosGP005;
load CosD; % load ground truth depth map

[d,g1,g2,g3,g4,g5,g6,g7,g8,g9,g10,g11,g12,g13]=computeInitDandG(img); % compute initial depth map and proposed 13 guidance maps
g1Depth=computeGuidedDepthCos(d,g1); % compute guided depth maps corresponding to 19 guided filters while using first guidance map (G_avgi)
plotDepthMapsSynth(g1Depth,CosD,0.85,0.75); % Fig. 8 (15) in paper for clean (noisy)