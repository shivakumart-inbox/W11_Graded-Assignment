FROM python:3.11.2
WORKDIR /microservice-breast-cancer-prediction
COPY requirements.txt /microservice-breast-cancer-prediction
EXPOSE 5000
RUN pip install virtualenv
ENV PATH="/venv/bin:$PATH"
RUN pip install --no-cache-dir -r ./requirements.txt
COPY . /microservice-breast-cancer-prediction
CMD ["python", "app.py"]