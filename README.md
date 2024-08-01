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
