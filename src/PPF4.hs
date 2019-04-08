square :: [Int] -> [Int]
square xs = [x ^2 | x <- xs ]

summ :: [Int] -> Int
summ xs = sum [x ^2 | x <- xs]

replicate' :: Int -> a -> [a]
replicate' n x = [x | _  <- [1..n]]

pyths :: Int -> [( Int , Int , Int )]
pyths n = [(x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2 + y^2 == z^2]

factors :: Int -> [Int]
factors n = [ x | x <- [1.. n] , n `mod` x == 0]

perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], sum (factors x) - x == x]

nestedComprehension xs ys = concat [[(x, y) | y <- ys] | x <- xs]


positions :: Eq a => a -> [a] -> [Int]
positions x xs = [i | (x', i) <- zip xs [0..], x == x']

find :: Eq a => a -> [(a, b)] -> [b]
find k t = [v | (k', v) <- t, k == k']

findPositions :: Eq a => a -> [a] -> [Int]
findPositions x xs = find x (zip xs [0..])


scalarproduct :: [Int] -> [Int] -> Int
scalarproduct xs ys = sum [x * y | (x, y) <- zip xs ys]
