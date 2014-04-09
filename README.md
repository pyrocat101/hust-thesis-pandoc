# HUST Thesis Pandoc

使用Pandoc Markdown和LaTeX写华中科技大学本科生毕业论文。

## Usage

1. 安装最新版pandoc和TeX Live；
2. （对于非Windows用户）安装Windows的宋体、黑体、仿宋、楷体；
3. 修改`template.tex`以适合你的需要，在`abstract.tex`、`thesis.md`和`thanks.md`中书写你的论文；
4. `make`。

阅读`template.tex`、`abstract.tex`、`thesis.md`和`thanks.md`，看看`thesis.pdf`是由怎样的源码生成的。

## Acknowledgement

感谢[@aifreedom][aifreedom]学长编写的华中科技大学本科毕业论文[文档类][cls]。

[aifreedom]: http://xiesong.me/
[cls]: https://github.com/aifreedom/HUST-Undergraduate-Thesis

##FAQ

 1. 如果正确安装了需要的字体还是出现类似错误：
>!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 !
 ! fontspec error: "font-not-found"
 !
 ! The font "[SIMKAI.TTF]" cannot be found.
 !
 ! See the fontspec documentation for further information.
 !
 ! For immediate help type H <return>.
 !...............................................

 那么请打开`/usr/local/texlive/2013/texmf-dist/tex/latex/ctex/fontset/ctex-xecjk-winfonts.def`或`/usr/share/texmf-dist/tex/latex/ctex/fontset/ctex-xecjk-winfonts.def`将`[SIMKAI.TTF]`，`[SIMFANG.TTF]`分别改成`KaiTi`，`FangSong` 。

## License

```
The MIT License (MIT)

Copyright (c) <year> <copyright holders>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```
