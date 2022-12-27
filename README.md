# How to run C++ on jupyter notebook using Docker 

How to run C++ programs from jupyter notebook. We use `docker` to install 
`xeus-cling` underneath. 

Thanks to [xeus-cling!](https://github.com/jupyter-xeus/xeus-cling)

## Reqirements
- Docker v20+ // [Install Docker](https://mrprajesh.co.in/blog/install-docker-on-linux.html)
- Diskspace upto 5 GB.
- Tested Ubuntu 20.04/Mint 20.3. Docker 20.10.22. Should work on similar OS or better.


### Build
Get some :coffee: :coffee:!
```
$ sudo docker build -t test:latest .  

```
### Run
```
$ sudo docker run -p 8888:8888 test:latest
``

### Check programs

- Open browser on the host machine: [http://127.0.0.1:8888](http://127.0.0.1:8888) 
- You may run the last cell to see the output!

```
