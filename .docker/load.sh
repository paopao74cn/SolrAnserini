#!/bin/bash

# Each index is a volume mounted on the root dir of the container, make the index available to the core.

cores=( "core17" "mb11" )

for core in "${cores[@]}"
do
    rm -f /$core/write.lock
    rm -rf /opt/solr/server/solr/mycores/$core/data/index && ln -s /$core /opt/solr/server/solr/mycores/$core/data/index
done
