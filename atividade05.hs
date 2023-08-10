-- ATIVIDADE 
atividade = 5

-- IDENTIFICAÇÃO
matricula = "542631" -- coloque a matricula aqui entre as asspas

-- Nome
nome = "Antonio Erick Freitas Ferreira" -- coloque seu nome aqui entre aspas

-- 1

-- FUNÇÕES HASKELL A FAZER,

-- Construa função que 
-- receba uma string e 
-- retorne a lista das 
-- tuplas das frequencias dos
-- seus caracteres
freq :: [Char] -> [(Char, Int)]
freq s
    | length s == 0 = []
    | otherwise = (letra,numero) : freq (filter (/= letra) s)
        where letra = head s
              numero = length (filter (== letra) s) 

-- Exemplos:

-- >> freq "abcdaadd"
-- [('a',3), ('b',1),('c',1),('d',3)]
-- >> freq "A casa"
-- [('A',1), ('a', 2), ('c',1), ('s', 1), (' ',1) ]

-- Se existir uma função em
-- Haskell que faça a mesma coisa, não use.

-- 2

-- Construa função que ordene
-- a lista de tuplas da questão
-- por valor de frequencia,

freqSort :: [(Char,Int)] -> [(Char, Int)]
freqSort list
    | length list == 0 = []
    | otherwise = freqSort small ++ [x] ++ freqSort big
        where x = head list
              xs = tail list
              small = [(letra,numero) | (letra,numero) <- xs, numero <= snd x]
              big = [(letra,numero) | (letra,numero) <- xs, numero > snd x]

-- Exemplos,

-- >> s = freqSort freq "aaaa22p"
-- [('p',1), ('2', 2), ('a', 4)]

-- Obs: Se existir uma função 
-- em Haskell que faça a mesma coisa, 
-- não use.
