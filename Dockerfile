# Use an official Python runtime as the parent image
FROM python:3.9

# Set the working directory in the container to /app
WORKDIR /app

# Copy requirements.txt to the working directory
COPY requirements.txt ./

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your app's source code to the working directory
COPY . .

# Make port 5000 available to the outside world
EXPOSE 5000

# Define the command to run your app using gunicorn
CMD ["flask", "run"]
