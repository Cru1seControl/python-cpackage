# cpackage 
A python utility for creating better modules/packages. This module give the ability to quickly create and add files to different directories. From creating directory & sub directory to managing the files that are put into those folders. This is more of an automation tool for writing modules but can be used for other package related matters.

## Prerequisites
* Python 3.x.x required [Latest version here](https://www.python.org/ftp/python/3.8.2/python-3.8.2.exe)

* Module os [preinstalled](https://docs.python.org/3/library/os.html)

* Module sys [preinstalled](https://docs.python.org/3.8/library/sys.html)

* Module shutil [preinstalled](https://docs.python.org/3/library/shutil.html)

# Installing

### **Installing from Github**

```bash
$ git clone "https://github.com/Cru1seControl/python-cpackage.git"
$ cd python-cpackage/ && chmod +x install.sh && sed -i -e 's/\r$//' install.sh && ./install.sh
$ sudo rm -r -I python-cpackage/
```
### **Installing from [PyPI](https://pypi.org/project/cpackage/)**
```bash
$ pip3 install cpackage
```
# cpackage Module Usage

```python
from cpackage import CPack, CAccess, Cdir

CPack("mymodule", True, "code", "other")
CAccess("mymodule", True, "README.md")
CAccess("mymodule/code", True, "__init__.py", "script.py")
CAccess("mymodule/other", True, "examples.md", "python-tests.py")

print(Cdir("mymodule", True))
```
our package so far...

    ├───mymodule
        ├────README.md
        ├───code
            ├────__init__.py
            ├────script.py
        ├───other
            ├────examples.md
            ├────python-tests.py
> NOT an actual depiction of the output

or you can create a simple package in one line using cpackage.tool

```bash
python3 -m cpackage.tool -pkg simplepackage -sub code other --current
```

# cpackage Tool Help
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

# cpackage Functions

## CPack Description
CPack takes one required argument pkg which is the package name. The second argument defaults to False but is recomended to be set True, True for current PWD or False for site-packages default. Third argument \*sub_package is the sub package names you want to set, can be one.

## CAccess Description
CAccess takes two required arguments pkg & \*fd. The second argument again defaults to False but is recomended set True. Pkg is the previously made package name or name & sub package name created with CPack. \*fd references the files to be created inside of the set package.

## Cdir Description
Cdir takes 1 required argument, pkg. The second argument again defaults to False but is recomended set True. Pkg is the previously made package name or name & sub package name created with CPack. Cdir returns a dictionary of the set package that it was given.

## CRemove Description
CRemove takes 1 required argument, pkg. The second argument again defaults to False but is recomended set True. Remove the set package tree that it is given.
