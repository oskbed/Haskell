qsort :: [Int] -> [Int]
qsort [] = []
qsort (x:xs) = qsort larger ++ [x] ++ qsort smaller
    where
        smaller = [a|a <- xs, a <x]
        larger = [b|b <- xs, b >x]

last1 xs = xs !! n
    where
        n  = (length xs) -1


last2 xs = head (reverse xs)


init1 xs = reverse (tail (reverse xs))

init2 xs = reverse (drop 1 (reverse xs))

head1 :: [a] -> a
head1 (x:xs) = x


lastrec (x:[]) = x
lastrec (x:xs) = lastrec xs

initrec :: [a] -> [a]
initrec [y] = []
initrec (x:xs) = x:initrec xs

tail1 [a] -> [a]
tail1 (x:xs) = xs


elrec (x:xs) 0 = x
elrec (x:xs) n = elrec xs (n-1)


takerec y 0 = []
takerec (x:xs) n = x:takerec xs (n-1)

droprec :: [Int] Int -> [Int]
droprec y 0 = y
droprec (x:xs) n = droprec xs (n-1)


lengthrec :: [Int] -> Int
lengthrec [] = 0
lengthrec (x:xs) = 1 + lengthre

























































