#!/bin/bash

# Solicitar al usuario el nombre del directorio padre
read -p "Ingrese el nombre del directorio padre: " directorio_padre

# Crear el directorio padre si no existe
if [ ! -d "$directorio_padre" ]; then
    mkdir "$directorio_padre"
    echo "Directorio padre '$directorio_padre' creado."
else
    echo "El directorio padre '$directorio_padre' ya existe."
fi

# Cambiar al directorio padre
cd "$directorio_padre" || exit

# Crear la estructura de árbol de directorios
mkdir -p "Información_de_Recopilación/Documentación_General" \
         "Información_de_Recopilación/Resultados_Escaneos" \
         "Información_de_Recopilación/Listas_de_Control" \
         "Información_de_Recopilación/Informes_Públicos" \
         "Análisis_de_Vulnerabilidades/Resultados_Escaneos" \
         "Análisis_de_Vulnerabilidades/Informes_de_Vulnerabilidades" \
         "Análisis_de_Vulnerabilidades/Herramientas" \
         "Análisis_de_Vulnerabilidades/Parches_y_Actualizaciones" \
         "Explotación_y_Pruebas_de_Penetración/Exploits" \
         "Explotación_y_Pruebas_de_Penetración/Scripts" \
         "Explotación_y_Pruebas_de_Penetración/Pruebas_Realizadas" \
         "Explotación_y_Pruebas_de_Penetración/Informes_de_Explotación" \
         "Post-Explotación/Información_Recopilada" \
         "Post-Explotación/Herramientas_Post-Explotación" \
         "Post-Explotación/Informes_Post-Explotación" \
         "Informes_y_Recomendaciones/Documentación" \
         "Informes_y_Recomendaciones/Informes_Preliminares" \
         "Informes_y_Recomendaciones/Informes_Finales"

echo "Estructura de árbol de directorios creada en '$directorio_padre'."
