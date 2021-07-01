# Django

> A high-level Python Web framework that encourages rapid development and clean, pragmatic design

---

## Steps

1. Setup & Enter Virtual Environment
2. Install Django
	```cli
	<env_manager> install django
	```
3. Create Project
	```cli
	django-admin startproject <project_name> .
	django-admin startproject DJANGO .
	```

	> 🚨 don't forget the `.` at the end -> tells the command where to add the project repo

4. Create App
	```cli
	django-admin startapp appName
	```

5. Add Project(s) to `<project_name> settings.py` > `INSTALLED_APPS`
    ```python
    # project > settings.py
    INSTALLED_APPS = [
        # Apps
        'appName',
        'app2Name',

        # Pre Installed
        'django.contrib.admin',
        'django.contrib.auth',
        'django.contrib.contenttypes',
        'django.contrib.sessions',
        'django.contrib.messages',
        'django.contrib.staticfiles',
    ]
    ```

6. Connect `Project` URLs & `App` URLs
	```python
	# ~/<project_name>/urls.py

	from django.conf.urls import include

	urlpatterns = [
		path('<app_name>', include('<app_name>.urls'))
	]
	```

7. Run Initial Migrations
	```cli
	python manage.py showmigrations
	python manage.py migrate
	```

8. Create Super User
    ```cli
    python manage.py createsuperuser
    ```

9. Run Server
	```cli
	python manage.py runserver
	```