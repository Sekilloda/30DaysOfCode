import Data.List (sortBy, sort)
import Data.Function(on)
p :: [(String, Integer, Integer, Double)]
p=[("A", -1,1,2.5), ("B", 4, 5, 1.0), ("C", 2, 7, 2.8333333), ("D",-4, 4, 0.75)]

fir::(a,b,c,d)->a
fir (x,_,_,_) = x

sec::(a, b, c, d)->b
sec (_, x, _, _)=x

thd::(a, b, c, d)->c
thd (_,_,x, _) = x

frd::(a, b, c, d)->d
frd (_,_,_,x)=x


sortedListTime n = sortBy (compare `on` frd) n

sortedListDistance