"Evaluate the following (with correct directory path) to produce metacello.json file:

  MetacelloFileTreeConstructor writeJsonFor:'/opt/git/sample/repository/metacello/Sample'
"
^MetacelloFileTreeConstructor extractMethodSectionsForSpecBlock: [:spec |
      "Baseline spec"
      spec
          for: #'common'
          do: [ 
              spec 
             	package: 'Sample-Tests' with: [ spec requires: 'Sample-Core' ];
              spec 
          do: [ 
              spec 
 			yourself.
		 ].
          do: [ 
              spec 
 			yourself.
		 ].
          do: [ 
              spec 
 			yourself.
		 ].