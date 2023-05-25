### Aufgabe 1: Container mit Welcome-Meldung
1. Erstellen Sie auf Basis eines Dockerfiles ein Image mit
   1. Ubuntu 20.04, welches gleich ohne Bestätigung das Betriebssystem updated,
   ```figlet``` installiert und die Installationsdateien danach löscht
   2. zwei Labels Ihrer Wahl gesetzt werden.
   3. der Umgebungsvariable TERM gleich xterm gesetzt wird
   5. die Meldung 'Welcome to M347' mit ```figlet``` ausgegeben wird, wobei
   vorher der Screen gelöscht wird (s. 01b-result.png)
2. Als Tagname beim Build-Kommando wählen Sie Ihren Nachnamen oder Kurzfassung davon.
3. Listen Sie sich das erstellte Image aus unter überprüfen Sie den Tagnamen
4. Stoppen Sie den laufenden Container
5. Löschen anschliessend das Image und überprüfen Sie die Löschung 

Tipp: Hier erfahren Sie, wie Sie mehrere Kommandos aneinanderreihen können
https://stackoverflow.com/questions/54121031/multiple-commands-on-docker-entrypoint
