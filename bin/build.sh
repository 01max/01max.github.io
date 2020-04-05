#!/bin/sh

haml ./index.haml ./index.html

sass style/shared.sass style/shared.css

cd resume/fr/
resume export index.html
cd ../../