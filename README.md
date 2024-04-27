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

- [03_rl.R](https://osf.io/2pj46): este archivo de código genera el gráfico de dispersión que ponte en relación la velocidad y la precisión de mecanografiado. También estima la correlación de Pearson y el modelo de regresión lineal simple que relaciona a ambas variables.

- [04_cuando.R](https://osf.io/wahvf). Este archivo analiza la tabla [snem.csv](https://osf.io/yre5h) que contiene la propuesta que plantean los participantes del estudio en lo relativo al aprendizaje de la mecanografía en el contexto educativo formal.

- [05_donde.R]()

# Archivos de datos

Todos los archivos de datos se encuentran contenidos en la carpeta *dat*.

Los datos brutos de este proyecto están contenidos en el archivo [meca.csv](https://osf.io/ftkuj). Nótese que este documento podría no visualizarse correctamente en la web porque está codificado con el formato "UTF-8". En cualquiera de los casos, los datos son correctamente visibles al importar el archivo con R.

Para re-codificar las respuestas a la variable *nivel* se creó una nueva base de datos que está contenida en el archivo de datos [snem.csv](https://osf.io/yre5h). En esta base de datos, la variable *caso* puede utilizarse para vincular esta tabla de datos con la base de datos [meca.csv](https://osf.io/ftkuj). La columna *snm* se creó para identificar el nivel educativo mínimo en que cada participante considera deseable el aprendizaje de la mecanografía dentro del ámbito de la enseñanza formal. Incluye tres posibles valores:

- Primaria: esta categoría hace referencia a propuestas de enseñanza de la mecanografía en el colegio o en la enseñanza primaria obligatoria.

- ESO: esta categoría hace referencia a propuestas relacionadas con la enseñanza secundaria obligatoria.

- Post-obligatoria: esta categoría hace referencia a propuestas en las que se considera deseable que se aprenda a mecanografía tras la enseñanza secundaria obligatoria.

Por su parte, para recoger la recodificación de la variable *sevicio.donde* se creó una nueva tabla que se almacenó en el archivo [dems.csv](). Esta tabla tiene dos columnas: *caso* y *demc*. La columna *demc* indica el lugar en el que el participante experimentó un declive en la experiencia de servicio como consecuencia de incompetencia mecanográfica.


# Figuras

Las figuras generadas en este proyecto se encuentran, en formato vectorial (documentos PDF), en la carpeta *fig*. Las figuras incluidas en la carpeta son las siguientes.

- dispersion.pdf: contiene el gráfico de dispersión junto con el modelo de regresión lineal que relaciona la velocidad y la precisión de mecanografiado.

- saber.pdf: es un gráfico de barras generado a partir de la tabla de contingencia que pone en relación el mirar al teclado mientras se mecanografía y el usar (o no) todos los dedos mientras se mecanografía.

- utilidad.pdf: es un gráfico de barras generado a partir de la tabla de contingencia que pone en relación el mirar al teclado mientras se mecanografía y el considerar (o no) que la mecanografía es útil.


# Pre-procesado de datos

Se eliminaron los valores que aparecían en dos celdas del archivo de datos porque se consideraron erróneos o incompatibles con lo esperado y observado en el resto del conjunto de datos. En concreto, se eliminó la velocidad del caso 43 (cuyo valor registrado original fue 0.93) y la precisión del caso 104 (cuyo valor original 46.4). En el primero de los casos, no tiene sentido que la velocidad de mecanografiado sea 0.93 que supondría no llegar a escribir una palabra por minuto. En el segundo caso, parece que la persona que completó el registro 104 repitió el valor de la velocidad en el lugar de la precisión. Además, esa velocidad reportada parece considerablemente reducida si tomamos en consideración el resto de las velocidades de mecanografiado reportadas. 