# units-converter-web

A lightweight web interface for
[`FrozenLemonTee/units-converter`](https://github.com/FrozenLemonTee/units-converter).

The app uses a MoonBit JavaScript bridge for unit parsing, conversion, formatting,
and dimension compatibility checks. The browser UI is plain JavaScript, HTML, and
CSS.

## Build

```sh
moon build web-bridge --target js
```

## Run Locally

Serve the project root with any static file server, then open `web/index.html`.

```sh
python -m http.server 8000
```

Then visit:

```text
http://localhost:8000/web/
```

