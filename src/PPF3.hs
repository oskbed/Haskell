------1-------
halve :: [a] -> ([a],[a])
halve xs = if n `mod` 2 == 0
   then (take n xs, drop n xs)
   else ([],[])
   where n = div (length xs) 2

------2-------

--third :: [a] -> Maybe a
--third (x:y:z:zs) = Just z
--third _        = Nothing

third :: [a] ->  a
third (_ : _ : x : zs) = x

-----Luhn---

luhnDouble :: Int -> Int
luhnDouble x = if n > 9 then n - 9 else n
                where n = x*2


luhnlista :: [Int] -> [Int]
luhnlista a = reverse(n (reverse a))
  where n (_:y:as) = y*2



---

check :: Bool -> Bool -> Bool
check a b = if a then
              if b then True
              else False
            else False


-- (\x y z -> x*y*z)

luhn :: Int -> Int -> Int -> Int -> Bool
luhn x y z v | n `mod` 10 == 0 = True
  where n = luhnDouble x + y + luhnDouble z + v
