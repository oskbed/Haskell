-- PROJEKT
{-
  -- INSTRUKCJA
  -- Zmień nazwę pliku tak, aby składała się z Towjego imienia i nazwiska.
  -- Pamiętaj, żeby plik miał rozszerzenie '.hs'. Zapisz go na pulpicie.
-}

{-
  -- ZADANIE 1 (3 pkt)
  -- Używając metody `list comprehension` zdefiniuj
  -- listę nazwaną "even1", która zawiera wszystkie liczby parzyste
  -- z przedziału [1..100].
-}

even1 :: [Int]
even1 = [x | x <- [2,4..100]]

{-
  -- ZADANIE 2 (3 pkt)
  -- Używając metody `list comprehension` zdefiniuj
  -- listę nazwaną "pairs", która zawiera wszystkie pary liczb całkowitych z
  -- przedziału [1..100], z których
  -- druga jest o jeden większa od pierwszej.
-}

pairs :: [(Int,Int)]
pairs = [(x,y) | x <- [1..100], y <- [1..100], x + 1 == y]

{-
  -- ZADANIE 3 (2 pkt)
  -- Zdefiniuj funkcję równoważności (nazwij ją equiv), między dwoma wartościami
  -- Boolowskimi, używając dowolnej metody.
  -- Nie zaponij o określeniu jej typu.
-}

equiv :: Bool -> Bool -> Bool
equiv x y = x == y

{-
  -- ZADANIE 4 (5 pkt)
  -- Zdefiniuj funkcję uogólnionej koniunkcji, która bierze jako argument
  -- listę elementów typu Bool ([Bool]), natomiast zwraca 'True', jeżeli
  -- wszystkie elementy listy to 'True'. W przeciwnym wypadku zwraca 'False'.
  -- Poniżej znajdują się przykłady działania funkcji:

  -- 1. genAnd [True, True] = True
  -- 2. genAnd [True, False] = False

  -- Poniżej znajduję się definicja uogólnonej alternatywy (genOr), na której
  -- możesz się wzorować.
-}

genOr :: [Bool] -> Bool
genOr []        = False
genOr (x:xs)
    | x         = x
    | otherwise = genOr xs

{-
  -- Oto przykład działania genOr:
  -- genOr [True] = True
-}

genAnd :: [Bool] -> Bool
genAnd []        = True
genAnd (x:xs)
    | x         = genAnd xs
    | otherwise = x


{-
  -- ZADANIE 5 (1 pkt)
  -- Określ jaki typ ma następujące wyrażenie:
  -- [genOr, genAnd]
  --
  -- [genOr, genAnd] :: [[Bool]-> Bool]
-}

[genOr, genAnd] :: [[Bool]-> Bool]

{-
  -- ZADANIE 6 (3 pkt)
  -- Zdefiniuj funkcję max, która bierze jako argumenty trzy RÓŻNE liczby całkowite
  -- i zwraca pozycję, na której znajduje się element największy. Poniżej znajdują
  -- się przykłady, pokazujące jak powinna działać taka funkcja. Nie zapomnij o
  -- określeniu jej typu.

  -- 1. max (5,10,15) = 3
  -- 2. max (100, 150, 1) = 2
  -- 3. max (2, 1, 0) = 1
-}

maks :: (Int, Int, Int) -> Int


--maks :: Int -> Int -> Int -> Int
--maks x y z =

{-
  -- ZADANIE 7 (3 pkt)
  -- Zdefiniuj funkcję fib, która birze jako argument liczbę n
  -- i zwraca n-tą liczbę ciągu fibonacciego, gdzie n-ta liczba ciągu
  -- fibonacciego jest dana wzorem:

  -- 1. Jeżeli n = 0, to fib(n) = 0
  -- 2. Jeżeli n = 1, to fib(n) = 1
  -- 3. Jeżeli n > 1, to fib(n) = fib(n-1) + fib(n-2)

  -- Przykłady:
  -- fib 3 = fib(3-1) + fib(3-2)
  --       = fib(2) + fib(1)
  --       = (fib(2-1) + fib(2-2)) + fib(1)
  --       = (fib(1) + fib(0)) + fib(1)
  --       = (1 + 0) + 1
  --       = 2
  --
  -- fib 4 = 3 (obliczenie analogiczne jak wyżej)
  -- fib 5 = 5 (obliczenie analogiczne jak wyżej)
-}

fib :: Int -> Int
