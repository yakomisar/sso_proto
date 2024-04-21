generate:
	mkdir -p pkg
	# Указываем путь, где лежит прото-файл
	# Далее указываем source_relative - помогает избежать огорода папок
	# Просим, чтобы при генерации файлов использовался локально скаченный плагин
	protoc -I proto proto/sso/v1/sso.proto \
	  --go_out=pkg --go_opt=paths=source_relative \
	  --go-grpc_out=pkg --go-grpc_opt=paths=source_relative \
