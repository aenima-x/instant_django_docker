# start from an official image
FROM python:3.6


ENV PYTHONUNBUFFERED 1

# arbitrary location choice: you can change the directory
RUN mkdir -p /opt/app/PROYECTO
WORKDIR /opt/app

# copio el codigo
COPY ./src/ /opt/app

# instalo dependencias
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copio el entrypoint
COPY entrypoint.sh ./
# expose the port 8000
EXPOSE 8000

# define the default command to run when starting the container
#CMD ["gunicorn", "--chdir", "django_app", "--bind", ":8000", "PROYECTO.wsgi:application"]
