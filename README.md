# HUST Thesis Pandoc

使用Pandoc Markdown和LaTeX写华中科技大学本科生毕业论文。  
![](https://raw.githubusercontent.com/Sicun/hust-thesis-pandoc/master/example/thesis-0.png)

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
This program is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation; either version 2 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program; if not, write to the Free Software Foundation, Inc., 51 Franklin
Street, Fifth Floor, Boston, MA 02110-1301, USA.
```
