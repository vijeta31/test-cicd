FROM python:3.10.16

RUN pip install poetry

WORKDIR /app

COPY pyproject.toml poetry.lock README.md ./

COPY src ./src

RUN poetry install

EXPOSE 8501

ENTRYPOINT ["poetry","run", "streamlit","run","src/sample_project/app.py"]
