#!/bin/bash -x
#
#  Sample test driver that allows for customizing build/tests based on env vars defined in .travis.yml
#
#      -verbose flag causes unconditional transcript display
#
# Copyright (c) 2013 VMware, Inc. All Rights Reserved <dhenrich@vmware.com>.
#


if [ "${CONFIGURATION}x" = "x" ]; then
  if [ "${BASELINE}x" = "x" ]; then
    echo "Must specify either BASELINE or CONFIGURATION"
    exit 1
  else
    PROJECT_LINE="  baseline: '${BASELINE}';"
    VERSION_LINE=""
    REPOSITORY_LINE="  repository: 'filetree://', (FileDirectory default directoryNamed: 'git_cache') fullName"
    FULL_CONFIG_NAME="BaselineOf${BASELINE}"
  fi
else
  PROJECT_LINE="  configuration: '${CONFIGURATION}';"
  VERSION_LINE="  version: '$VERSION';"
  REPOSITORY_LINE="  repository: '$REPOSITORY';"
  FULL_CONFIG_NAME="ConfigurationOf${CONFIGURATION}"
fi

OUTPUT_PATH="${PROJECT_HOME}/tests/travisCI.st"

cat - >> $OUTPUT_PATH << EOF
 Transcript cr; show: 'travis--->${OUTPUT_PATH}'.
 "Load the configuration or baseline"
 Metacello new
 $PROJECT_LINE
 $VERSION_LINE
 $REPOSITORY_LINE
   load: #( ${LOADS} ).
  "Run the tests"
  TravisCIHarness
    value: #( '${FULL_CONFIG_NAME}' )
    value: 'TravisCISuccess.txt' 
    value: 'TravisCIFailure.txt'.
EOF

cat $OUTPUT_PATH

ls -altr *
ls -altr */*

$BUILDER_CI_HOME/testTravisCI.sh "$@"
if [[ $? != 0 ]] ; then exit 1; fi
