# units-converter-web

`units-converter-web` 是
[`FrozenLemonTee/units-converter`](https://github.com/FrozenLemonTee/units-converter)
的轻量 Web 界面。

项目通过 MoonBit JavaScript bridge 复用单位解析、单位换算、格式化和量纲兼容性检查能力。浏览器界面由普通 JavaScript、HTML 和 CSS 实现。

## 功能

- 换算带单位的数量表达式。
- 拒绝量纲不兼容的目标单位。
- 支持 ASCII、SI、LaTeX 三种输出格式。
- 构建 MoonBit JavaScript bridge 后可作为静态网页运行。

## 示例

```text
9.8 m/s^2 -> ft/s^2
60 km/h -> m/s
1 kWh -> J
10 J/rad -> N*m/rad
3 m -> s
```

最后一个示例会失败，因为长度和时间量纲不兼容。

## 构建

```sh
moon build web-bridge --target js
```

## 本地运行

使用任意静态文件服务器服务项目根目录，然后打开 `web/index.html`。

```sh
python -m http.server 8000
```

然后访问：

```text
http://localhost:8000/web/
```

## 依赖

本项目依赖已发布的 MoonBit 包：

```text
FrozenLemonTee/units-converter@0.1.0
```

Web 层不维护自己的单位表或换算规则。
