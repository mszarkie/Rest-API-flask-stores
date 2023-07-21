FROM python:3.10
EXPOSE 5000
WORKDIR /app
COPY ./requirements requirements
RUN pip install --no-cache-dir --upgrade -r requirements
COPY . .
CMD ["gunicorn", "--bind", "0.0.0.0.:80", "app:create_app()"]
