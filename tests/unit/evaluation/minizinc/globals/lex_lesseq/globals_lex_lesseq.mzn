% RUNS ON mzn20_fd
% RUNS ON mzn-fzn_fd
include "lex_lesseq.mzn";

%-----------------------------------------------------------------------------%
% lex_lesseq
%-----------------------------------------------------------------------------%

array[1..5] of var -100..100: lexeq_avi1 = [1,3,5,7,9];
array[4..8] of var -100..100: lexeq_avi2 = array1d(4..8, [1,3,5,7,9]);

constraint lex_lesseq(lexeq_avi1, lexeq_avi2);

solve satisfy;

output [
   "lexeq_avi1 = array1d(1..5, ", show(lexeq_avi1), ");\n",
   "lexeq_avi2 = array1d(4..8, ", show(lexeq_avi2), ");\n"
];
