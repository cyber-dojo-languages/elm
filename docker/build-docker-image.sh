#!/bin/bash

my_dir="$( cd "$( dirname "${0}" )" && pwd )"

. ${my_dir}/image_name.sh

docker build --tag ${image_name} ${my_dir}
