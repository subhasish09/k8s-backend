# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 5001 available to the world outside this container
EXPOSE 6000

# Run backend.py when the container launches
CMD ["python", "app.py"]
