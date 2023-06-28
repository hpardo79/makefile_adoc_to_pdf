# Crear archivo MAKE para generar PDF de documento ADOC
Primero instalar el asciidoctor-pdf que requerimos para la conversión del archivo .adoc.

Ejemplo para Debian y sus Derivadas:
```shell:
$ apt install ruby-asciidoctor-pdf
```

O por `gem install`
```shell:
$ gem install asciidoctor-pdf
```
Ahora genera tu documento con lenguaje de marcado ligero `Asciidoc`, este archivo tendrá la extensión **.adoc**.

Incluye la carpeta del **tipo de letra** a utilizar, la carpeta de las **imágenes** y también el **archivo de estilo** para el documento PDF (basado en `css`), el mismo tiene como extensión **.yml**

Ahora crear el archivo `make` con el siguiente el código escrito:
```shell:
ADP = asciidoctor-pdf
THM = theme.yml
FNT = ./fonts

%.pdf: %.adoc
	-rm *.pdf
	@$(ADP) -a pdf-theme=$(THM) -a pdf-fontsdir=$(FNT) $< -o $@
	@echo "Documento PDF generado"
```


