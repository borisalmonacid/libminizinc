% RUNS ON mzn20_fd
% RUNS ON mzn-fzn_fd

var int: x;

constraint (x = min (i in 3..2) ([1, 2, 3][i]) \/ x = 1);

solve satisfy;
