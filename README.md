# 🔷 Azure Job Data Engineering Pipeline

This project is an end-to-end data engineering solution that ingests job listing data from an open API, processes it through Azure services, and visualizes job trends on a Power BI dashboard. It demonstrates real-world use of the modern data stack using Azure Data Factory, Data Lake, Databricks, Synapse, and Power BI.

---

## 📌 Project Architecture

![Architecture Diagram](images/architecture_diagram.png)

---

## ⚙️ Tech Stack

- **Azure Data Factory** – Data ingestion from public API
- **Azure Data Lake Storage (ADLS)** – Centralized data storage
- **Azure Databricks (PySpark)** – Data transformation and cleaning
- **Azure Synapse Analytics** – External tables and views for querying
- **Power BI** – Dashboard visualization of job market insights

---

## 🚀 Workflow Steps

1. **Extract**  
   - Use Azure Data Factory to pull job listings data from [Remote OK API](https://remoteok.com/api) (or other job APIs).
   - Store raw JSON data in ADLS.

2. **Transform**  
   - Process the raw data using PySpark notebooks in Databricks.
   - Clean, normalize, and convert data into a structured format (Parquet or Delta).

3. **Load**  
   - Create external tables and views in Synapse Analytics for easy querying.
   - Enable access for reporting tools.

4. **Visualize**  
   - Connect Power BI to Synapse.
   - Create interactive dashboards showing KPIs like:
     - Total jobs by category and location
     - Remote vs onsite jobs
     - Jobs by company
     - Tech stack demand (e.g., Python, SQL, AWS)

---

## 📊 Sample Dashboard

![Power BI Screenshot](powerbi/dashboard.png)

---

## 📁 Project Structure
azure-jobs-data-pipeline/
├── README.md
├── .gitignore
├── data_factory/
│   └── pipeline.json
├── notebooks/
│   └── jobs_processing_notebook.ipynb
├── synapse/
│   ├── create_views.sql
│   └── external_table.sql
├── powerbi/
│   └── dashboard.png
├── images/
│   └── architecture_diagram.png



---

## 🧠 Key Learnings

- How to integrate multiple Azure services into a robust pipeline
- Building modular, production-ready PySpark transformations
- External table and view creation in Synapse
- BI dashboarding using cloud data sources

---

## 🔮 Future Enhancements

- Schedule daily pipeline runs for automation
- Include historical data snapshots
- Use Azure Data Factory parameterization for flexibility
- Add CI/CD deployment using GitHub Actions

---

## 👤 About Me

Hi! I’m [Nikhil Sharma](https://www.linkedin.com/in/nikhilsharma1771), a Data Engineer passionate about scalable pipelines and modern data stacks.  
📫 Connect with me on [LinkedIn](https://www.linkedin.com/in/nikhilsharma1771)

---

## 📄 License

This project is licensed under the MIT License.

