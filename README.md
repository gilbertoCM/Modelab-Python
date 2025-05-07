# 🌱 Getting Started with the Environmental Data Science Course

Welcome! This is a self-paced workshop designed to help you learn essential tools for environmental data analysis using Python and Jupyter Notebooks.

> You are encouraged to search online, use ChatGPT or your favorite AI assistant, and explore additional resources to support your learning.

> ⚠️ **Disclaimer**: This course is currently in beta. You may encounter errors or inconsistencies. Please report any issues or contribute to improvements!

---

## 📦 Required Software

Please install the following programs before starting the course:

1. **Git** – Version control system  
   👉 [Download Git](https://git-scm.com/)

2. **Anaconda or Miniconda** – Python environment manager  
   👉 [Download Anaconda](https://www.anaconda.com/download/success)

3. **Visual Studio Code (VS Code)** – Code editor and notebook interface  
   👉 [Download VS Code](https://code.visualstudio.com/)

---

## ⚙️ Setup Instructions

Follow these steps after installing the required programs:

1. **Clone this repository:**

```bash
git clone https://github.com/gilbertoCM/Modelab-Python.git
cd Modelab-Python
```

2. **Create the Conda environment:**

```bash
conda env create -f environment.yml
conda activate environmental_python
```

> This creates an environment called `environmental_python` with all the necessary packages for data science and geospatial analysis.

> To update the environment later:
>
> ```bash
> conda env update --file environment.yml --prune
> ```

3. **Install pre-commit tools to clean Jupyter notebooks:**

```bash
pip install pre-commit
pre-commit install
```

> This ensures your notebooks stay clean by automatically removing outputs and metadata before each commit.

4. **Open the folder in VS Code** and install the recommended extensions when prompted:
   - Python
   - Jupyter
   - Black Formatter
   - GitHub Copilot
   - Rainbow CSV

5. **Test your setup** by creating a new notebook and running:

```python
print("Hello, world!")
```

---

## 🧪 Running the Course Notebooks

All notebooks are in the `scripts/` folder.  
You can run them using:

```bash
jupyter lab
```

Or directly from **VS Code**.

---

## 📁 Folder Structure

The repository is organized into the following folders:

- `/data` — Contains the CSV database that will be used during the course.
- `/documentation` — Includes the course syllabus and exercise descriptions.
- `/manuals` — Helpful manuals and guides for Git, Python, and data analysis.
- `/output_files` — Stores generated outputs such as PDF files and results.
- `/scripts` — This is the main folder where you will work with Jupyter notebooks and Python scripts during the course.

---

## 🧼 Notebook Version Control

This project uses [`nbstripout`](https://github.com/kynan/nbstripout) and [`pre-commit`](https://pre-commit.com) to:

- Automatically remove outputs and metadata from notebooks
- Keep Git commits clean and easy to review

No additional setup is needed once you run `pre-commit install`.

---

## 👨‍🏫 Course Author

This course was developed by:

**José Gilberto Cardoso Mohedano**  
Email: gcardoso@cmarl.unam.mx  

🔗 [Academic Profile](https://www.icmyl.unam.mx/el_carmen/quienes_somos/personal_academico/jose-gilberto-cardoso-mohedano)  
🔗 [Contact via Blinq](https://blinq.me/YKZ9U8mqdr8n?bs=db)
