# Use a lightweight Python image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the app directory from the local machine to the container
COPY ./app /app

# Install dependencies (if any are specified in requirements.txt)
RUN pip install --no-cache-dir -r requirements.txt

# Command to run the Python script when the container starts
CMD ["python", "main.py"]
