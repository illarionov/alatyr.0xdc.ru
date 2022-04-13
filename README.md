# Старые спутниковые снимки

Старые спутниковые снимки и аэрофотографии Алатыря, привязанные к карте.

Код для [alatyr.0xdc.ru](alatyr.0xdc.ru).

# Сборка

Требуемые для сборки зависимости:

```
apt install curl imagemagick zstd gdal-bin
```

GDAL должен быть версии не ниже `3.3.2`. Можно установить из `ppa:ubuntugis`.

Также требуется установленный [pngout].

Переменная окружения BING_KEY должна быть инициализирована ключом Bing Maps.

Сборка сайта:

```
make build_site
```

Сборка привязанных снимков:

```
make build_1942
```



[pngout]: http://www.jonof.id.au/kenutils.html
