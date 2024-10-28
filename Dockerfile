FROM python:3.9
WORKDIR /bot
ENV PYTHONUNBUFFERED=1
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
CMD ["python3", "-m", "bot"]
