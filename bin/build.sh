#!/bin/sh

haml ./index.haml ./index.html
haml ./resume/template/new_resume.haml ./resume/fr/new_resume.html

sass style/shared.sass style/shared.css
sass style/resume.sass style/resume.css

cd resume/fr/
resume export index.html
cd ../../