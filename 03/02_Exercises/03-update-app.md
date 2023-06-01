### Aufgabe 3: App erweitern als erneut Container publizieren
1. Lesen Sie den Artikel zu [How Do You Get POSTed JSON in Flask?](https://sentry.io/answers/flask-getting-post-data/)
2. Passen Sie den POST-Request an, damit beim Aufruf mit curl und den Parametern 
   * salutation: Mister
   * firstname: John
   * lastname:Doe
   * appointment: 2023-06-23T14:25
die folgende Antwort vom Server erscheint:
```
{"message":"Dear Mister John Doe. You got an appointment on 2023-06-23T14:25. Kind regards Tierpraxis-Team."}
```
