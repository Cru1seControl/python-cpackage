# cpackage
A python utility for creating better modules/packages. This module give the ability to quickly create and add files to different directories. From creating directory & sub directory to managing the files that are put into those folders. This is more of an automation tool for writing modules but can be used for other package related matters.

## Prerequisites
* Python 3.x.x required [Latest version here](https://www.python.org/ftp/python/3.8.2/python-3.8.2.exe)

* Module os [preinstalled](https://docs.python.org/3/library/os.html)

* Module sys [preinstalled](https://docs.python.org/3.8/library/sys.html)

* Module shutil [preinstalled](https://docs.python.org/3/library/shutil.html)

# cpackage module usage

```python
from cpackage import CPack, CAccess, Cdir

CPack("mymodule", True, "code", "other")
CAccess("mymodule", True, "README.md")
CAccess("mymodule/code", True, "__init__.py", "script.py")
CAccess("mymodule/other", True, "examples.md", "python-tests.py")

print(Cdir("mymodule", True))
```

or you can create a simple package in one line using cpackage.tool

## cpackage tool usage

```bash
python3 -m cpackage.tool -pkg simplepackage -sub code other --current
```

## cpackage tool help
```
python3 -m cpackage.tool --help
usage: tool.py [-h] [-pkg PKG] [-sub SUB [SUB ...]] [-listdir LISTDIR] [-access ACCESS] [-remove REMOVE] [--site]
               [--current]

optional arguments:
  -h, --help          show this help message and exit
  -pkg PKG            Package name to create
  -sub SUB [SUB ...]  Sub package names to create
  -listdir LISTDIR    List directory and sub packages
  -access ACCESS      Create files within a package
  -remove REMOVE      Remove entire package tree
  --site              Use python site packages directory
  --current           Use current working directory
```
