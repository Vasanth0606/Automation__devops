# Use official Python image as base
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy only the requirements file first to leverage Docker cache
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY . .

# Expose port 5000 for Flask app
EXPOSE 5000

# Create a non-root user and switch to it
RUN useradd -m appuser
USER appuser

# Command to run the application
CMD ["python", "app.py"]
