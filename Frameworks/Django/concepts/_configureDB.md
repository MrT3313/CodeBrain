# Configure Database Connection

## Sqlite ( _default_ )
    ```python
    # ~/<project_name>/settings.py

    DATABASES = {
        'default': {
            'ENGINE': 'django.db.backends.sqlite3',
            'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
        }
    }
    ```


## PostgreSQL
    ```python
    # ~/<project_name>/settings.py

    DATABASES = {
        'default': {
            'ENGINE': 'django.db.backends.postgresql',
            'NAME': config('DB_NAME'),           # postgres DB name
            'USER': config('DB_USER'),           # ^^ owner
            'PASSWORD': config('DB_PASSWORD'),   # ^^'s password
            'HOST': 'localhost',
            'PORT': '5432',
        }
    }
    ```