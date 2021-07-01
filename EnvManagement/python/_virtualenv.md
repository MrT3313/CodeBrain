# virtualenv

- 👍 Pro
	- "most common" and easy to use (great for beginners)
	
- 😡 Con
	- developer needs to change path constantly in order to activate and deactivate your environment
		- ⭐️ `virtualenvwrapper` => is a set of extensions to virtualenv that help with managing and switching between different python environments

---

## Steps w/o `virtualenvwrapper` 
1. Install
	- `pip install virtualenv`

2. Create Env
	- `virtualenv <virtualenv_name>`
	- `virtualenv <virtualenv_name> -p python3.7.10`

3. Activate Env
	- `source <virtualenv_name>/bin/activate`
	- 🚨 windows 🚨 virtualenv_name\Scripts\activate

4. Check Path & Python Version
	- `echo $PATH`
	- `which python`

5. Deactivate Path
	- `deactivate`

## Steps w/ `virtualenvwrapper`

1. Install
	- `pip install virtualenv virtualenvwrapper`

2. Configure path to environments with `~/.bashrc`
	```txt
	export WORKON_HOME=~/<name_of_env_folder>
 	```

3. Run Scripts
	```cli
	source ~/.bashrc
 	```
 	```cli
	mkdir -p $WORKON_HOME
  	echo $WORKON_HOME
 	```
  	```cli 
   	# 🚨 ?? - Where am i supposed to install the wrapper script - ?? 🚨 
   	source /usr/local/bin/virtualenvwrapper.sh
   
   	echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc
  	```

4. Create Env
	- `virtualenv <virtualenv_name>`
	- `virtualenv env -p python3.7.10`

5. Activate Env
	- `source <virtualenv_name>/bin/activate`
	- 🚨 windows 🚨 virtualenv_name\Scripts\activate

6. Check Path & Python Version
	- `echo $PATH`
	- `which python`
	
7. Switch Environments
	- `workon <env_name>`
 	- `echo $VIRTUAL_ENV`