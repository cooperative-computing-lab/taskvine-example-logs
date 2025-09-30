# TaskVine Example Logs Repository

This repo contains examples of detailed log files from
large workflow runs, which can be processed and displayed
by the taskvine tools.

<img src=lnni/plots/performance.workers.png>
<img src=lnni/plots/performance.workers-accum.png>
<img src=lnni/plots/performance.workers-disk.png>
<img src=lnni/plots/performance.tasks.png>
lnni/plots/performance.tasks-capacities.png
lnni/plots/performance.tasks-accum.png
lnni/plots/performance.time-manager.png
lnni/plots/performance.time-workers.png
lnni/plots/performance.transfer.png
lnni/plots/performance.times-stacked.png

for name in 


To rebuild the plots from source, install the required tools:
```
conda env create -f environment.yml
conda activate taskvine-example-logs
```

Then run:
```
./plot_all.sh
```

