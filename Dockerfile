<<<<<<< HEAD
FROM python:3.10

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

=======
FROM python:3.10

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

>>>>>>> 5850a0a2587c54d2e8eb7fcd66de0338fa6cc337
CMD ["uvicorn","fastapi_app.main:app","--host","0.0.0.0","--port","8000"]