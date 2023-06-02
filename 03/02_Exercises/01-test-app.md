### Aufgabe 1: App starten und testen
#### Pre-requisits
Für diese Aufgabe werden python und pip vorausgesetzt. 
Ferner lohnt es sich, die Pakete im 

# show python and pip version
```python --version```
```pip --version```
# setup virtual environment with same name venv
```py -m venv venv```
# copy deactivate script in virtual environment
cp ./deactivate venv/Scripts/deactivate
# set environment
export FLASK_ENV=development
# Activate the virtual environment. (venv) in the command prompt should appear
source venv/Scripts/activate
## installing the preserved packages
pip install -r requirements.txt


#### Steps
1. Starten Sie Python-App lokal auf Ihrem Rechner
```flask --app app.py run``` ohne Host- und Port-Angabe
```flask --app app.py run --host=127.0.0.1 --port=4000```
```flask run```, vorausgesetzt ```export FLASK_APP=app.py```
2. Testen Sie die Schnittstelle der Python-App anhand eines selbsterstellten 
Bash-Scripts lokal auf Ihrem Rechner.
