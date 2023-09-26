*** Settings ***
Library     SeleniumLibrary    timeout=60s
Library     String
Library     Process
Library     DateTime
Library     OperatingSystem
Resource    ${CURDIR}/global_file_path.robot
Library     ${CUSTOMLIBRARYPATH}customlibrary.py