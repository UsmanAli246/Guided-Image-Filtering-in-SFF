%--- Demo Kitchen ---%
clear;
close all;

addpath(genpath('Dataset'));
addpath(genpath('Filters'));
addpath(genpath('Functions'));

% load Kitchen;  % load clean image sequence
% img=Kitchen;
load KitchenGP003; % load noisy image sequence
img=KitchenGP003;

[d,g1,g2,g3,g4,g5,g6,g7,g8,g9,g10,g11,g12,g13]=computeInitDandG(img); % compute initial depth map and proposed 13 guidance maps
g1Depth=computeGuidedDepthKitchen(d,g1); % compute guided depth maps corresponding to 19 guided filters while using first guidance map (G_avgi)
plotDepthMapsReal(g1Depth); % Fig. 12 (20) in paper for clean (noisy)