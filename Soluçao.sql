SELECT Nome, Ano FROM Filmes

SELECT Nome, Ano FROM Filmes
ORDER BY Ano

SELECT * FROM Filmes WHERE Nome = 'De Volta para o Futuro'

SELECT * FROM Filmes WHERE Ano = 1997

SELECT * FROM Filmes WHERE Ano > 2000

SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao

SELECT Ano, COUNT(Ano) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'

SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

SELECT Filmes.Nome, Generos.Genero 
FROM Filmes 
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

SELECT Filmes.Nome, Generos.Genero 
FROM Filmes 
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério'

SELECT Filmes.Nome, ElencoFilme.Papel, Atores.PrimeiroNome, Atores.UltimoNome
FROM Filmes
JOIN ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id
JOIN Atores ON ElencoFilme.IdAtor = Atores.Id