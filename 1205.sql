SELECT 
	gyarto
FROM `&_termekek`
WHERE modell = (
	SELECT modell FROM `&_pc`
	WHERE ar = '2114'
	);

SELECT
	gyarto
FROM `&_termekek` t, `&_pc` p
WHERE t.modell = p.modell
AND ar = '2114';


-- Keressük meg a legdrágább legalább 3.0 sebességű PC gyártóit!

SELECT gyarto
FROM `&_termekek`
WHERE modell = ANY (
	SELECT modell
	FROM `&_pc`
	WHERE sebesseg >= 3.00
);

SELECT gyarto
FROM `&_termekek`
WHERE modell IN (
	SELECT modell
	FROM `&_pc`
	WHERE sebesseg >= 3.00);
	
	

-- Keressük meg a legdrágább nyomtatókat!
SELECT *
FROM `&_nyomtatok`
WHERE ar >= (
	SELECT AVG(ar)
	
(SELECT AVG(ar) FROM `&_nyomtatok`)
-- Akkor töröld ki bazdmeg



