# Annexos

## Annex 1. Instalació i configuració VSCodium.

Per crear els nostres arxius xml utilitzarem el software VSCodium, basat en el mateix codi font que Visual Studio Code però amb telemetria deshabilitada i amb un altre loco

* [VSCodium Open Source Binaries of VSCode](https://vscodium.com/)
* [Releases VSCodium](https://github.com/VSCodium/vscodium/releases)

Primer, descarrega i instal·la la versió de VSCodium segons el teu S.O (Win10, Debian). 
Després, anirem a instal·lar la nostra primera extensió a VSCodium. Per tal de fer-ho anem a Extensions (panell lateral), busquem el terme "xml" a la casella i instal·lem l'extensió seleccionada (XML Redhat).

![](assets/img/2-4-VSCodium-1.png)

![](assets/img/2-4-VSCodium-2.png)

## Ànnex 2. Instalació Saxon SXLT a Visual Studio.

Per tal de processar els nostres documents XML i generar una sortida amb XSLT necessitem un processador. Per instal.lar el processador Saxon SXLT a Visual Studio Code:

1. Descarregar l'última versió de **Saxon Home Edition (Saxon-HE)** des de la pàgina oficial: [Saxon SXLT and XQuery Processor](https://saxon.sourceforge.net/#F11HE). No cal descarregar ni els exemples ni el codi font. 

2. Descomprimir el contingt en una carpeta del vostre equip, p. ex. c:Saxon a Windows o /users/home/usuari/Saxon a Linux.

3. Instal.leu l'extensió **XSLT/XPath for Visual Studio Code** per a Visual Studio Code.

![Saxon SXLT VS Code](assets/img/saxonSXLT-visual-studio-code.png "Saxon SXLT VS Code")

4. Aneu a la configuració. Premeu **F1** a Visual Studio i escriviu Preferencias: **Abrir Configuracion (IU)**. A buscar escriviu **XSLT** i canvieu els següents paràmetres:
  
* Desmarqueu Enable Saxon-JS tasks (i comproveu que Enable Saxon tasks està marcada). Ompliu la ruta amb el processador Saxon que heu descarregat, p. ex. /home/salva/Saxon/saxon-he-11.4.jar.

![Saxon SXLT Config](assets/img/saxon-SXLT-config.png "Saxon SXLT Config")

Això només ho hem de fer un cop. Ara anem a configurar una tasca de compilació per especificar els arxius origen i destí de la nostra conversió.

1. Premem F1 i escrivim **"Configure default build task"**. La primera vegada no tindrem cap i ens demanarà configurarl-la. Seleccionem "xslt: Saxon Transform (New)" i ens crearà un arxiu de configuració tasks.json. Omplim amb els paràmetres necessàris:

* **xsltFile** posem el nom del nostre arxiu XSL
* **xmlSource** podem el nom del origen XML
* **resultPath** escrivim el nom del fitxer de sortida (normalment XML).

![Tasca JSON Visual Studio](assets/img/saxon-json-task.png "Tasca JSON Visual Studio")

2. Per fer la conversió, hem de buscar dos arxius tant XML com XSL que siguin correctes. Per assegurar-nos, podem probar la nostra conversió amb un processador on-line. Premem **F1** i escrivim **"Run Build Task"**. Si tot ha anat bé, a la nostra carpeta tindrem un arxiu nou amb la transformació feta.
  

Més informació:

* [Running SXLT](https://deltaxml.github.io/vscode-xslt-xpath/run-xslt.html)

Aquest document està llicenciat sota els termes de la [Licencia Creative Commons Attribution 4.0 International (CC BY 4.0)](LICENSE.md).

## Ànnex 3. Introducció a JavaScript per a Principiants

JavaScript és un llenguatge de programació que permet afegir interactivitat i dinamisme a les pàgines web. Si alguna vegada has vist un botó que canvia de color en passar-hi el ratolí per sobre, o una finestra emergent que et demana el nom això es pot fer amb JavaScript. A diferència d'altres llenguatges que funcionen al servidor, JavaScript s'executa directament al navegador de l'usuari. cosa que el fa ideal per a la creació d'interfícies interactives.

### Conceptes Bàsics

- **Codi Font**: JavaScript és un llenguatge basat en text, això vol dir que s'escriu en fitxers de text i s'integra a les pàgines web utilitzant etiquetes `<script>`.
    Exemple:

    ```html
    <!DOCTYPE html>
    <html>
        <head>
            <script>
                ...el meu codi Javascript...
            </script>
        </head>
        <body></body>
    </html>
    ```

- **Variables**: Les variables són espais on podem guardar informació (nombres, text, etc.) que després podem reutilitzar. Hi ha diverses maneres de declarar variables en JavaScript, però les més comunes són let, const, i var.

    ```javascript
    let nom = "Joan";  // Una variable que guarda un text
    const pi = 3.14;   // Una constant que no canviarà el seu valor
    ```

- **Funcions**: Les funcions són blocs de codi que podem definir una vegada i reutilitzar cada vegada que les cridem. Una funció pot acceptar dades (anomenades "paràmetres") i retornar un resultat.

    ```javascript

    function saludar(nom) {
        return "Hola, " + nom;
    }
    ```

- **Esdeveniments**: JavaScript pot reaccionar a diferents accions de l'usuari, com fer clic en un botó, moure el ratolí o escriure en un camp de text. Aquestes reaccions s'anomenen "esdeveniments".

    ```javascript

        document.getElementById("elMeuBoto").addEventListener("click", 
        function() {
            alert("Has fet clic al botó!");
        }
        );
    ```

- **Manipulació del DOM**: El DOM (Document Object Model) és la representació estructural d'una pàgina web que el navegador crea a partir d'un fitxer HTML. JavaScript pot interactuar amb el DOM per a canviar el contingut o l'aparença d'una pàgina sense necessitat de recarregar-la.

    Per exemple, podem canviar el text dins d'un element HTML:

    ```javascript
        document.getElementById("elMeuText").innerHTML = "Nou text";
    ```

### Activitat Pràctica

Per posar en pràctica el que hem après, crearem una petita aplicació que canviï el color de fons de la pàgina quan l'usuari faci clic en un botó.

En el teu fitxer HTML, crea un botó i un paràgraf:

```html
<button id="canviarColor">Canviar color</button>
<p id="elMeuText">Aquest és un paràgraf.</p>
```

Ara, escriu el següent codi JavaScript per canviar el color de fons de la pàgina:

```javascript
    document.getElementById("canviarColor").addEventListener("click", 
      function() {
        document.body.style.backgroundColor = "lightblue";
    });
```

Aquest codi li diu a JavaScript que esperi que l'usuari faci clic al botó amb l'id canviarColor, i quan això passi, canviarà el color de fons de la pàgina.
Conclusió

En resum, JavaScript ens permet fer que les pàgines web siguin més dinàmiques i interactives. Amb variables podem emmagatzemar dades, amb funcions podem reutilitzar codi, i gràcies a la manipulació del DOM podem fer canvis visuals i funcionals a la nostra pàgina web en temps real.

Ara estàs preparat per començar a crear aplicacions senzilles utilitzant JavaScript!
