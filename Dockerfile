FROM python:3.7-stretch

WORKDIR /app

COPY . app.py /app/

RUN pip install --upgrade pip &&\
	pip install -r requirements.txt 
	
CMD ["python3", "app.py"]
	

