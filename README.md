#Django Blog
this blog is created using Django framework based of Python 
it allows users to register,login and logout as well as updating their profile
it also lets them create, edit and delete posts

#Basic Requirenments
latest version of python and pip installed 
an IDE, this project was created using Visual Studio Code
other requirenemts are mentioned later on

#Set up 
## creating new directory 
```cmd
mkdir djangoblog
cd djangoblog
```



## set up virtual envionment 

```cmd
python -m venv venv 
venv\Scriptes\activate.bat
```

## download django
``` 
pip install django
```
## create a django project 
```
django-admin startproject blogproj
cd blogproj
```

## control the application using manage.py 
``` 
python manage.py makemigrations
$ python manage.py migrate
python manage.py runserver localhost:8080
```

## create django application 
```
python manage.py startapp blog
```
after creating the app add it the settings in 'INSTALLED_APPS'
add ---> 'blog'





