# Scrape with Python

The repository speeds-up configuration needed to start working with **Docker + Selenium + Python + Jupyter + VS**

You can build docker image and run container separately:

```shell
docker build -t scrape_selenium -f Dockerfile .
```

```shell
docker run -d --name=scrape_selenium -p 4444:4444 -p 7900:7900 --shm-size="2g" -v /d/My_projects/scrape_selenium:/workspace -w /workspace scrape_selenium
```

Or run docker compose:

```shell
docker compose -f "docker-compose.yaml" up -d --build 
```

After attaching running container to Visual Studio Code:
1. Open folder "/workspace/"
2. Install Git and VS extensions
Install extension 
```shell
./additional_install.sh 
```

In order to open container browser open in browser link: http://localhost:7900/