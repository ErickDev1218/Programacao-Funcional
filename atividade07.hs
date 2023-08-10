
-- IDENTIFICAÇÃO

atividade = 7

nome = "Antonio Erick Freitas Ferreira"

matricula = "542631"

-- TIPO DE DADOS

-- Representa polinômio como 
-- um vetor de seus coeficientes

-- através de seus coeficientes

data Poly = Poly [Float]

-- IMPLEMENTAR
--newtype FazPoly = FazPoly [Float]

-- Instância de Show que permite 
-- imprimir um polinômio

fazPoly (Poly xs)
    | null xs = ""
    | last xs == 0 = fazPoly (Poly (init xs))
    | length xs == 1 = show (head xs)
    | otherwise = fazPoly (Poly (init xs)) ++ value (last xs) ++ grau (length xs-1)
    where
        value k
            | k == 0 = ""
            | length xs == 1 && k > 0 =show k
            | k > 0 = "+" ++ show k
            | otherwise = show k
        grau j
            | j == 0 = ""
            | j == 1 = "x"
            | otherwise = "x^" ++ show j

instance Show Poly where
    show (Poly []) = ""
    show (Poly xs) = if head result == '+' then  drop 1 result else result
                where result = fazPoly (Poly xs)

-- Exemplos
-- Main> Poly [1,2,3]
-- 1.0+2.0x+3.0X^2
-- *Main> Poly [-2,1,0]
-- -2.0+1.0x
-- *Main> Poly [-1,0,-1]
-- -1.0-1.0X^2


--AVALIAÇÃO DE POLINÔMIOS

-- Avalia um poliômio P 
-- dado x, ou seja, calcula P(x) 

avalPoly :: Poly -> Float -> Float
avalPoly (Poly coeffs) x = foldr (\c acc -> x*acc + c) 0 coeffs


-- Exemplos
-- *Main> avalPoly (Poly [1,2,3]) 5
-- 86.0
-- *Main> avalPoly (Poly [-1,1,3]) 5
-- 79.0
-- *Main> avalPoly (Poly [11,0,2,2]) 3
-- 83.0

