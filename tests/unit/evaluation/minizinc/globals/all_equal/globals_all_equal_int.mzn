% RUNS ON mzn20_fd
% RUNS ON mzn-fzn_fd
% RUNS ON mzn20_fd_linear
% RUNS ON mzn20_mip

% Test the integer all_equal global constraint.

include "all_equal.mzn";

array[1..10] of var 1..5: x;

constraint all_equal([]);
constraint all_equal([5, 5, 5, 5]);
constraint x[1] = 5;
constraint all_equal(x);
constraint all_equal([1, 2, 3]) == false;

solve satisfy;

output ["x = array1d(1..10, ", show(x), ");\n"];
