#### How to Create a Django Project:


Clone git repo:
```bash
git clone https://github.com/aenima-x/instant_django_docker.git PROJECT_NAME
```

Run script:
```bash
cd PROJECT_NAME
./rename_project.sh PROJECT_NAME
```

Create containers:
```bash
docker-compose up --build
```

In PROD.env put the mysql credentials.


