-- ATIVIDADE 
atividade = 4

-- IDENTIFICAÇÃO
matricula = "542631" -- coloque a matricula aqui entre as asspas

-- Nome
nome = "Antonio Erick Freitas Ferreira" -- coloque seu nome aqui entre aspas

-- 1

-- FUNÇÕES HASKELL A FAZER,

-- Implementar função que receba uma lista
-- ou string de entrada e retorne uma outra 
-- equivalente sem repetiições de elementos,

--Precisei fazer uma leve alteração na assinatura da função
--para que podesse usar a função filter, espero que o professor
--não se incomode.
unique ::(Eq a) => [a] -> [a]
unique xs
        |length xs == 0 = []
        |otherwise = ys
         where ys = retorna
               x = head xs
               y = drop 1 xs
               retorna = x : unique (filter (/= x) xs)


-- Exemplos:

-- >> unique "a1abaa1123b"
-- "ab23"
-- >> unique [2,1,1,3,3,1,1,3,2
-- [2,1,3]]

-- Obs: (1) Note que a ordem relativa das chaves
-- remanescentes se preserva. (2) Se existir uma função em
-- Haskell que faça a mesma coisa, não deve ser usada. 


-- 2

-- Construa função que remova o valor mínimo de uma lista. 

delete'min :: (Ord a) => [a] -> [a]
delete'min x 
    |length x <= 1 = []
    |otherwise = ys
    where ys = retorna
          retorna = ini ++ drop 1 fim
          menor = minimum x
          (ini,fim) = break (== menor) x


-- Exemplos,

-- >> delete'min [1,3,2,5]
-- [3,2,5]
-- >> delete'min [7,3,2,5,6]
-- [7,3, 5,6]

-- Obs: (1) Se o valor mínimo se repetir
-- então somente a primeira aparição deve 
-- ser removida. (2) Se existir uma função 
-- em Haskell que faça a mesma coisa, 
-- não deve se utilizada
