a :: String
a = ['a','b','c']

b :: (Char,Char,Char)
b = ('a','b','c')

c :: [(Bool,Char)]
c = [(False,'0'),(True,'1')]

d :: ([Bool],[Char])
d = ([False,True],['0','1'])

e :: [[a] -> [a]]
e = [tail, init, reverse]


bools ::[Bool]
bools = [True,True]

nums :: [[Int]]
nums = [[1],[2]]

add :: Int -> Int -> Int -> Int
add x y z = x+y+z

copy :: a -> (a,a)
copy y = (y,y)

apply :: (a -> b) -> a -> b
apply a b = a b

second ::  [Int] -> Int
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

compose :: (b -> a) -> (a -> b) -> a -> a
compose f g x = f (g x)

ntwice :: (a -> a) -> a -> Int -> a
ntwice f x 0 = x
ntwice f x n = f (ntwice f x (n-1))
