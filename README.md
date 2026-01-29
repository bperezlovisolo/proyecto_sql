## PROYECTO 2 - GRUPAL 
Proyecto de la semana 3 bootcamp Data

## TÍTULO 
Plan de implementacion para mejorar la asistencia de estudiantes de las provincias Antofagasta - Tocopilla y Magallanes de Chile.

## Objetivo del proyecto
Mediante los resultados obtenidos del analisis se buscará mejorar la asistencia de estudiantes en Magallanes a traves de un plan de acción. 

## Contexto del negocio
Este proyecto se plantea como una consultora especializada en educación, la cual el Ministerio de Educación de Chile nos ha solicitado un análisis de la asistencia de los estudiantes durante el período invernal en el Sur y Norte del país. Con ello se busca identificar patrones y factores que influyen en la asistencia escolar, con el objetivo de proponer estrategias para mejorar la regularidad y reducir la deserción estacional.

----

## Dataset
Los datasets utilizados recogen registros de la asistencia  de los estudiantes de todo Chile y las localidades de los establecimientos educativos. 
Tomados de la página web www.kaggle.com
Contiene información sobre:

- Ubicación geográfica (cuidad,localidad, latitud, longitud)
- Asistencia de los estudiantes (ciudad,mes,año,dias asistidos, días trabajados)

Las variables principales utilizadas en el análisis son:  
."año", "mes_escolar", "nom_rbd", "nom_com_rbd", "nom_deprov_rbd", "rural_rbd", "gen_alu", "dias_asistidos", "dias_trabajados","rbd" , "nom_rbd" , "nom_com_rbd", "lon" , "lat", "zona"


## Notas sobre la calidad del dato
El dataset presenta problemas de datos faltantes que han requerido procesos de limpieza y agregar columnas:

- Valores nulos en variables como latitud, longitud
- Demasiados datos y columnas que no necesitamos estudiar para nuestras hipótesis.
- Se han tomado decisiones de limpieza y estandarización para garantizar la coherencia del análisis y la cantidad de datos de estudio por lo que nos hemos centrado en las provincias de Antofagasta - Tocopilla y Magallanes.


---

## Preguntas clave / Hipótesis
1. En los meses de Junio y Agosto, la asistencia de los estudiantes de la provincia de Magallanes es menor que la de los estudiantes de Antofagasta - Tocopilla. 
2. En los meses de Junio y Agosto, la asistencia de las mujeres es menor que la de los hombres. 


## Proceso de análisis
El análisis incluye:
- Exploración inicial del dataset (EDA).
- Limpieza y estandarización de variables.
- Creación de nuevas variables/columnas (Zona geográfica por latitud y longitud).
- Implementación de SQL  
- Análisis descriptivo y comparativo mediante tablas y gráficos.


## Resultados / Insights
Gracias al análisis realizado y a la implementación de SQL, se pudo confirmar la hipótesis planteada donde se observa que en los meses de junio y agosto, la asistencia de los estudiantes de la provincia de Magallanes es menor que la de los estudiantes de Antofagasta. 
 La hipotesis sobre la asistencia en comparación entre niños y niñas no es correcta ya que la asistencia entre ellos es casi igual solo con una diferencia de un 0.5%.

## Recomendaciones de negocios

Se plantea luego de una evaluación crear dos medidas útiles:
- Sistemas de Monitoreo en Tiempo Real: Implementación de software para la gestión y seguimiento de asistencia, que envíe alertas automáticas a los apoderados.
- Transporte Escolar de "Última Milla": Un servicio que facilite el traslado desde puntos críticos de difícil acceso en días de lluvia, reduciendo la deserción estacional.


## Limitaciones
No se dispone de datos sobre justificante o razones de las inasistencias de los alumnos a las clases.
El análisis se basa en datos históricos de año 2019 y no incorpora variables actuales.
Se podría agregar el dataset actual con el Histórico Meteorológico de la Dirección Meteorológica de Chile para validar la correlación entre milímetros de lluvia/nieve y ausentismo de alumnos.


## Próximos pasos



## Cómo replicar el proyecto
1. Clonar el repositorio.
2. Instalar las librerías necesarias ( pandas, numpy, mysql).
3. Ejecutar el cuaderno a través de github.
