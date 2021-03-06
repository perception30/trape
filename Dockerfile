FROM python:3
EXPOSE 80 443
WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENTRYPOINT python trape.py --url https://google.com --port 80
