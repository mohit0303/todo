From python:3
RUN pip install django==4.1

COPY . .
RUN python manage.py migrate
EXPOSE 8000
CMD ["python3","manage.py","runserver","0.0.0.0:8001"]
