N=[0m
V=[01;32m
A=[01;33m

all:
	@echo ""
	@echo "$(A)Comandos disponibles: $(N)"
	@echo ""
	@echo "  $(V)actualizar$(N)  Actualiza el repositorio e instala las dependencias."
	@echo ""
	@echo "  $(V)compilar$(N)    Arma una nueva versión del a aplicación y la sube a npm."
	@echo "  $(V)live$(N)        Ejecuta los test de unidad."
	@echo ""
	@echo "  $(V)test_linux$(N)  Abre la pagina de prueba."
	@echo ""
	@echo ""

actualizar:
	git pull
	npm install
	sudo npm install -g grunt-cli

test_linux:
	open destino/index.html

compilar:
	grunt less

live:
	grunt watch
