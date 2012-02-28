## Monticello Package Structure for file-based repositories

<pre>
+-core/
  +-Sample-Core.pkg\
    +-snapshot\
    | +-classes\
    | | +-SampleCore.class\
    | |   +-instance-side\
    | |     +-SampleCore.st
    | |     +-author.st
    | +-extensions\
    |   +-Object.class\
    |     +-instance-side\
    |       +-isSample.st
    +-.filetree
    +-package
    +-version
</pre>
  
The [**.pkg**](core/Sample-Core.pkg) directory is the root of the package structure. The **.filetree**, **package**, and **version** files contain package meta data.

The [**snapshot**][6] directory contains the Monticello definitions. The [**extensions**][4] 
subdirectory contains the extension method definitions organized by class
and the [**classes**][3] subdirectory contains the class and method definitions organized by class.

Here is an example of an [extension method for the class Object][5].

Here is an example of a [class definition for the class SampleCore][1] and a [method
definition for the class SampleCore][2].

[1]: https://github.com/dalehenrich/sample/blob/master/src/Sample-Core.pkg/snapshot/classes/SampleCore.class/instance-side/SampleCore.st
[2]: https://github.com/dalehenrich/sample/blob/master/src/Sample-Core.pkg/snapshot/classes/SampleCore.class/instance-side/authorName.st
[3]: https://github.com/dalehenrich/sample/tree/master/src/Sample-Core.pkg/snapshot/classes

[4]: https://github.com/dalehenrich/sample/tree/master/src/Sample-Core.pkg/snapshot/extensions
[5]: https://github.com/dalehenrich/sample/blob/master/src/Sample-Core.pkg/snapshot/extensions/Object.class/instance-side/isSample.st

[6]: https://github.com/dalehenrich/sample/tree/master/src/Sample-Core.pkg/defs


