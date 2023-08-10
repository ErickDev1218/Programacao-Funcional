{--

Funções min max compara dois numeros
Funcoes minimum maximum compara numeros de uma lista
Funcao product faz o produto (como um somatorio) dos itens da lista

Algo parecido com um loop

[3**n | n <- [0..19]] potencias de 3

[3*n | n<-[0..9]] os 10 primeiros numeros divisiveis por 3

[x | x<-[1..], mod x 3==0, mod x 7 /= 0]
usando a funcao take da pra controlar uma lista infinita

take 10 [x | x<-[1..], mod x 3==0, mod x 7 /= 0]

Funcao utilizando tuplas

let f x y = (x^2, 2*x*y, y^2)

let par n = if  mod n 2 == 0 then "par" else "impar"

let take' i j x = take (j-i+1) (drop i x)

--}
