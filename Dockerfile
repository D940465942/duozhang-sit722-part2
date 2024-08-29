# Dockerfile for book_catalog microservice
# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy the current directory the container at /app
COPY . /book_catalog .

# Install packages specified in requirements.txt
RUN pip install -r book_catalog/requirements.txt

# Make port 8801 available to the world outside this container
EXPOSE 8801

# Define environment variable
ENV DATABASE_URL="postgresql://sit722_part2_35sy_user:10QMQKzDbVvnfb7mnqlQVwiuzjRgUraR@dpg-cr83i8rqf0us73bom2pg-a.oregon-postgres.render.com/sit722_part2_35sy"

# Run app.py when the container launches
CMD uvicorn main:app --host 0.0.0.0 --port 8801