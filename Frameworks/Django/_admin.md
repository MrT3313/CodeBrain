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

## Notes
 
- `__str__(self)` -> add method to model to Change Display Name of Object in `Django Admin Interface`
