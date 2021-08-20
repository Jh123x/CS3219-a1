# CS3219-a1

# Prerequisites
1. Docker
 
# Quick start guide
1. Clone the repository using `git clone https://github.com/Jh123x/CS3219-a1.git`
1. Change directory into the folder using `cd`
1. Run `docker-compose build` in the directory
1. Run `docker-compose up` to run the docker files
1. The website should be now running on [`http://localhost`](http://localhost)

## Note:
For unix users, remember to unblock port 80 `ufw allow 80` as the website runs on port 80

# Tech Stack
1. Flask
1. Gunicorn
1. Pygments