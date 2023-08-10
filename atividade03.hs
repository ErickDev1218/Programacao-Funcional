-- IDENTIFICAÇÃO
matricula = "542631" -- coloque a matricula aqui entre as asspas

-- Nome
nome = "ANTONIO ERICK FREITAS FERREIRA" -- coloque seu nome aqui entre aspas

-- ATIVIDADE 3

-- Remove espaços existentes no início
-- e final de uma strings dada.

strip :: [Char] -> [Char]
strip xs = retiraSpaceRec (reverse (retiraSpaceRec (reverse xs)))

retiraSpaceRec :: [Char] -> [Char]
retiraSpaceRec (' ':xs) = retiraSpaceRec xs
retiraSpaceRec xs = xs

-- Separa a primeira palavra do restante
-- de uma string (Palavras são substeings 
-- separadas por espaços). Exemplo,

-- >> popWord "casa  de tijolos"
-- ["casa", "de tijolos"]'
-- >>

popWord :: [Char] -> ([Char],[Char])
popWord xs = 
    let ys = strip xs
        (primeiraPalavra,restante) = span (/= ' ') ys
    in (primeiraPalavra,retiraSpaceRec restante)


-- Processa uma string e retorna 
-- a lista de suas palavras. OBS: 
-- palavras não devem ter espaços 
-- extemos e nem serem vazias. Exemplo,

-- >> splitStr " The   fox jumped  "
-- ["The", "fox", "jumped"]

splitStr :: [Char] -> [ [Char] ]
splitStr xs = 
    let frase = strip xs
        palavrasSeparadas = words frase
      in palavrasSeparadas


