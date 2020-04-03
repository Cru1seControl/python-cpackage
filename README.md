# cpackage
A python utility for creating better modules/packages. 

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

# cpackage tool usage

```bash
python3 -m cpackage.tool -pkg simplepackage -sub code other --current
```

# cpackage tool help
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
