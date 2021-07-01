# Django Admin Console

## Register App Models

```python
# ~/<app_name>/admin.py

# IMPORTs
from django.contrib import admin
from .models import <model_name>

# REGISTER
admin.site.register(<model_name>)
```
