# Curso de aprendizaje automático
Este repositorio incluye el material didáctico para un curso introductorio sobre aprendizaje automático (*machine learning*). 

Está organizado como sigue:
- El directorio `material` contiene ficheros Markdown y Jupyter Notebooks donde se desarrolla el contenido principal del curso.
- El directorio `activities` contiene actividades resueltas que se pueden utilizar a modo de ejemplo durante el curso.
- Los direcorios `activities` y `template` son directorios auxiliares utilizados para la exportación del material a otros formatos.

## Cómo ejecutar
Para ejecutar los *notebooks* contenidos en este repositorio tienes varias opciones:
1. Tu propia máquina: 
    1. Clona este repositorio:
    
        ```
        git clone https://github.com/masdeseiscaracteres/ml_course.git
        ```
        
    2. Crea un entorno conda a partir del fichero `environment.yml`.
    
        ```
        cd ml_course
        conda env create -f environment.yml
		conda activate ml_course
        ```
        
    3. Lanza `jupyter notebook` y abre el *notebook* que te interese.
    
       ```
       jupyter notebook
       ```
       
2. MyBinder: [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/masdeseiscaracteres/ml_course/master)
3. Google Colab: cada notebook incluye un enlace para ejecutarlo en Google Colab.

## Cómo visualizar
Si solo quieres visualizar los *notebooks* en este repositorio también tienes varias opciones:
1. Utilizar las propias capacidades de visualización de notebooks de Github.
2. nbviewer: [![nbviewer](https://img.shields.io/badge/render-nbviewer-orange.svg)](https://nbviewer.jupyter.org/github/masdeseiscaracteres/ml_course/tree/master/)

## Agradecimientos
Gran parte de los contenidos de este repositorio están basados en el [trabajo de Felipe Alonso](https://github.com/FelipeURJC/keepcoding).