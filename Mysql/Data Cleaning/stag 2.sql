-- create stag 2 table
CREATE TABLE `layoffs_stag2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO layoffs_stag2
SELECT *,
ROW_NUMBER() 
OVER(PARTITION BY company, location, industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) as row_num
FROM layoffs_stag1
;

SELECT *
FROM layoffs_stag2
WHERE row_num > 1
;

DELETE
FROM layoffs_stag2
WHERE row_num > 1
;

SELECT *
FROM layoffs_stag2
;

-- Standerdizing data

-- removing whitespaces
SELECT company, TRIM(company)
FROM layoffs_stag2
;

UPDATE layoffs_stag2
SET company = TRIM(company)
;

-- fixing industy names
SELECT DISTINCT industry
FROM layoffs_stag2
ORDER BY 1
;

SELECT *
FROM layoffs_stag2
WHERE industry LIKE 'Crypto%'
;

UPDATE layoffs_stag2
SET industry = 'Crypto'
WHERE industry LIKE 'Crypto%'
;

-- fixing country names
SELECT DISTINCT country, TRIM(TRAILING "." FROM country)
FROM layoffs_stag2
ORDER BY 1
;

UPDATE layoffs_stag2
SET country = TRIM(TRAILING "." FROM country)
WHERE country LIKE 'United States%'
;

-- fixing date datatype to text -> DATE
SELECT `date`
FROM layoffs_stag2
;

UPDATE layoffs_stag2
set `date` = str_to_date(`date`, '%m/%d/%Y')
;

ALTER TABLE layoffs_stag2
MODIFY COLUMN `date` DATE
;

SELECT *
FROM layoffs_stag2
;

-- populate the blank/null industry
SELECT *
FROM layoffs_stag2
WHERE industry IS NULL
OR industry = ""
;

UPDATE layoffs_stag2
SET industry = null
where industry = ""
;

SELECT *
FROM layoffs_stag2
WHERE company LIKE "Airbnb"
;

SELECT t1.company, t1.industry, t2.industry
FROM layoffs_stag2 AS t1
JOIN layoffs_stag2 AS t2
	ON t1.company = t2.company
where t1.industry is null
AND t2.industry is not null
;

UPDATE layoffs_stag2 as t1
JOIN layoffs_stag2 AS t2
	ON t1.company = t2.company
SET t1.industry = t2.industry
where t1.industry is null
AND t2.industry is not null
;

-- removing null values
SELECT *
FROM layoffs_stag2
WHERE total_laid_off IS NULL
AND percentage_laid_off IS NULL
;

DELETE 
FROM layoffs_stag2
WHERE total_laid_off IS NULL
AND percentage_laid_off IS NULL
;

SELECT *
FROM layoffs_stag2
;

ALTER TABLE layoffs_stag2
DROP COLUMN row_num
;