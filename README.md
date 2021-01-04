# Curso de aprendizaje automático
Este repositorio incluye el material didáctico para un curso introductorio sobre aprendizaje automático (*machine learning*). 

Está organizado como sigue:
- El directorio `material` contiene ficheros Markdown (con extensión `md`) y Jupyter Notebooks (con extensión `ipynb`) donde se desarrolla el contenido principal del curso.
- El directorio `activities` contiene actividades resueltas que se pueden utilizar a modo de ejemplo durante el curso.
- Los directorios `build` y `template` no son relevantes para el curso. Son directorios auxiliares utilizados para la exportación del material a otros formatos.

## Cómo ejecutar
Algunos materiales de este curso son interactivos y tu aprendizaje será más sólido si experimentas de primera mano con ellos. Para ejecutar los *notebooks* contenidos en este repositorio tienes varias opciones:
1. Utilizar tu propia máquina: 
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
       
2. Utilizar MyBinder: simplemente pulsa en esta imagen [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/masdeseiscaracteres/ml_course/master) para desplegar este proyecto en [MyBinder](https://mybinder.org/).
3. Utilizar Google Colab: en cada notebook encontrarás un enlace para ejecutarlo en [Google Colab](https://colab.research.google.com/).
4. Utilizar Deepnote: en cada notebook encontrarás un enlace para ejecutarlo en [Deepnote](https://deepnote.com). Deepnote se encargará de desplegar este proyecto completo y podrás acceder también al resto de ficheros desde su entorno.

## Cómo visualizar
En cambio, si solo quieres visualizar los *notebooks* en este repositorio (e ignorar el contenido interactivo) también tienes varias opciones:
1. Utilizar las propias capacidades de visualización de notebooks de Github. Es tan sencillo como abrir el notebook que te interese en la interfaz web de Github. Aquí tienes un [ejemplo](https://github.com/masdeseiscaracteres/ml_course/blob/master/material/02_regularization.ipynb).
2. Utilizar [nbviewer](https://nbviewer.jupyter.org/) para visualizar el repositorio completo: [![nbviewer](https://img.shields.io/badge/render-nbviewer-orange.svg)](https://nbviewer.jupyter.org/github/masdeseiscaracteres/ml_course/tree/master/)

## Agradecimientos
Gran parte de los contenidos de este repositorio están basados en el [trabajo de Felipe Alonso](https://github.com/FelipeURJC/keepcoding) y son mejorados constantemente para satisfacer las dudas, comentarios y sugerencias de todas las personas que siguen el curso. 