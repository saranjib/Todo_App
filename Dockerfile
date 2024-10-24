FROM python:3.11-slim
RUN install django:5.1
ENV PORT 8000
EXPOSE 8000
WORKDIR /app
COPY requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENTRYPOINT ["python"]
CMD ["app.py"]
