# Environment Variables

## Steps

1. Install configuration package    
    ```cli 
    <env_manager> install python-decouple
    ```
2. Create Initial Environment Variables
    ```txt
    # ~/.env
    
    SECRET_KEY=<your_key>
    DEBUG=TRUE
    ```
   
3. Access Environment Variables

- Import `python-decouple` package in file to access env variables
   ```python
   # ~/<project_name>/settings.py
   
   import os
   from decouple import config
   ```
- Use `python-decouple`to access variables
   ```python
   SECRET_KEY = config('SECRET_KEY')
   DEBUG = config('DEBUG')
   ```
   