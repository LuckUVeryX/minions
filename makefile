web-server: |
	dashmon --fvm \
	run -d web-server \
	-t lib/main_development.dart \
	--dart-define-from-file api-keys.json

watch: |
	dart run build_runner watch \
	--delete-conflicting-outputs