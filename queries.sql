SELECT * FROM patients;
SELECT * FROM tissue_samples;
SELECT * FROM mosaic_variants;
SELECT * FROM disease_diagnosis;
SELECT * FROM surveillance_log;
SELECT patient_id, check_date, vaf_recorded, alert
FROM surveillance_log;
SELECT DISTINCT organ_name
FROM tissue_samples;
SELECT DISTINCT gene_name
FROM mosaic_variants;
SELECT DISTINCT mutation_type
FROM mosaic_variants;
SELECT DISTINCT country
FROM patients;
SELECT DISTINCT organ_name, sample_method
FROM tissue_samples;
SELECT DISTINCT gene_name, mutation_type
FROM mosaic_variants;
SELECT * FROM tissue_samples
WHERE organ_name = 'Brain';
SELECT * FROM surveillance_log
WHERE alert = 'Yes';
SELECT gene_name, vaf_percent, organ_name
FROM mosaic_variants
JOIN tissue_samples ON mosaic_variants.sample_id = tissue_samples.sample_id
ORDER BY vaf_percent DESC;
SELECT gene_name, vaf_percent, organ_name
FROM mosaic_variants
JOIN tissue_samples ON mosaic_variants.sample_id = tissue_samples.sample_id
ORDER BY vaf_percent ASC;
SELECT gene_name,
       vaf_percent AS mutated_cells_percent,
       100 - vaf_percent AS healthy_cells_percent
FROM mosaic_variants;
SELECT log_id,
       vaf_recorded,
       vaf_change,
       vaf_recorded - vaf_change AS previous_vaf
FROM surveillance_log;
SELECT p.patient_name,
       m.vaf_percent,
       d.years_to_diagnose,
       (m.vaf_percent * 2) + d.years_to_diagnose AS risk_score
FROM patients p
JOIN tissue_samples t    ON p.patient_id = t.patient_id
JOIN mosaic_variants m   ON t.sample_id  = m.sample_id
JOIN disease_diagnosis d ON p.patient_id = d.patient_id;
SELECT * FROM mosaic_variants
WHERE vaf_percent >32;
SELECT m.gene_name, m.vaf_percent, m.is_harmful, t.organ_name
FROM mosaic_variants m
JOIN tissue_samples t ON m.sample_id = t.sample_id
WHERE m.is_harmful = 'Yes'
AND (m.vaf_percent>30 OR t.organ_name = 'Blood');
SELECT disease_name, years_to_diagnose
FROM disease_diagnosis
WHERE disease_name LIKE '%Syndrome%';
SELECT COUNT(*)                    AS total_variants,
       ROUND(AVG(vaf_percent), 2)  AS avg_vaf,
       MAX(vaf_percent)            AS max_vaf,
       MIN(vaf_percent)            AS min_vaf,
       ROUND(SUM(vaf_percent), 2)  AS sum_vaf
FROM mosaic_variants;
USE sgss_rd;
SELECT m.gene_name, m.vaf_percent, t.organ_name
FROM mosaic_variants m
JOIN tissue_samples t ON m.sample_id = t.sample_id;
SELECT patient_id, patient_name, age
FROM patients
WHERE age>20;
SELECT patient_id, patient_name, age
FROM patients
ORDER BY patient_name,age;
SELECT p.patient_name,
       m.vaf_percent,
       d.years_to_diagnose,
       (m.vaf_percent * 2) + d.years_to_diagnose AS risk_score
FROM patients p
JOIN tissue_samples t ON p.patient_id = t.patient_id
JOIN mosaic_variants m ON t.sample_id = m.sample_id
JOIN disease_diagnosis d ON p.patient_id = d.patient_id;
SELECT gene_name, mutation_type, vaf_percent
FROM mosaic_variants
ORDER BY vaf_percent DESC;
SELECT gene_name,
       vaf_percent AS mutated_cells,
       (100 - vaf_percent) AS healthy_cells
       FROM mosaic_variants;
SELECT patient_name, age
FROM patients
WHERE age BETWEEN 25 AND 45;
SELECT MAX(age) AS maximum_age
FROM patients;
SELECT patient_name, MAX(age)
FROM patients
GROUP BY patient_name;
SELECT gene_name, MAX(vaf_percent)
FROM mosaic_variants
GROUP BY gene_name;
SELECT gene_name, AVG(vaf_percent)
FROM mosaic_variants
GROUP BY gene_name;
SELECT gene_name, COUNT(vaf_percent)
FROM mosaic_variants
GROUP BY gene_name;
SELECT sample_id, sample_method
FROM tissue_samples
WHERE sample_date BETWEEN '2022-4-7 ' AND '2023-7-7';