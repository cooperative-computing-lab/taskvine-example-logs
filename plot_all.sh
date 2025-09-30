#!/bin/sh

for workflow in lnni examol montage-base montage-groups rstriphoton
do
	mkdir -p ${workflow}/plots

	echo "plotting ${workflow} performance log (usually fast)"
	vine_graph_log -Tpng -o ${workflow}/plots/performance ${workflow}/vine-logs/performance

	echo "plotting ${workflow} transaction log (usually a bit slower)"
	vine_plot_txn_log --mode workers ${workflow}/vine-logs/transactions ${workflow}/plots/txn-workers.png

	#echo "plotting ${workflow} taskgraph (usually sloooww)"
	#dot -Tpng ${workflow}/vine-logs/taskgraph > ${workflow}/plots/taskgraph.png
done

