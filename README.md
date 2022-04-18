# pypylondocker
Simple demonstration of running pypylon(https://github.com/basler/pypylon) samples within a docker container.

# Docker Pre-requisities

1. Install latest docker cli/docker daemon by following [https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce](https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce). Follow **Install using the repository** and **Install Docker CE (follow first 2 steps)** sections there. Also, follow the manage docker as a non-root user section at [https://docs.docker.com/install/linux/linux-postinstall/](https://docs.docker.com/install/linux/linux-postinstall/) to run docker without sudo

2. Download the latest version of BASLER application from [HERE](https://www.baslerweb.com/en/sales-support/downloads/software-downloads/) (download the .deb file) and put it in a app folder.



# Steps to run

1. Building docker container:
    ```sh
    $ docker-compose build
    ```

2. Running docker container:
    ```sh
    $ docker-compose up -d
    ```

3. Run this below command to list running containers:
    ```sh
    $ docker ps
    ```

4. Once you obtain the name of the container from the previous step, run below command to exec into the container:
    ```sh
    $ docker exec -it <your_conatiner_name> bash
    ```

This should get you inside the docker container with pypylon samples present at (/pypylon/samples).