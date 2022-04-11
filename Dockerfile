FROM python:3.10-bullseye
COPY ./app/requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY ./app /app
ENTRYPOINT [ "python" ]
CMD [ "main.py" ]
