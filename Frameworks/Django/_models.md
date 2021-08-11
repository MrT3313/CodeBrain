# MODELS

- DEFINES: data about your data -> contains the fields & behaviors for storing data 

## _(Model)_ MANAGERS

- INTERFACE: through which database queries are provided to the models
- _Default_ Manager:
    - Manager named `objects` on every model
- Custom Manager:
    - Adding Manager methods (__custom managers__) is the preferred way to add `table level` functionality to your model
    - `row level` functionality should be in the __model methods__
      ️
