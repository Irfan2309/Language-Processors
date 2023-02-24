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

    - Install Docker: https://www.docker.com
      Ensure that Docker is running. You might have to restart Docker after restarting your computer.

    - Install and start the relevant Docker file: 
      ```
      docker run -it -p 8888:8888 -v "$(pwd):/lectures" kstarkhwu/f29lp
      ```

    - In there, run: 

      ```
      jupyter notebook --ip=0.0.0.0
      ```

      and then the link appearing should be openable in a browser.

    - You'll want to make copies of all files you want to work on to avoid later merge conflicts.

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

      and then the link appearing should be openable in a browser.

      

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
    You'll want to make copies all files you want to work on to avoid later merge conflicts.
