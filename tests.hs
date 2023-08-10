--    strip:: [Char] -> [Char]
--    strip xs = retiraSpaceRec (reverse (retiraSpaceRec (reverse xs)))

--    retiraSpaceRec :: [Char] -> [Char]
--    retiraSpaceRec (' ':xs) = retiraSpaceRec xs
--    retiraSpaceRec xs = xs

--    popWord :: [Char] -> ([Char],[Char])
--    popWord xs = 
--       let ys = strip xs
--           (primeiraPalavra,restante) = span (/= ' ') ys
--       in (primeiraPalavra,retiraSpaceRec restante)

--    test:: [Char] -> [ [Char] ]
--    test xs =
--       let frase = strip xs
--           palavrasSeparadas = words frase
--       in palavrasSeparadas
      
--       fiboSerie:: Int -> [Int]
--       fiboSerie n = take n [x| x<-[1..],fibo x]

-- fibo:: Int -> Int
-- fibo 1 = 1
-- fibo 2 = 1
-- fibo n = fibo(n-1) + fibo(n-2)

-- fiboSerie:: Int -> [Int]
-- fiboSerie n = take n [fibo x| x<-[1..]]

-- minimo:: [Int] -> Int
-- minimo [] = []
-- minimo [x] = x
-- minimo (x:a) = min x (minimo a)

-- ordena:: [Int] -> [Int]

-- ordena:: [Int] -> [Int]
-- ordena x = if (length x) == 0 then [] else (minimum x) : ordena (tail x)

-- test:: Int -> String
-- test x
--     | x > 10 = "Maior que dez"
--     | x < 10 = "Menor que dez"
--     | otherwise = "ERROR"


-- test':: String -> String
-- test' x
--     | x == "Nove" = test 9
--     | x == "Onze" = test 11
--     | otherwise = test 10


-- equation a b c 
--     | (a == 0 || delta < 0) = error "ERROR"
--     | (delta >= 0) = (x1, x2)
--     where delta = b*b - 4*a*c
--           x1 = (-b + sqrt (delta))/(2*a)
--           x2 = (-b - sqrt (delta))/(2*a)

-- equation' a b c =
--     let delta = b*b - 4*a*c
--         x1 = (-b + sqrt (delta))/(2*a)
--         x2 = (-b - sqrt (delta))/(2*a)
--     in if (delta >= 0 && a /= 0) then (x1,x2) else error "Error"

--test :: [a]->[a]
-- test xs
--     |length xs <= 1 = []
--     |otherwise = ys
--     where ys = retorna
--           retorna = ini ++ drop 1 fim
--           menor = minimum xs
--           (ini,fim) = break (== menor) xs



-- test' xs
--       | length xs == 0 = []
--       | otherwise = ys
--        where ys = retorna
--              x = head xs
--              y = drop 1 xs
--              retorna = x : test' (filter (/= x) xs)


--fun':: (a -> a -> a) -> a -> a -> a
--fun' fn a b = fn a b

test xs = filter (\x y->x `mod` 2 == 0 && y `mod` 2 == 1) xs