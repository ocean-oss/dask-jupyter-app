#!/bin/sh

set -e

dask-worker \
  --worker-port {{ engines.dask-worker.vars.port }} \
  --nanny-port {{ engines.dask-worker.vars.nanny_port }} \
  --dashboard \
  --dashboard-address :{{ engines.dask-worker.vars.dashboard_port }} \
  --nthreads {{ engines.dask-worker.deployment.hardware.cpu.vcpus }} \
  {{ engines.dask-master.vars.url }}