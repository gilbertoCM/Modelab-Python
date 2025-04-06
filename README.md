
## 📦 Program Installation

1. **Git**: [Download here](https://git-scm.com/)
2. **Anaconda / Miniconda**: [Download here](https://www.anaconda.com/download/success)
3. **VS Code**: [Download here](https://code.visualstudio.com/)

---

## ⚙️ Configuration Steps

1. **Initialize Git**
2. Configure **VS Code** to connect with your **Anaconda/Miniconda** environment and run Jupyter Notebooks.
3. Set up **VS Code** to open and edit `.csv` files.
4. Accept the suggested extensions when prompted by VS Code:
   - Python
   - Jupyter
   - Black Formatter
   - GitHub Copilot
   - Rainbow CSV

Once everything is configured, test it by creating a new Jupyter Notebook and running:

```python
print("Hello, world!")
```

---

## 📁 Clone the repository and create the environment

```bash
git clone https://github.com/gilbertoCM/env_data_analysis_course.git
cd env_data_analysis_course
conda env create -f environment.yml
conda activate ciencia
```

This will create a Conda environment named `environmental_python` and install all required packages for data analysis, geospatial work, and Jupyter integration.

> If you make changes to the `environment.yml`, update your environment with:
>
> ```bash
> conda env update --file environment.yml --prune
> ```

---

## ✅ Keep notebooks clean in Git (auto-remove outputs)

This project uses [**nbstripout**](https://github.com/kynan/nbstripout) with [**pre-commit**](https://pre-commit.com) to automatically clean notebooks (remove outputs, metadata) before saving them to Git.

### 📌 One-time setup

After activating the conda environment:

```bash
pip install pre-commit
pre-commit install
```

Now, every time you commit a notebook (even from VS Code), only the code and markdown will be saved — no outputs, no execution counts.

---

## 📓 Run the Jupyter notebooks in the `/scripts` folder

You can open them in **VS Code** or launch Jupyter manually:

```bash
jupyter lab
```

---

## 🧠 Course Description

This course is created by José Gilberto Cardoso Mohedano.  
gcardoso@cmarl.unam.mx

For further details contact Gilberto Cardoso.

[^1]: https://www.icmyl.unam.mx/el_carmen/quienes_somos/personal_academico/jose-gilberto-cardoso-mohedano  
[^2]: https://blinq.me/YKZ9U8mqdr8n?bs=db