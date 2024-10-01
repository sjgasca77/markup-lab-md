# Tema 7. Llenguatges de marques lleugers: Markdown i JSON

!!! quote "Martin Fowler"

    Cualquiera puede escribir código que una computadora entienda. Los buenos programadores escriben código que los humanos puedan entender.

## 7.1. Markdown

Markdown és un llenguatge de marcatge lleuger dissenyat per ser fàcilment llegible en format de text pla i alhora transformable en HTML i altres formats. El seu principal propòsit és permetre la redacció de documents utilitzant una sintaxi simple i clara, que sigui còmoda per a la lectura i l'edició sense la necessitat d'utilitzar etiquetes complexes, com és el cas de l'HTML.

Característiques de Markdown

* **Simplicitat**: Utilitza una sintaxi minimalista que fa que sigui molt intuïtiu, amb pocs caràcters especials per donar format al text.
* **Portabilitat**: Els fitxers escrits en Markdown són de text pla, de manera que es poden obrir i editar amb qualsevol editor de text.
* **Facilitat de conversió**: Markdown es pot convertir fàcilment a HTML, PDF, o altres formats usant eines de conversió.
* **Llegibilitat**: Els documents escrits en Markdown són fàcilment llegibles fins i tot en el seu format original, ja que no conté etiquetes complexes que distreguin de l'estructura del contingut.
* **Flexibilitat limitada**: En comparació amb llenguatges més complets com l'HTML, Markdown té una capacitat limitada per definir estils o disposicions complexes.

Hi ha altres alternatives a Markdown, com per exemple AsciiDoc. La següent taula compara les dues aplicacions.

| **Característica**           | **Markdown**                                      | **AsciiDoc**                                         |
|------------------------------|--------------------------------------------------|------------------------------------------------------|
| **Simplicitat**               | **Sintaxi molt senzilla** i fàcil d'aprendre     | **Sintaxi més complexa**, però més funcional              |
| **Portabilitat**              | Fitxers de text pla (**.md**), molt lleugers      | També utilitza fitxers de text pla (**.adoc**)           |
| **Capacitats de formatació**  | **Formatació bàsica** (negreta, cursiva, llistes)     | **Formatació avançada** (taules, notes, referències creuades) |
| **Interoperabilitat**         | **Suportat àmpliament** en moltes plataformes         | **Menys popular**, però utilitzat en documentació tècnica |
| **Conversió**                 | Fàcil de convertir a HTML, PDF, etc.              | També es pot convertir a diversos formats (HTML, PDF, EPUB) |
| **Extensions**                | Limitat en termes d'extensions (com taules o notes) | Suporta funcionalitats extenses, com macros i variables |
| **Ús principal**              | Bloc, documentació ràpida                        | Documentació tècnica i manuals detallats             |
| **Corba d'aprenentatge**      | **Molt curta**                                       | **Més llarga** per la seva complexitat                   |
| **Control de disseny**        | Limitat                                          | Ofereix més control sobre l’estil i el disseny       |


## 7.2. Resum sintaxi markdown

### 7.2.1. Encapçalats

Hi ha sis nivells d'encapçalat, rarament s'utilitzen més de tres nivells.

Heading level 1 (`# Heading level 1`)
# Heading level 1

Heading level 2 (`# Heading level 2`)
## Heading level 2 	

Heading level 3 (`# Heading level 3`)
### Heading level 3 	
...

Heading level 6 (`# Heading level 6`)
###### Heading level 6

### 7.2.2. Emfasi

* **Negreta**: Per afegir negreta, afegim dos asteriscs abans i després ``**negreta**`` de una paraula o paraules. 

    `I just love **bold text**.` &rarr;	I just love **bold text**.

    `I just love __bold text__.` &rarr;	I just love __bold text__.

* **Cursiva**. Per afegir negreta, afegim un asteriscs abans i després ``*cursiva*`` de una paraula o paraules. 

    `Italicized text is the *cat's meow*.` &rarr;	Italicized text is the *cat’s meow*.

    `Italicized text is the _cat's meow_.` &rarr;	Italicized text is the _cat’s meow_.

### 7.2.3. Bloc de cita

Per crear un bloc de cita iniciem un linea amb `>`. Per exemple:

`> Hay dos cosas que son infinitas: el universo y la estupidez humana; de la primera no estoy muy seguro (Albert Einstein).` 

Resultat:

> Hay dos cosas que son infinitas: el universo y la estupidez humana; de la primera no estoy muy seguro (Albert Einstein).

### 7.2.4. Enllaços

