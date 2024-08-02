<<<<<<< HEAD
# LaTeX-Lebenslauf-Template
## Notwendige Packages

- Make: Ausführen der Makefile
- LaTeX: Generieren der PDF

## How to use
Die Makefile führt die Anweisungen zum Erstellt eines PDF-Lebenslaufs aus einer .tex Datei.
Um die Makefile zu nutzen muss lediglich im Verzeichnis ins Terminal 
```make```
eingegeben werden.

## Die .tex Datei
In der .tex Datei ist das Gerüst für einen Lebenslauf und ist mit Kommentaren versehen.
Es wird das cv-package benutzt für die Formatierung welches mehrere Stile bietet.
Die Einträge müssen an den persönlichen Lebenslauf angepasst werden und wenn mehr oder
weniger Einträge benötigt werden, kann der Befehl
```
\cvitem{TEXT}
```
gelöscht oder eingefügt werden.

Ein Überschrifteneintrag kann mit dem Befehl 
```
\section{ÜBERSCHRIFT}
```
in der .tex Datei erzeugt werden.

## Programmablauf
Die Makefile erzeugt ein Unterverzeichnis namens "build", in dem alle von LaTeX erzeugten Dateien, welche für die
Erstellung der PDF-Datei benötigt werden und binden diese Zusammen. die finale PDF-Datei wird auch im build Verzeichnis
abgelegt.
||||||| (empty tree)
=======
# Persönliche LaTeX-Bewerbungsvorlage

Dies ist meine LaTeX Bewerbungsvorlage mit Anschreiben, Lebenslauf und Umschulungsthemen.
Es müssen Anpassungen in der Bewerbung.tex Datei durchgeführt werden.
Alles was durchgehend GROß geschrieben ist muss mit den eigenen Daten ersetzt werden.
Dazu muss für jede Firma, die angeschrieben wird, im Verzeichnis ```firmen```, ein weiteres
Verzeichnis, mit dem firmennamen, angelegt werden. Darin müssen die .tex Dateien ```recipient.tex``` und ```text.tex``` angelegt werden.
In die Datei ```recipient.tex``` muss die Zeile eingefügt und ausgefüllt werden
```\recipient{FIRMA}{ANSPRECHPERSON \\ ADDRESSE \\ PLZ ORT}```
In die Datei ```text.tex``` wird der Text für das Anschreiben formuliert

Wenn eine PDF angelegt werden soll für eine Firma, muss in der Bewerbung.tex Datei in den beiden ```\input{PFAD}``` Einträge der Pfad zu den Dateien: ```recipient.tex``` und ```text.tex``` angegeben werden.
die Pfade sind
```firmen/FIRMANAME/recipient.tex```
```firmen/FIRMANAME/text.tex```

Dann lässt sich im Hauptverzeichnis, in der sich die ```Bewerbung.tex``` Datei befindet, über das Terminal, mit einem einfachen ```make``` Befehl eine PDF erstellen, welche im selbigen Verzeichnis gespeichert wird.
>>>>>>> 20ec0e7 (Bewerbungs Template)
