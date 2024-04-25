---
title: 'mecaUGR: Exploración de las competencias mecanográficas en la Universidad de Granada: un estudio prospectivo'
output:
  html_document: default
  word_document: default
  pdf_document: default
---

Este proyecto tiene como

# Mapa de variables

-   caso: caso
-   caso.o: caso.o
-   grado: grado
-   fecha: Fecha
-   mtd: ¿Sabes mecanografiar usando todos los dedos?
-   msm: ¿Sabes mecanografiar utilizando todos los dedos sin mirar el teclado?
-   vel: Indica cuál ha sido la velocidad que te ha indicado el test que acabas de realizar
-   pre: Indica el porcentaje de precisión que te ha salido tras la realización del test
-   curso: ¿Has realizado alguna vez un curso de mecanografía?
-   donde: Si la respuesta a la pregunta anterior fue Sí, indica dónde.
-   util: ¿Crees que es útil saber mecanografiar?
-   aprender: ¿Te gustaría aprender a mecanografiar?
-   empleo: ¿Crees que mecanografiar puede incrementar tu empleabilidad (posibilidades de encontrar empleo)?
-   formal: ¿Crees que debería enseñarse mecanografía en la educación formal?
-   nivel: Si la respuesta a la pregunta anterior fue sí, indica cuándo o en qué nivel educativo.
-   servicio: ¿Crees que los servicios que te ha prestado alguna vez un profesional se han visto mermados por su falta de competencia mecanográfica?
-   servicio.donde: Si la respuesta a la pregunta anterior es Sí, por favor, indica brevemente el servicio en el que sentiste así.

# Archivos de código

El archivo de código principal de este proyecto (el documento *maestro*) es el archivo [mecaUGR.R](https://osf.io/v298a). La reproducción de los análisis se ha de llevar a cabo con este documento abierto en la consola de R. Está diseñado para que se invoquen los archivos de código uno por uno en una sesión viva de R. Los resultados se irán proyectando sobre la consola de R y los gráficos se irán imprimiendo en un dispositivo gráfico de R.

El resto de archivos de código de este proyecto están contenidos en la carpeta *stx*. Aquí aparece una breve descripción del contenido de cada uno de los archivos de código:

- [01_descriptivos.R](https://osf.io/2y68c): este archivo explora las variables cuantitativas y categóricas del arhivo de datos [meca.csv](https://osf.io/ftkuj).

- [02_tc.R](https://osf.io/hk65j): este archivo genera tablas de contingencia y gráficos que representan tales resultados.

# Archivos de datos

Los datos brutos de este proyecto están contenidos en el archivo [meca.csv](https://osf.io/ftkuj). Nótese que este documento podría no visualizarse correctamente en la web porque está codificado con el formato "UTF-8". En cualquiera de los casos, los datos son correctamente visibles al importar el archivo con R.