Per crear un enllaç, el texte de l'enllaç va entre claudàtors seguit de la URL entre parèntesi. 

`El meu buscador favorit és [Google](https://www.google.com).`

Resultat:

El meu buscador favorit és [Google](https://www.google.com).

### 7.2.5. Imatges

Per afegir imatges, primer afegeix exclamació `!` seguit del text alternatiu entre claudàtors i de la ruta URL

`![The head and torso of a dinosaur skeleton; it has a large head with long sharp teeth](assets/img/dinosaur.jpg "A T-Rex on display in the Manchester Museum")`

Resultat:

![The head and torso of a dinosaur skeleton; it has a large head with long sharp teeth](assets/img/dinosaur.jpg "A T-Rex on display in the Manchester Museum")

### 7.2.6. Taules

Per afegir taules, insereix 3 o més guions (`---`) per crear l'encapcalament de cada columna i utilitza tubs (`|`) per separar cada columna. Per exemple el seguent codi:

```
| Syntax      | Description |
| ----------- | ----------- |
| Header      | Title       |
| Paragraph   | Text        |
```

Genera el següent resultat

| Syntax      | Description |
| ----------- | ----------- |
| Header      | Title       |
| Paragraph   | Text        |

### 7.2.7. Referencies

* <svg width=24 heigth=24 xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><title>file-pdf-box</title><path d="M19 3H5C3.9 3 3 3.9 3 5V19C3 20.1 3.9 21 5 21H19C20.1 21 21 20.1 21 19V5C21 3.9 20.1 3 19 3M9.5 11.5C9.5 12.3 8.8 13 8 13H7V15H5.5V9H8C8.8 9 9.5 9.7 9.5 10.5V11.5M14.5 13.5C14.5 14.3 13.8 15 13 15H10.5V9H13C13.8 9 14.5 9.7 14.5 10.5V13.5M18.5 10.5H17V11.5H18.5V13H17V15H15.5V9H18.5V10.5M12 10.5H13V13.5H12V10.5M7 10.5H8V11.5H7V10.5Z" /></svg>
 [Markdown - Basic Syntax ](assets/pdf/markdown-guide-basic.pdf)
* <svg width=24 heigth=24 xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><title>file-pdf-box</title><path d="M19 3H5C3.9 3 3 3.9 3 5V19C3 20.1 3.9 21 5 21H19C20.1 21 21 20.1 21 19V5C21 3.9 20.1 3 19 3M9.5 11.5C9.5 12.3 8.8 13 8 13H7V15H5.5V9H8C8.8 9 9.5 9.7 9.5 10.5V11.5M14.5 13.5C14.5 14.3 13.8 15 13 15H10.5V9H13C13.8 9 14.5 9.7 14.5 10.5V13.5M18.5 10.5H17V11.5H18.5V13H17V15H15.5V9H18.5V10.5M12 10.5H13V13.5H12V10.5M7 10.5H8V11.5H7V10.5Z" /></svg>
 [Markdown - Extended Syntax ](assets/pdf/markdown-guide-extended.pdf)

* [URL Markdown - Basic Syntax](https://www.markdownguide.org/basic-syntax/)
* [URL Markdown - Extended Syntax](https://www.markdownguide.org/extended-syntax/)

## 7.3. JSON

### 7.3.1. Introducción

JSON (JavaScript Object Notation) es un formato de intercambio de datos ligero y de fácil lectura para humanos. Es ampliamente utilizado para transmitir datos entre un servidor y una aplicación web, así como para almacenar configuraciones y otros datos estructurados. JSON es independiente del lenguaje, lo que lo hace compatible con una gran variedad de lenguajes de programación.

## Usos

JSON se utiliza en una variedad de contextos, incluyendo:

- **APIs web**: JSON es el formato de datos preferido para la mayoría de las APIs RESTful.
- **Almacenamiento de datos**: JSON se utiliza para almacenar configuraciones, preferencias de usuario, y otros datos estructurados.
- **Intercambio de datos**: JSON es ideal para intercambiar datos entre un servidor y un cliente o entre diferentes sistemas.

## Ejemplos

Aquí tienes un ejemplo básico de un objeto JSON:

```json
{
  "nombre":     "Juan Pérez",
  "edad":       30,
  "email":      "juan.perez@example.com",
  "hobbies":    ["leer", "correr", "programar"],
  "activo":     true
}
```

Aquest document està llicenciat sota els termes de la [Licencia Creative Commons Attribution 4.0 International (CC BY 4.0)](LICENSE.md).