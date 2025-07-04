FROM python:3.12

WORKDIR /app

COPY . /app

RUN pip --version
RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]