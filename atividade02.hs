-- IDENTIFICAÇÃO
matricula = "542631" -- coloque a matricula aqui entre as asspas

-- Nome
nome = "Antonio Erick Freitas Ferreira" -- coloque seu nome aqui entre aspas

-- ATIVIDADE 2

-- Esta atuvidade visa construir uma 
-- função que determine os n primeitos números primos

-- Construa as funções a seguir,

-- determina os divisores de x excluindo o 1
divisores :: Int -> [Int]
divisores x = [xs | xs <- [2..x], x `mod` xs == 0] -- mude aqui

-- Determina se um números x é ou não primo
eprimo :: Int -> Bool
eprimo x =  if length (divisores x) == 1 then True else False-- mude aqui

-- cria lista com n primeiros primos
primos :: Int -> [Int]
primos n = take n ([xs | xs <- [1..], eprimo xs == True]) -- mude aqui



