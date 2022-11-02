CHALLENGE 1

SELECT A.au_id, A.au_fname,  A.au_lname, t.title, p.pub_name 
FROM authors A 
INNER JOIN titleauthor TA
ON A.au_id = TA.au_id 
INNER JOIN titles t 
ON t.title_id  = TA.title_id 
INNER JOIN publishers p
ON p.pub_id = t.pub_id;

CHALLENGE 2

SELECT A.au_id, A.au_fname,  A.au_lname, p.pub_name, COUNT(t.title)
FROM authors A 
INNER JOIN titleauthor ta
ON A.au_id = ta.au_id 
INNER JOIN titles t 
ON t.title_id  = TA.title_id 
INNER JOIN publishers p
ON p.pub_id = t.pub_id
GROUP BY p.pub_id, A.au_id;

CHALLENGE 3

SELECT A.au_id, A.au_fname,  A.au_lname, SUM(s.qty) AS 'TOTAL'
FROM authors A 
INNER JOIN titleauthor ta
ON A.au_id = ta.au_id 
INNER JOIN titles t 
ON t.title_id  = TA.title_id 
INNER JOIN sales s 
ON s.title_id = t.title_id 
GROUP BY a.au_id
ORDER BY TOTAL DESC
LIMIT 3;

CHALLENGE 4

SELECT A.au_id, A.au_fname,  A.au_lname, SUM(s.qty) AS 'TOTAL'
FROM authors A 
INNER JOIN titleauthor ta
ON A.au_id = ta.au_id 
INNER JOIN titles t 
ON t.title_id  = TA.title_id 
INNER JOIN sales s 
ON s.title_id = t.title_id 
GROUP BY a.au_id
ORDER BY TOTAL DESC
;