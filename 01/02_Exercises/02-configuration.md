### Aufgabe 2a: Home-Verzeichnis erstellen
1. Erstellen Sie auf Basis eines Dockerfiles ein Image mit 
   1. Ubuntu 20.04, welches gleich ohne Bestätigung das Betriebssystem updated.
   2. welches nano installieren und alle Installationsdateien danach entfernen
   3. ein Home-Verzeichnis mit Ihrem Nachnamen (oder Kurzfassung davon) erstellt
   4. die Umgebungsvariablen Benutzer und Login-Namen mit Ihrem Nachnamen (oder Kurzfassung davon) gesetzt werden
   5. bash als Shell gesetzt wird
2. Als Image-Tagname beim Build-Kommando wählen Sie Ihren Nachnamen (oder Kurzfassung davon).
3. Listen Sie sich das erstellte Image aus unter überprüfen Sie den Tagnamen
4. Führen Sie das Image aus und melden Sie sich am Container an mit bash 
5. Überprüfen Sie die Einstellungen 1.1 bis 1.5
6. Stoppen Sie den laufenden Container
7. Löschen anschliessend das Image und überprüfen Sie die Löschung 

### Aufgabe 2b: Unix-Benutzer im Container erstellen
Wiederholen Sie die Aufgabe 2a mit folgender Änderung
Statt 1.3-1.5 legen Sie einen "echten Unix-User" (Benennung frei wählbar) an mit 
bash als Shellscript und ein Passwort (wie der Username, jedoch gehashed). Tipp: Alte
Übung aus Modul 122 als Grundlage verwenden.
