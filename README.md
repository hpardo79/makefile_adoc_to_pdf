# Utilizar MAKE para generar PDF a partir del documento ADOC
Primero instalar el asciidoctor-pdf que requerimos para la conversión del archivo .adoc.

Ejemplo para Debian y sus Derivadas:
```shell:
$ apt install ruby-asciidoctor-pdf
```

O por `gem install`
```shell:
$ gem install asciidoctor-pdf
```

Genera tu documento con lenguaje de marcado ligero **Asciidoc** este archivo tendrá la extensión `.adoc`.

Incluir la carpeta de los **Tipo de letras** a utilizar en el documento, la carpeta de **Imágenes** a incrustar y el archivo de **Estilo** para el documento que tiene como extensión `.yml`.

Ahora crear `makefile` con el siguiente contenido:
```shell:
ADP = asciidoctor-pdf
THM = theme.yml
FNT = ./fonts

%.pdf: %.adoc
	-rm *.pdf
	@$(ADP) -a pdf-theme=$(THM) -a pdf-fontsdir=$(FNT) $< -o $@
	@echo "Documento PDF generado"
```

Ejecutar desde la terminal para generar el documento `PDF`:
```shell:
$ make documento.pdf
```

**Nota:** El nombre del archivo `.adoc` y el `.pdf` es el mismo.
