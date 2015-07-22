function net = f24net()

f=1/100 ;
net.layers = {} ;
net.layers{end+1} = struct('type', 'conv', ...
    'weights', {{0.01*randn(5,5,3,64, 'single'), zeros(1, 64, 'single')}}, ...
    'stride', 1, ...
    'pad', 0) ;
net.layers{end+1} = struct('type', 'pool', ...
    'method', 'max', ...
    'pool', [3 3], ...
    'stride', 2, ...
    'pad', 0) ;
net.layers{end+1} = struct('type', 'relu') ;
net.layers{end+1} = struct('type', 'conv', ...
    'weights', {{0.01*randn(9,9,64,128, 'single'), zeros(1, 128, 'single')}}, ...
    'stride', 1, ...
    'pad', 0) ;
net.layers{end+1} = struct('type', 'relu') ;
net.layers{end+1} = struct('type', 'custom', ...
    'weights', {{0.01*randn(1,1,144,2, 'single'), zeros(1, 2, 'single')}}, ...
    'stride', 1, ...
    'pad', 0) ;
net.layers{end+1} = struct('type', 'relu') ;
net.layers{end+1} = struct('type', 'softmaxloss') ;