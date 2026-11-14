# Trybefy | Projeto SQL

Projeto acadêmico desenvolvido durante a formação em Desenvolvimento Web da **Trybe**, com foco na criação e manipulação de um banco de dados relacional usando **MySQL**.

O Trybefy simula uma plataforma de streaming de músicas em que usuários possuem planos de assinatura, ouvem músicas, consultam álbuns e seguem artistas. O trabalho foi organizado em **30 desafios SQL**, todos concluídos e aprovados nas avaliações do curso.

## Objetivo

Praticar a modelagem de dados e o uso de SQL para organizar informações, estabelecer relacionamentos e realizar consultas que respondem a perguntas sobre o funcionamento da plataforma.

## Tecnologias e conceitos

- **MySQL / SQL**
- Criação de banco de dados e tabelas (`CREATE DATABASE`, `CREATE TABLE`)
- Chaves primárias e estrangeiras; relacionamentos entre tabelas
- Inserção, atualização e exclusão de registros (`INSERT`, `UPDATE`, `DELETE`)
- Consultas com filtros, ordenação e limites (`WHERE`, `ORDER BY`, `LIMIT`)
- Cruzamento de dados com `INNER JOIN`
- Agregação e agrupamento (`COUNT`, `SUM`, `GROUP BY`, `HAVING`)

## Estrutura dos dados

O banco de dados é composto por sete tabelas:

| Tabela | Informações armazenadas |
| --- | --- |
| `plans` | Planos de assinatura |
| `users` | Usuários e seus respectivos planos |
| `artists` | Artistas |
| `albums` | Álbuns vinculados a artistas |
| `songs` | Músicas vinculadas a álbuns |
| `history_play_songs` | Histórico de músicas reproduzidas por usuários |
| `artists_followers` | Relacionamento entre usuários e artistas seguidos |

## Análises e consultas realizadas

Os 30 desafios avançam da estruturação do banco para consultas sobre assinaturas, catálogo musical, reproduções e seguidores. Abaixo, os principais objetivos das consultas, agrupados por assunto:

| Tema | O que foi feito | Desafios |
| --- | --- | --- |
| **Estrutura e manutenção dos dados** | Criação do banco, das tabelas e dos relacionamentos; inserção de dados; atualização de usuários e planos; exclusão de registros. | [01](src/01_challenge.sql), [02](src/02_challenge.sql), [06](src/06_challenge.sql), [07](src/07_challenge.sql), [10](src/10_challenge.sql), [15](src/15_challenge.sql), [16](src/16_challenge.sql), [23](src/23_challenge.sql), [27](src/27_challenge.sql) |
| **Usuários e assinaturas** | Listagem de usuários, filtros por status e nascimento, identificação do plano contratado e contagem de usuários por plano. | [03](src/03_challenge.sql)–[05](src/05_challenge.sql), [08](src/08_challenge.sql), [09](src/09_challenge.sql) |
| **Artistas, álbuns e músicas** | Busca de álbuns por título; contagem e listagem de álbuns por artista; consulta de músicas por álbum, duração e artista; cálculo da duração total dos álbuns e ranking de artistas por quantidade de músicas. | [11](src/11_challenge.sql)–[14](src/14_challenge.sql), [17](src/17_challenge.sql)–[22](src/22_challenge.sql) |
| **Histórico de reproduções** | Contagem de reproduções por usuário, identificação dos cinco álbuns mais reproduzidos e filtragem de artistas com mais de dez reproduções. | [24](src/24_challenge.sql)–[26](src/26_challenge.sql) |
| **Seguidores de artistas** | Contagem de artistas seguidos por usuário, identificação do artista mais seguido e consulta dos artistas com menos de cinco seguidores. | [28](src/28_challenge.sql)–[30](src/30_challenge.sql) |

Essas consultas foram desenvolvidas sobre **dados de exemplo**. O objetivo foi praticar como organizar e relacionar informações para responder a perguntas específicas, sem apresentar os resultados como indicadores reais de uma plataforma em operação.

## Exemplos de consultas

**Quais são os cinco álbuns com mais reproduções?**

No [desafio 25](src/25_challenge.sql), uma consulta relaciona álbuns, músicas e histórico de reprodução com `INNER JOIN`, contabiliza reproduções por álbum e retorna os cinco primeiros em ordem decrescente.

```sql
SELECT a.title AS 'Álbum',
       COUNT(h.id) AS 'Quantidade de músicas reproduzidas'
FROM Trybefy.albums AS a
INNER JOIN Trybefy.songs AS s ON s.album_id = a.id
INNER JOIN Trybefy.history_play_songs AS h ON h.song_id = s.id
GROUP BY a.title
ORDER BY COUNT(h.id) DESC, a.title ASC
LIMIT 5;
```

**Quais artistas têm menos de cinco seguidores?**

No [desafio 30](src/30_challenge.sql), a consulta relaciona artistas e seguidores, agrupa os resultados e aplica uma condição sobre a contagem com `HAVING`.

```sql
SELECT ar.name AS 'Artista',
       COUNT(af.artist_id) AS 'Total de seguidores'
FROM Trybefy.artists AS ar
INNER JOIN Trybefy.artists_followers AS af ON af.artist_id = ar.id
GROUP BY ar.name
HAVING COUNT(af.artist_id) < 5;
```

Esses exemplos mostram como combinar tabelas e agregar registros para obter informações úteis a uma análise.

## Organização do repositório

Os arquivos de solução estão na pasta [`src/`](src/), numerados de `01_challenge.sql` a `30_challenge.sql`. Os primeiros desafios estruturam e populam o banco; os seguintes incluem operações de manutenção e consultas a dados relacionados.

> **Contexto:** este é um exercício acadêmico com dados fornecidos para aprendizagem. Não representa uma aplicação comercial ou uma análise de dados reais de usuários.

---

## English summary

**Trybefy** is an academic SQL project completed during my Web Development training at **Trybe**. It simulates a music-streaming platform with subscription plans, users, artists, albums, songs, listening history, and artist followers.

I completed and passed **30 SQL challenges**, covering relational database creation, primary and foreign keys, data manipulation (`INSERT`, `UPDATE`, `DELETE`), multi-table queries (`INNER JOIN`), filtering, sorting, and aggregation (`GROUP BY`, `COUNT`, `HAVING`).

The challenges cover subscription data, music catalogs, listening history, and artist followers. Examples include identifying the five most-played albums and counting followers by artist. The solutions are available in the [`src/`](src/) directory. This is an educational project based on sample data, not a production system.
