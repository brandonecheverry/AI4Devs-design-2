import os
import subprocess
import re
from imgkit import from_string, config  # Importación de la función from_string de imgkit para convertir HTML a imagen

# Rutas
ruta_markdown = r"C:\Users\Andres B\Desktop\GIT\ANDRES_AI4Devs\AI4Devs-design-2\LTI-ACBG\UserStories-ACBG.md"  # Ruta del archivo Markdown
ruta_salida = r"C:\Users\Andres B\Desktop\GIT\ANDRES_AI4Devs\AI4Devs-design-2\LTI-ACBG\img_diagram"  # Carpeta para las imágenes generadas
ruta_plantuml = r"C:\Users\Andres B\Desktop\GIT\ANDRES_AI4Devs\AI4Devs-design-2\LTI-ACBG\plantuml.jar" # Ruta a plantuml.jar
ruta_wkhtmltoimage = r"C:\Program Files\wkhtmltopdf\bin\wkhtmltoimage.exe" # Cambia esto a la ruta donde está wkhtmltoimage

# Asegúrate de que la ruta de salida exista
os.makedirs(ruta_salida, exist_ok=True)

# Configuración de imgkit para usar wkhtmltoimage
imgkit_config = config(wkhtmltoimage=ruta_wkhtmltoimage)

# Función para extraer diagramas del archivo Markdown
def extraer_diagramas():
    with open(ruta_markdown, 'r', encoding='utf-8') as file:
        contenido = file.read()

    # Expresiones regulares para encontrar bloques de PlantUML y HTML
    diagramas_plantuml = re.findall(r'```plantuml(.*?)```', contenido, re.DOTALL)
    html_diagramas = re.findall(r'```html(.*?)```', contenido, re.DOTALL)

    return diagramas_plantuml, html_diagramas

# Función para generar imágenes de diagramas PlantUML
def generar_imagenes_plantuml(diagramas):
    for i, diagrama in enumerate(diagramas):
        nombre_diagrama = f"diagrama_{i + 2}"  # Diagrama2, Diagrama3, etc.
        ruta_diagrama = os.path.join(ruta_salida, f"{nombre_diagrama}.puml")

        # Guardar el diagrama PlantUML en un archivo
        with open(ruta_diagrama, 'w', encoding='utf-8') as file:
            file.write(diagrama.strip())

        # Comando para generar la imagen usando PlantUML
        comando = f'java -jar "{ruta_plantuml}" "{ruta_diagrama}" -o "{ruta_salida}"'
        
        try:
            # Ejecuta el comando y captura la salida
            resultado = subprocess.run(comando, shell=True, check=True, capture_output=True, text=True)
            print(f"Diagrama generado: {nombre_diagrama}.png")  # Mensaje de éxito
        except subprocess.CalledProcessError as e:
            print(f"Error al generar el diagrama {nombre_diagrama}: {e.stderr}")  # Mensaje de error
        except Exception as e:
            print(f"Ocurrió un error inesperado: {str(e)}")  # Mensaje de error inesperado

# Función para generar imágenes de diagramas HTML
def generar_imagenes_html(diagramas_html):
    for i, html in enumerate(diagramas_html):
        nombre_diagrama = f"diagrama_{i + 1}"  # Diagrama1, Diagrama2, etc.
        ruta_imagen = os.path.join(ruta_salida, f"{nombre_diagrama}.png")

        # Convertir HTML a imagen
        from_string(html.strip(), ruta_imagen, config=imgkit_config)  # Usar la configuración
        print(f"Imagen generada desde HTML: {nombre_diagrama}.png")  # Mensaje de éxito

# Ejecutar las funciones
diagramas_plantuml, diagramas_html = extraer_diagramas()
generar_imagenes_plantuml(diagramas_plantuml)
generar_imagenes_html(diagramas_html)