--DESAFIO 1
SELECT
	Nome, 
	Ano
FROM Filmes

-- DESAFIO 2
SELECT 
	Nome, 
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano ASC

-- DESAFIO 3

SELECT 
	Nome, 
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- DESAFIO 4

SELECT 
	Nome, 
	Ano,
	Duracao
FROM Filmes
WHERE Ano = '1997'

-- DESAFIO 5

SELECT 
	Nome, 
	Ano,
	Duracao
FROM Filmes
WHERE Ano LIKE '2%'

-- DESAFIO 6

SELECT 
	Nome, 
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > '100' AND Duracao < '150'
ORDER BY Duracao ASC

-- DESAFIO 7

SELECT  
	Ano,
	COUNT(*)Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- DESAFIO 8

SELECT  
	*
FROM Atores
WHERE Genero = 'M'

-- DESAFIO 9

SELECT  
	*
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- DESAFIO 10

SELECT  
	F.Nome,
	G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG on F.Id = FG.IdFilme
INNER JOIN Generos G on G.Id = FG.IdGenero

-- DESAFIO 11

SELECT  
	F.Nome,
	G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG on F.Id = FG.IdFilme
INNER JOIN Generos G on G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério'

-- DESAFIO 12

SELECT  
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM Filmes F
INNER JOIN ElencoFilme EF on F.Id = EF.IdFilme
INNER JOIN Atores A on A.Id = EF.IdAtor
