# How to run C++ on jupyter notebook using Docker 

How to run C++ programs from jupyter notebook. We use `docker` to install 
`xeus-cling` underneath. 

Thanks to [xeus-cling!](https://github.com/jupyter-xeus/xeus-cling)

### Reqirements
- Docker v20+ // [Install Docker](https://mrprajesh.co.in/blog/install-docker-on-linux.html)
- Diskspace upto 5 GB.
- Tested Ubuntu 20.04/Mint 20.3. Docker 20.10.22. Should work on similar OS or better.


### Build
After cloining it. Run beloe and get some :coffee: :coffee:!
```
$ sudo docker build -t test:latest .  

```
### Run
```
$ sudo docker run -p 8888:8888 test:latest
```

### Check/Write/Run C++ Programs

- Open browser on the host machine: [http://127.0.0.1:8888](http://127.0.0.1:8888) or like below:
- You may run the last cell to see the output!

![image](https://user-images.githubusercontent.com/259998/209664587-2d314cec-7c0e-4efd-af8a-5d407d57e78d.png)


