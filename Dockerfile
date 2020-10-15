FROM python:3
WORKDIR /app
ADD requirements.txt /app/requirements.txt
# Now install requirements
RUN pip install -r requirements.txt

ADD config-example.json /app/config-example.json
ADD transformer.py /app/transformer.py

ENTRYPOINT ["python", "transformer.py", "$@"]