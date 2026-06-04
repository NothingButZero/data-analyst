-- main table
SELECT *
FROM layoffs
;

-- create stag table
CREATE TABLE layoffs_stag1
LIKE layoffs
;

INSERT INTO layoffs_stag1
SELECT *
FROM layoffs
;

SELECT *
FROM layoffs_stag1
;

-- create CTE table to idntify duplicat values
WITH row_num_table AS
(
SELECT *,
ROW_NUMBER() 
OVER(PARTITION BY company, location, industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) as row_num
FROM layoffs_stag1
)
SELECT *
FROM row_num_table
WHERE row_num > 1
;

