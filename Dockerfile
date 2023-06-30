FROM selenium/standalone-chrome:114.0

# Install the function's dependencies using file requirements.txt
# from your project folder.
RUN sudo apt-get update
RUN sudo apt-get install -y python3
RUN sudo apt-get install -y python3-pip

COPY requirements_scrape.txt  ./requirements_scrape.txt
RUN pip3 install -r requirements_scrape.txt
RUN sudo rm ./requirements_scrape.txt

COPY requirements.txt  ./requirements.txt
RUN pip3 install -r requirements.txt
RUN sudo rm ./requirements.txt

EXPOSE 4444
EXPOSE 5900
EXPOSE 7900