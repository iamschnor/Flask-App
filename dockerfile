FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
ENV FLASK_ENV=production
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
