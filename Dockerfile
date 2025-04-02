FROM python:3.12-alpine
WORKDIR /nobel
RUN pip install --upgrade pip
COPY ./requirements.txt /nobel/requirements.txt
RUN pip install -r requirements.txt
COPY . /nobel
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "server:app"]