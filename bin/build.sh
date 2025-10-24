#!/bin/sh

# Render index.haml and overwrite index.html
bundle exec haml render ./index.haml > ./index.html

# Render resume template and overwrite resume/fr/index.html
bundle exec haml render ./resume/template/resume.haml > ./resume/fr/index.html

# Compile SASS
bundle exec sass style/shared.sass style/shared.css
bundle exec sass style/resume.sass style/resume.css
