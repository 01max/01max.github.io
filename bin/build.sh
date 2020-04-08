#!/bin/sh

haml ./index.haml ./index.html
haml ./resume/template/resume.haml ./resume/fr/index.html

sass style/shared.sass style/shared.css
sass style/resume.sass style/resume.css
