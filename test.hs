x :: Int
x = 3

f :: Int -> Int
f i = i + 10

ff :: Int -> Int
ff = \i -> i + 10

fff :: Int -> Int -> Int
fff = \a b -> a + b * 2

ffff :: (Int -> Int) -> Int
ffff k = k 20

g :: a -> a
g s = s

pie = 3

data Shape = Circle Integer | Rectangle Integer Integer | 
    Triangle Integer Integer Integer 
    deriving Show

instance Eeq Shape where
    (===) = \s1 s2 -> False 

instance Eeq Bool where
    (===) = (==)

class Eeq a where
    (===) :: a -> a -> Bool

perimeter :: Shape -> Integer
perimeter (Circle r) = r * 2 * pie
perimeter (Rectangle x y) = (x + y) * 2
perimeter (Triangle x y z) = x + y + z

data Two a = Two a a 
    deriving (Show, Eq)

addTwo :: Two Integer -> Integer
addTwo (Two x y) = x + y
