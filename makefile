#ADP = /usr/bin/asciidoctor-pdf
ADP = asciidoctor-pdf
THM = theme.yml
FNT = ./fonts

%.pdf: %.adoc
	-rm *.pdf
	@$(ADP) -a pdf-theme=$(THM) -a pdf-fontsdir=$(FNT) $< -o $@
	@echo "Documento PDF generado"
