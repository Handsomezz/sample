To install the latest working copy in your image:

```Smalltalk
Metacello new
  project: 'Sample';
  repository: 'github://dalehenrich/sample:master';
  load.
```

## Basic directory structure

```
+-sample
  +-core/
  +-license.txt
  +-metacello.json
  +-metacello.st
  +-README.md
  +-src/
```

The **core** directory contains all of the packages  for this project. 
See the [README.md file](src/README.md) in the [core](core) directory for more information.

The **doc** directory contains directories for **examples**, **scripts**, and **tutorials**. 

The **metacello.json** file is the metacello dependency information in json format.

The **metacello.st** file is the metacello dependency information in metacello spec format.

