# Somatic-Mosaicism-Database
A relational database system designed for storing, managing, and analyzing information related to **somatic mosaic variants**. The project focuses on organizing genomic variation data, patient information, and variant annotations into a structured database model for efficient querying and biological interpretation.

---

## 📌 Project Overview

Somatic mosaicism refers to genetic variations that occur after fertilization and are present only in a subset of cells within an individual. These variants can contribute to various genetic disorders, cancer development, and disease progression.

The **Somatic Mosaicism Database (RareGen)** project provides a database framework to store and retrieve information about:

* Patient records
* Genomic variants
* Gene information
* Disease associations
* Variant annotations
* Clinical observations

The database is designed using a relational database approach with optimized schema design and SQL-based querying.

---

## 🎯 Objectives

* Design a structured database for somatic mosaic variant data.
* Implement relationships between patients, variants, genes, and diseases.
* Enable efficient retrieval of genomic and clinical information.
* Demonstrate database management concepts in a bioinformatics context.

---

## 🗂️ Repository Structure

```
Somatic-Mosaicism-Database
│
├── README.md
├── report.pdf
├── schema.sql
├── queries.sql
├── ER_Diagram.png
│
└── screenshots
      ├── patients_table.png
      └── join_query_result.png
```

---

## 🧬 Database Schema

The database consists of multiple interconnected tables representing:

### Patient Information

Stores demographic and clinical details of individuals.

### Variant Information

Contains genomic variant details including variant identifiers and annotations.

### Gene Information

Stores information about genes associated with detected variants.

### Disease Association

Links genetic variants with related diseases and clinical conditions.

---

## 🔗 Entity Relationship Diagram

The database relationships are represented using an ER diagram:

![ER Diagram](ER_Diagram.png)

---

## 🛠️ Technologies Used

* **SQL** – Database creation and querying
* **Relational Database Management System (RDBMS)**
* **ER Modeling** – Database design and relationships
* **Bioinformatics Concepts** – Genomic variants and disease associations

---

## 📊 Example Queries

The project includes SQL queries for:

* Retrieving patient information
* Joining multiple biological entities
* Filtering variant-related records
* Extracting disease-associated genomic information

Example:

```sql
SELECT *
FROM Patients;
```

---

## 📷 Results & Screenshots

### Patients Table

![Patients Table](screenshots/patients_table.png)

### Join Query Result

![Join Query Result](screenshots/join_query_result.png)

---

## 🚀 Future Improvements

Possible extensions of this database include:

* Integration with real genomic variant databases
* Adding automated variant annotation pipelines
* Implementing a web-based user interface
* Connecting with bioinformatics analysis workflows

---

## 👩‍💻 Author

**Maham Amjad**
BS Bioinformatics Student
University of Agriculture Faisalabad

---

## 📄 License

This project is created for educational and academic purposes.
