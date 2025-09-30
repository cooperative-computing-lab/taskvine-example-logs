#!/bin/sh

WORKFLOWS=lnni examol montage-base montage-groups rstriphoton

for workflow in ${WORKFLOWS}
do
	mkdir -p examples/${workflow}/plots

	echo "plotting ${workflow} performance log (usually fast)"
	vine_graph_log -Tpng -o examples/${workflow}/plots/performance examples/${workflow}/vine-logs/performance

	echo "plotting ${workflow} transaction log (usually a bit slower)"
	vine_plot_txn_log --mode workers examples/${workflow}/vine-logs/transactions examples/${workflow}/plots/txn-workers.png

	#echo "plotting ${workflow} taskgraph (usually sloooww)"
	#dot -Tpng examples/${workflow}/vine-logs/taskgraph > examples/${workflow}/plots/taskgraph.png
done

echo "<table>"
for workflow in ${WORKFLOWS}
do
    echo "<tr>"
    for type in tasks tasks-capacities tasks-accum workers workers-accum workers-disk time-manager time-workers transfer times-stacked
    do
	echo "<td><img src=examples/${workflow}/plots/performance.${type}.png>"
    done
    for type in txn-workers taskgraph
    do
	echo "<td><img src=examples/${workflow}/plots/${type}.png>"
    done
done
echo "</table>"
