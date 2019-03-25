
a :: String
a = ['a','b','c']

b :: (Char, Char, Char)
b = ('a', 'b', 'c')

c :: [(Bool, Char)]
c = [(False,'0'),(True,'1')]

d :: ([Bool], [Char])
d = ([False,True], ['0','1'])

e :: [[a] -> [a]]
e = [tail, init, reverse]

bools :: [Bool]
bools = [True,False]

nums :: [[Int]]
nums = [[1,2,3]]

add :: Int -> Int -> Int -> Int
add  x y z = x+y+z

copy :: a -> (a,a)
copy x = (x,x)

apply :: (a -> b) -> a -> b
apply x y = x y

second :: [Int] -> Int
second xs = head (tail xs)

swap :: (a,b) -> (b,a)
swap (x,y) = (y,x)

pair :: a -> b -> (a,b)
pair x y = (x,y)

double :: Int -> Int
double x = x*2

palindrome :: String -> Bool
palindrome xs = reverse xs == xs

twice :: (a -> a) -> a -> a
twice f x = f (f x)

compose :: (b -> c) -> (a -> b) -> a -> c
compose f g x = f (g x)


ntwice :: (a -> a) -> a -> Int -> a 
ntwice f x 0 = x
ntwice f x n = ntwice f (f x) (n-1)


abs1 :: Int -> Int
abs1 n = if n >= 0 then n else -n


add1 :: Int  -> (Int  -> Int)
add1 = \x -> (\y -> x + y)

halve :: [a] -> ([a],[a])
halve xs = (take n xs, drop n xs)
    where n = div (length xs) 2
{-
halve xs | n `mod` 2 == 0 = (take n xs, drop n xs)
         | n == 0         = ([],[])
         | otherwise      = (take n xs, drop n xs)
    where n = div (length xs) 2
-}

third :: [a] -> Maybe a
third xs | length xs > 3  = Just (head (tail (tail xs)))
third xs | length xs <= 3 = Nothing

third1 :: [a] -> Maybe a
third1 [_,_,y,ys] = Just y
third1 _ = Nothing

safetail :: [a] -> [a]
safetail xs | null1 xs == True = tail xs
            | otherwise = []
--null1 :: [a] -> Bool
    where
        null1 xs | length xs > 0 = True
                 | otherwise = False


(|||) :: Bool -> Bool -> Bool
False ||| False = False
_ ||| _ = True


koniunkcja :: Bool -> Bool -> Bool
koniunkcja x y = if x == True then 
                    if y == True then True
                    else False
                 else False




koniunkcja1 :: Bool -> Bool -> Bool
koniunkcja1 x y = if x == True then y else False















































