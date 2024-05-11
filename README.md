---
title: 'mecaUGR: Exploración de las competencias mecanográficas en la Universidad de Granada: un estudio prospectivo'
author: Ana María Ruiz-Ruano García (1) & Jorge López Puga (2)
output:
  html_document: default
  word_document: default
  pdf_document: default
---

1 https://orcid.org/0000-0002-7260-0588  
2 https://orcid.org/0000-0003-0693-0092 

# Introducción

Este proyecto tiene como objetivo realizar un análisis exploratorio de las competencias mecanográficas en los estudiantes de grado de la Universidad de Granada. Los resultados de esta investigación se exponen en el capítulo de libro titulado "Análisis y mejora de la competencia mecanográfica en la universidad" que se ha publicado en el libro "" (Editorial ... y editado por ...). 

Una versión de la información que aparece contenida en esta web puede encontrarse también (en formato PDF) en el archivo [README.pdf](https://osf.io/hs5rp).

# Mapa de variables

Seguidamente se listan los códigos de las variables contenidas en el archivo principal de datos de este proyecto ([meca.csv](https://osf.io/ftkuj)). El listado contiene el nombre de la variable en el mencionado archivo y una descripción del significado de la variable. Hay que hacer notar que el código fuente del formulario electrónico utilizado está disponible en el archivo que se aloja en la web https://osf.io/y85t2.

-   caso: es el código inequívoco que identifica cada caso en el estudio.

-   caso.o: es el número de caso inicial teniendo en cuenta los tres grupos iniciales de datos (los procedentes de logopedia, pedagogía y psicología).

-   grado: representa el grado en el que se recogieron los datos. Cada una de las etiquetas se refiere a lo siguiente:

    -   Logopedia: Grado en Logopedia.
    -   Psicología: Grado en Psicología.
    -   Pedagogía: Grado en Pedagogía.

-   fecha: indica la fecha en que el participante completó la encuesta.

-   mtd: esta variable se refiere a la pregunta *¿Sabes mecanografiar usando todos los dedos?*. Sus posibles respuestas fueron:

    -   Sí.
    -   No.

-   msm: esta variable se refiere a la pregunta *¿Sabes mecanografiar utilizando todos los dedos sin mirar el teclado?* y sus respuestas posibles fueron:

    -   Sí.
    -   No.

-   vel: indica cuál fue la velocidad que obtuvo el participante en un test *online* de mecanografía.

-   pre: indica cuál fue la precisión que obtuvo el participante en un test *online* de mecanografía.

-   curso: esta variable se refiere a la pregunta *¿Has realizado alguna vez un curso de mecanografía?* y sus respuestas posibles fueron:

    -   Sí.
    -   No.

-   donde: esta variable recogió texto libre sobre pa pregunta anterior (*curso*) en caso de que la respuesta a esta pregunta precedente hubiese sido positiva.

-   util: esta variable se refiere a la pregunta *¿Crees que es útil saber mecanografiar?* y sus respuestas posibles fueron:

    -   Sí.
    -   No.

-   aprender: esta variable se refiere a la pregunta *¿Te gustaría aprender a mecanografiar?* y sus respuestas posibles fueron:

    -   Sí.
    -   No.

-   empleo: esta variable se refiere a la pregunta *¿Crees que mecanografiar puede incrementar tu empleabilidad (posibilidades de encontrar empleo)?* y sus respuestas posibles fueron:

    -   Sí.
    -   No.

-   formal: esta variable se refiere a la pregunta *¿Crees que debería enseñarse mecanografía en la educación formal?* y sus respuestas posibles fueron:

    -   Sí.
    -   No.

-   nivel: esta variable recoge la explicación pertinente a la pregunta precedente (*formal*) en caso de que la respuesta a esta pregunta hubiese sido afirmativa.

-   servicio: esta variabe se refiere a la pregunta *¿Crees que los servicios que te ha prestado alguna vez un profesional se han visto mermados por su falta de competencia mecanográfica?* y sus respuestas posibles fueron:

    -   Sí.
    -   No.

-   servicio.donde: esta variabe recoge información complementaria explicativa para el caso en que la respuesta a la pregunta anterior (*nivel*) hubiese sido afirmativa.

# Archivos de código

El archivo de código principal de este proyecto (el documento *maestro*) es el archivo [mecaUGR.R](https://osf.io/v298a). La reproducción de los análisis se ha de llevar a cabo con este documento abierto en la consola de R. Está diseñado para que se invoquen los archivos de código uno por uno en una sesión viva de R. Los resultados se irán proyectando sobre la consola de R y los gráficos se irán imprimiendo en un dispositivo gráfico de R.

El resto de archivos de código de este proyecto están contenidos en la carpeta *stx*. Aquí aparece una breve descripción del contenido de cada uno de los archivos de código:

-   [01_descriptivos.R](https://osf.io/2y68c): este archivo explora las variables cuantitativas y categóricas del arhivo de datos [meca.csv](https://osf.io/ftkuj).

-   [02_tc.R](https://osf.io/hk65j): este archivo genera tablas de contingencia y gráficos que representan tales resultados.

-   [03_rl.R](https://osf.io/2pj46): este archivo de código genera el gráfico de dispersión que ponte en relación la velocidad y la precisión de mecanografiado. También estima la correlación de Pearson y el modelo de regresión lineal simple que relaciona a ambas variables.

-   [04_cuando.R](https://osf.io/wahvf): este archivo analiza la tabla [snem.csv](https://osf.io/yre5h) que contiene la propuesta que plantean los participantes del estudio en lo relativo al aprendizaje de la mecanografía en el contexto educativo formal.

-   [05_donde.R](https://osf.io/rc6e7): este archivo analiza la tabla [dems.csv](https://osf.io/rxfyt) que contiene la categorización de las respuestas que dan los participantes a la pregunta planteada en la variable *servicio.donde*.

# Archivos de datos

Todos los archivos de datos se encuentran contenidos en la carpeta *dat*.

Los datos brutos de este proyecto están contenidos en el archivo [meca.csv](https://osf.io/ftkuj). Nótese que este documento podría no visualizarse correctamente en la web porque está codificado con el formato "UTF-8". En cualquiera de los casos, los datos son correctamente visibles al importar el archivo con R.

Para re-codificar las respuestas a la variable *nivel* se creó una nueva base de datos que está contenida en el archivo de datos [snem.csv](https://osf.io/yre5h). En esta base de datos, la variable *caso* puede utilizarse para vincular esta tabla de datos con la base de datos [meca.csv](https://osf.io/ftkuj). La columna *snm* se creó para identificar el nivel educativo mínimo en que cada participante considera deseable el aprendizaje de la mecanografía dentro del ámbito de la enseñanza formal. Incluye tres posibles valores:

-   Primaria: esta categoría hace referencia a propuestas de enseñanza de la mecanografía en el colegio o en la enseñanza primaria obligatoria.

-   ESO: esta categoría hace referencia a propuestas relacionadas con la enseñanza secundaria obligatoria.

-   Post-obligatoria: esta categoría hace referencia a propuestas en las que se considera deseable que se aprenda a mecanografía tras la enseñanza secundaria obligatoria.

Por su parte, para recoger la recodificación de la variable *sevicio.donde* se creó una nueva tabla que se almacenó en el archivo [dems.csv](https://osf.io/rxfyt). Esta tabla tiene dos columnas: *caso* y *demc*. La columna *demc* indica el lugar en el que el participante experimentó un declive en la experiencia de servicio como consecuencia de incompetencia mecanográfica. Nótese que en la versión web podrían no verse correctamente las tildes porque el archivo está codificado en formato "UTF-8".

# Figuras

Las figuras generadas en este proyecto se encuentran, en formato vectorial (documentos PDF), en la carpeta *fig*. Las figuras incluidas en la carpeta son las siguientes.

-   [dispersion.pdf](https://osf.io/nfu8h): contiene el gráfico de dispersión junto con el modelo de regresión lineal que relaciona la velocidad y la precisión de mecanografiado.

-   [saber.pdf](https://osf.io/ekhq5): es un gráfico de barras generado a partir de la tabla de contingencia que pone en relación el mirar al teclado mientras se mecanografía y el usar (o no) todos los dedos mientras se mecanografía.

-   [utilidad.pdf](https://osf.io/s5uvd): es un gráfico de barras generado a partir de la tabla de contingencia que pone en relación el mirar al teclado mientras se mecanografía y el considerar (o no) que la mecanografía es útil.

# Pre-procesado de datos

Se eliminaron los valores que aparecían en dos celdas del archivo de datos porque se consideraron erróneos o incompatibles con lo esperado y observado en el resto del conjunto de datos. En concreto, se eliminó la velocidad del caso 43 (cuyo valor registrado original fue 0.93) y la precisión del caso 104 (cuyo valor original 46.4). En el primero de los casos, no tiene sentido que la velocidad de mecanografiado sea 0.93 que supondría no llegar a escribir una palabra por minuto. En el segundo caso, parece que la persona que completó el registro 104 repitió el valor de la velocidad en el lugar de la precisión. Además, esa velocidad reportada parece considerablemente reducida si tomamos en consideración el resto de las velocidades de mecanografiado reportadas.
