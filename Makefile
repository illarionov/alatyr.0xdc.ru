DIR1942 = 1942

.PHONY: default
default: build_site

.PHONY: all
all: build_site build_1942

.PHONY: build_1942
build_1942:
	$(MAKE) -C $(DIR1942) all

.PHONY: build_site
build_site:
	hugo --minify

.PHONY: clean
clean:
	rm -rf build
	$(MAKE) -C $(DIR1942) clean

.PHONY: serve
serve:
	hugo server -D

.PHONY: validate
validate:
	hugo check

.PHONY: deploy_site build_site
deploy_site: build_site
	aws s3 sync --endpoint-url=https://storage.yandexcloud.net --exclude 'tiles/*' \
	--size-only --delete public s3://alatyr.0xdc.ru

.PHONY: deploy_1942 build_1942
deploy_1942: build_1942
	aws s3 sync --size-only --delete --endpoint-url=https://storage.yandexcloud.net \
	1942/build/al1942/ s3://alatyr.0xdc.ru/tiles/1942/

.PHONY: deploy
deploy: deploy_site deploy_1942
