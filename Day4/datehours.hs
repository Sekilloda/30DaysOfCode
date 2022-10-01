import Data.Time (diffDays, fromGregorian, DayOfWeek, dayOfWeek)
fir::(a,b,c)->a
fir (x,_,_) = x

sec::(a, b, c)->b
sec (_, x, _)=x

thd::(a, b, c)->c
thd (_,_,x) = x

date1 :: (Integer, Int, Int)
date1=(2022, 04, 04)

date2 :: (Integer, Int, Int)
date2=(2022, 04, 23)

hours::Int
hours=200

numberOfDays :: (Integer, Int, Int) -> (Integer, Int, Int) -> Integer
numberOfDays day1 day2 = diffDays (fromGregorian (fir day1)(sec day1)(thd day1)) (fromGregorian (fir day2)(sec day2)(thd day2))

starterDay :: (Integer, Int, Int) -> DayOfWeek
starterDay date = dayOfWeek (fromGregorian (fir date)(sec date)(thd date))

weekendCounter = 