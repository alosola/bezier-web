clear all
close all

% Calculate time requiered to calculate Bézier curve
% using two different algorithms
% for a variety of different curves and step numbers

stepstart = 10;
stepend = 200;

numberofcases = 10;

% init
times_decas = zeros(stepend-stepstart,numberofcases);
times_clas = zeros(stepend-stepstart,numberofcases);


% Cycle number of steps
for S = stepstart:stepend
    
    tvec = linspace(0,1,S);  % each case will be tested with a varying number of steps
    
    
    % Cycle case number
    for C = 1:numberofcases
        
        P =  sample_cases(C); % select case number from a predefined sample
        
        % calculate with decasteljau's algorithm
        tic
            B_casteljau(P,tvec);
        times_decas((S-stepstart+1),C) = toc;
        
        % calculate with classical algorithm
        tic
            B_classic(P,tvec);
        times_clas((S-stepstart+1),C) = toc;
    end
end


%% Find ratios

div = times_clas./times_decas;
meandiv = mean(mean(div));
