# Makefile

## Resources

1. [Make Manual - GNU](http://www.gnu.org/software/make/manual/make.pdf)

---

### Targets

- Standard Targets
- `Phony` Targets
    - used if you write a recipe that will NOT create a target file
      ```makefile 
        .PHONY: runSomething
        runSomething:
            thisIsTheCommand
      ```