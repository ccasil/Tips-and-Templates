# Django

Step |   Location |   Description   |  Command
--- |   --- |   ---  |  ---
1| \\myEnv |  activate virtual environment  |  ```  source djangoEnv/bin/activate  ```
2| \\project_directory |    |  ```  django-admin startproject main  ```
3| \\main | make new apps directory inside main directory   |  ``` mkdir apps ```
4| \\apps |    |  ``` touch __init__.py ```
5| \\apps |    |  ``` python ../manage.py startapp first_ap ```
6| \\settings.&#8203;py |  add application to project (INSTALLED_APPS)  |  ```  ```
7| main  \\urls.&#8203;py | url(r'^', include('apps.app_name.urls')), (INCLUDE)   |  ```  ```
8|  |  create urls.&#8203;py (import/add url patterns)(RENAME templates/static)  |  ```  ```
9| \\main |    |  ``` python manage.py runserver ```
10| \\views.&#8203;py |  set up index route  |  django.shortcuts import render, HttpResponse, redirect (INDEX)
11|  |  edit style link in html  |  ```  ```
12|  |  pip install  |  ```  ```

## Session & Migrate

(note: after touching models.&#8203;py)  
in manage.&#8203;py:  

```shell
python manage.py makemigrations
python manage.py migrate
```

```shell
python manage.py shell
from apps.{{app_name}}.models import *
```