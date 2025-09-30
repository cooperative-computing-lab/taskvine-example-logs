#!/bin/sh

WORKFLOWS="lnni examol montage-base montage-groups rstriphoton dv5"

echo "<table>"
for workflow in ${WORKFLOWS}
do
    echo "<tr>"
    echo "<td><h2>$workflow</h2>"
    echo "<ul>"
    for file in debug taskgraph transactions performance
    do
	echo "<li><a href=examples/${workflow}/vine-logs/${file}>$file</a>"
    done
    for type in performance.tasks performance.tasks-accum performance.workers performance.workers-accum performance.workers-disk
    do
	echo "<td><a href=examples/${workflow}/plots/${type}.png><img src=examples/${workflow}/plots/${type}.png width=250>"
    done
    echo "<tr><td>"
    for type in performance.time-manager performance.time-workers performance.transfer performance.times-stacked txn-workers
    do
	echo "<td><a href=examples/${workflow}/plots/${type}.png><img src=examples/${workflow}/plots/${type}.png width=250>"
    done
done
echo "</table>"
