# PUT THESE ELSEWHERE

- If we attempt to create an instance based on an image that is not in our local repository, i.e. based on an image that does not show up in our “sudo docker images” list, docker automatically checks the docker hub to attempt to “pull” that image and execute the build. Calling the “run” directly is equivalent to first calling “sudo docker pull [image name]” followed by “sudo docker run [image name].”
--rm flag instructs that once build is completed to remove all intermediate containers which are generated during the build
  

https://pythonspeed.com/articles/smaller-python-docker-images/

https://pythonspeed.com/docker/

https://www.youtube.com/watch?v=JSzj2MIGjc0

!! https://uwekorn.com/2021/03/01/deploying-conda-environments-in-docker-how-to-do-it-right.html