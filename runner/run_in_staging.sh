#!/bin/sh
test_to_run=$1

robot -d results/ -A argument_file.txt -v URL:https://www.staging.amaysim.com.au/ -v BROWSER:Chrome -i $test_to_run src/amaysim/testsuite