-- MÓDULOS

import System.IO
import System.Environment
-- não import mais nada!

--IDENTIFICAÇÃO

atividade = 8
matricula = "542631"
nome      = "Antonio Erick Freitas Ferreira"

-- ATIVIDADE

-- Construir programa que leia
-- na linha de comando três strings.
-- A primeira é um nome de arquivo válido, 
-- digamos, f. As outras são palavras,
-- w1 e w2. O programa deve susturuir
-- todas as aparições de w1 em f
-- por w2. Um arquivo de saída com as
-- modificações deve ser
-- a saída. Seu nome precisa se o de f
-- o arquivo de saída deter nome igual
-- com prefixo "subst-". .

-- MATENHA O .hs COM NOME
-- "atividade.hs" E CONSEQUENTEMENTE
-- EXECUTÁVEL COMO SENDO
-- "atividade08".

-- CÓDIGO

main = do
  args <- getArgs
  case args of
    [nomeArquivo, w1, w2] -> do
      conteudo <- readFile nomeArquivo
      let conteudoModificado = substituirTodas w1 w2 conteudo
          nomeArquivoSaida = "subst-" ++ nomeArquivo
      writeFile nomeArquivoSaida conteudoModificado

substituirTodas :: String -> String -> String -> String
substituirTodas w1 w2 = unlines . map (unwords . map substituir . words) . lines
     where
          substituir palavra
               | w1 == [x | x <- palavra, x `elem` ['a'..'z'] || x `elem` ['A'..'Z']] = w2 ++ [x | x <- palavra, x `notElem` ['a'..'z'] && x `notElem` ['A'..'Z']]
               | otherwise = palavra
    

-- INFORMAÇÕES

-- Compilação e execução

-- $ ghci atividade-08.hs
-- $ ./atividade-08 historia.txt Pedro Pablo

-- Onde "historia.txt" é um arquivo de texto
-- em que toda palavra "Pedro" é substituída
-- por "Pablo".

-- Exemplo

-- "historia.txt" de entrada,

-- Pedro vivia numa casa de pedra.
-- Mas Pdro queria morar numa 
-- casa de ouro. Pobre Pedro!

-- "subst-historia.txt" criado,

-- Peblo vivia numa casa de pedra.
-- Mas Pabloqueria morar numa 
-- casa de ouro. Pobre Pablo!
-- 




