select score;
dense_rank() over(order by score desc ) as 'rank'
from Scores

--  Window function comes into picture ...for ranking and numbering
-- use of dense_rank()