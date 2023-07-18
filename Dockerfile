# base image  
FROM python:3.8-slim-buster


# where your code lives  
WORKDIR C:\Users\ELIFE\Desktop\djangoblog\blogproj 

# run this command to install all dependencies 
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt 

# copy whole project to your docker home directory. 
COPY . C:\Users\ELIFE\Desktop\djangoblog\blogproj 



# port where the Django app runs  
EXPOSE 8080  

# start server  
CMD ["python","manage.py" ,"runserver", "0.0.0.0:8080"]