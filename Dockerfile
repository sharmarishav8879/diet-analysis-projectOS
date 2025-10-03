FROM python:3.9-slim

# Setting the working directory inside container
WORKDIR /app

# Installing all the dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

# Command to run analysis script
CMD ["python", "data_analysis.py"]
