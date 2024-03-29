function [y1,xf1] = timeseriesxay(x1,xi1)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 30-Mar-2019 20:03:32.
%
% [y1,xf1] = myNeuralNetworkFunction(x1,xi1) takes these arguments:
%   x1 = 1xTS matrix, input #1
%   xi1 = 1x1 matrix, initial 1 delay states for input #1.
% and returns:
%   y1 = 1xTS matrix, output #1
%   xf1 = 1x1 matrix, final 1 delay states for input #1.
% where TS is the number of timesteps.

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = 1;
x1_step1_gain = 0.0002000200020002;
x1_step1_ymin = -1;

% Layer 1
b1 = [-12.005593850601482;8.735970118474544;-5.4484341417902824;0.24588084040105007;1.6790742495665529;4.6109887633000275;11.756133517578368;-30.128479442543892;80.49940172564142;252.70761801283953];
IW1_1 = [12.414795077125554;-10.605371872996214;8.3856231373866095;-0.84957535806050499;1.2761249139737345;4.970639291158311;12.330118560706811;-30.803112970840996;80.979706067096998;250.32694688915501];

% Layer 2
b2 = -30.683790276308748;
LW2_1 = [0.0013343649713645224 -0.00090645561304135609 0.00058576322809459106 -0.14612075262413923 0.70634336440875167 0.11399892200805534 0.11136632717049141 -0.12538766504909488 0.19531376977220474 30.354367644068283];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 0.234819142298619;
y1_step1_xoffset = 0.693147180559945;

% ===== SIMULATION ========

% Dimensions
TS = size(x1,2); % timesteps

% Input 1 Delay States
xd1 = mapminmax_apply(xi1,x1_step1_gain,x1_step1_xoffset,x1_step1_ymin);
xd1 = [xd1 zeros(1,1)];

% Allocate Outputs
y1 = zeros(1,TS);

% Time loop
for ts=1:TS
    
    % Rotating delay state position
    xdts = mod(ts+0,2)+1;
    
    % Input 1
    xd1(:,xdts) = mapminmax_apply(x1(:,ts),x1_step1_gain,x1_step1_xoffset,x1_step1_ymin);
    
    % Layer 1
    tapdelay1 = reshape(xd1(:,mod(xdts-1-1,2)+1),1,1);
    a1 = tansig_apply(b1 + IW1_1*tapdelay1);
    
    % Layer 2
    a2 = b2 + LW2_1*a1;
    
    % Output 1
    y1(:,ts) = mapminmax_reverse(a2,y1_step1_gain,y1_step1_xoffset,y1_step1_ymin);
end

% Final delay states
finalxts = TS+(1: 1);
xits = finalxts(finalxts<=1);
xts = finalxts(finalxts>1)-1;
xf1 = [xi1(:,xits) x1(:,xts)];
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings_gain,settings_xoffset,settings_ymin)
y = bsxfun(@minus,x,settings_xoffset);
y = bsxfun(@times,y,settings_gain);
y = bsxfun(@plus,y,settings_ymin);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n)
a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings_gain,settings_xoffset,settings_ymin)
x = bsxfun(@minus,y,settings_ymin);
x = bsxfun(@rdivide,x,settings_gain);
x = bsxfun(@plus,x,settings_xoffset);
end
