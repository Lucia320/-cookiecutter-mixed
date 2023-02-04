#!/usr/bin/env bash

# Prerequisites
#sh app-cookiecutter-mixed.sh true app-java cookiecutter-java /cookiecutter
is_main=$1
app_name=$2
template=$3
working_directory=$4
echo "INFO - Validating script"

echo "INFO init process with $app_name > IS MAIN $is_main"

if $is_main ; then
    echo "INFO init build Template> $template "
    echo "INFO main folder>"
    rm -rf $working_directory/build
    pwd
    echo "INFO execute cookiecutter --config-file /cookiecutter/cookiecutter-config.yaml --no-input --output-dir $working_directory/build $working_directory/$template"
    cookiecutter --config-file /cookiecutter/cookiecutter-config.yaml --no-input --output-dir $working_directory/build $working_directory/$template
    echo "cookiecutter --config-file /cookiecutter/cookiecutter-config.yaml  --no-input --output-dir build $working_directory/cookiecutter-java"
    echo "INFO The folder was generated in folder build"
    ls
    echo "INFO The process is finish"
else
    echo "INFO init build Template> $template "
    echo "INFO dependency folder>"
    echo "INFO build dependency $template"
    rm -rf $working_directory/build/dependency
    echo "================================="
    echo "INFO files dependency"
    pwd
    echo "INFO execute cookiecutter --config-file /cookiecutter/cookiecutter-config.yaml --no-input --output-dir $working_directory/build/dependency $working_directory/$template"
    cookiecutter --config-file /cookiecutter/cookiecutter-config.yaml  --no-input --output-dir $working_directory/build/dependency $working_directory/$template
    echo "cookiecutter --config-file /cookiecutter/cookiecutter-config.yaml  --no-input --output-dir $working_directory/build/dependency $working_directory/$template"
    echo "INFO The folder was generated in folder build/dependency"
    ls
    echo "INFO copy cp -R $working_directory/build/dependency/$app_name $working_directory/build/$app_name"
    cp -R $working_directory/build/dependency/$app_name $working_directory/build
    echo "================================="
fi

#test
#cookiecutter --no-input --output-dir build /cookiecutter/cookiecutter-java
#cookiecutter --config-file /cookiecutter/cookiecutter-config.yaml  --no-input --output-dir build /cookiecutter/cookiecutter-ruby