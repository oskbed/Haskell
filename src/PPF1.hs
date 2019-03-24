someFunc :: IO ()
someFunc = putStrLn "Abc"

double :: Int -> Int
double x = x + x

qsort :: [Int] -> [Int]
qsort [] = []
qsort (x:xs) = qsort larger ++ [x] ++ qsort smaller
  where
    smaller = [a | a <- xs, a < x]
    larger = [b | b <- xs, b > x]




last1 :: [Int]
last1 (x:xs) = head (reverse(x:xs))

init1 xs = tail (reverse(xs))


lastrec (x:[]) = x
lastrec (x:xs) = lastrec xs

tail1 xs = xs

lengthrec [y] = y
lengthrec xs = lengthrec xs

last2 xs = head (reverse xs)


init1 xs = reverse (tail (reverse xs))

init2 xs = reverse (drop 1 (reverse xs))


head1 :: [a] -> a
head1 (x:xs) = x


lastrec (x:[]) = x
lastrec (x:xs) = lastrec xs


initrec [y] = []
initrec (x:xs) = x:initrec xs

tail1 (x:xs) = xs


elrec (x:xs) 0 = x
elrec (x:xs) n = elrec xs (n-1)


takerec ::
takerec y 0 = []
takerec (x:xs) n = x:takerec xs (n-1)


droprec :: [Int] -> [Int]
droprec y 0 = y
droprec (x:xs) n = droprec xs (n-1)


lengthrec :: [Int] -> Int
lengthrec [] = 0
lengthrec (x:xs) = 1 + lengthrec xs
