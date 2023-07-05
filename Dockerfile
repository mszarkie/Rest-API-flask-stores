FROM python:3.10
EXPOSE 5000
WORKDIR /app
COPY ./requirements requirements
RUN pip install --no-cache-dir -r requirements
COPY . .
CMD ["flask", "run", "--host", "0.0.0.0"]
