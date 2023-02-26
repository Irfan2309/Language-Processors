# F29LP

## Installation on Your Computer
It is strongly recommended to install the course material via Docker. 

There are three steps:
1. Get the GitLab repo:

    ```
    git clone git@gitlab-student.macs.hw.ac.uk:ks2053/F29LP.git
    ```

    Go into the relevant directory: 

    ```
    cd F29LP
    ```

2. Install Jupyter notebook.

    - Install Docker: https://www.docker.com.

      Ensure that Docker is running. You might have to restart Docker after restarting your computer.

    - Install and start the relevant Docker file: 
      ```
      docker run -it -p 8888:8888 -v "$(pwd):/lectures" kstarkhwu/f29lp:latest
      ```
      
      - If you have a MacBook, you might need to use the arm64 image instead. 
        You can check this via ``uname -m``: if it says "amd64" or "x86_64" use the command above. If it says "arm64", run
        ```
        docker run -it -p 8888:8888 -v "$(pwd):/lectures" kstarkhwu/f29lp:arm64
        ```

    - In there, run: 

      ```
      jupyter notebook --ip=0.0.0.0
      ```

      and then the link appearing starting with ``http://127.0.0.1`` should be openable in a browser.

    - You'll want to make copies of all files you want to work on to avoid merge conflicts later.

## Running the Notebook Subsequent Times

1. Ensure the GitLab repo is in the up-to-date state: 

    ```
    git pull
    ```

2. Re-run the Docker files:

    -  Run

      ```
      docker run -it -p 8888:8888 -v "$(pwd):/lectures" kstarkhwu/f29lp
      ```

    - In there, run: 

      ```
      jupyter notebook --ip=0.0.0.0
      ```

      and then the link appearing starting with ``http://127.0.0.1`` should be openable in a browser.

      

      ## During Labs

The labs have Jupyter notebooks directly installed. 

You hence only have to:
1. Get the GitLab repo:

   ```
   git clone git@gitlab-student.macs.hw.ac.uk:ks2053/F29LP.git
   ```

   Go into the relevant directory: 

   ```
   cd F29LP
   ```

2. Run: 

   ```
   jupyter notebook 
   ```

   and then the link appearing should be openable in a browser.
    You'll want to make copies all files you want to work on to avoid merge conflicts later.
