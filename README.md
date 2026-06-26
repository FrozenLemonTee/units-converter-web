# units-converter-web

A lightweight web interface for
[`FrozenLemonTee/units-converter`](https://github.com/FrozenLemonTee/units-converter).

The app uses a MoonBit JavaScript bridge for unit parsing, conversion,
formatting, and dimension compatibility checks. The browser UI is plain
JavaScript, HTML, and CSS.

## Features

- Convert unit-bearing quantity expressions.
- Reject incompatible target dimensions.
- Switch output format between ASCII, SI, and LaTeX.
- Run as a static web page after building the MoonBit JavaScript bridge.

## Examples

```text
9.8 m/s^2 -> ft/s^2
60 km/h -> m/s
1 kWh -> J
10 J/rad -> N*m/rad
3 m -> s
```

The last example intentionally fails because length and time are incompatible
dimensions.

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

## Dependency

This project depends on the published MoonBit package:

```text
FrozenLemonTee/units-converter@0.1.0
```

The web layer does not maintain its own unit table or conversion rules.
