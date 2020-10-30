#!/bin/sh

set -e

dask_worker \
  --worker-port {{ engines.dask_worker.vars.port }} \
  --nanny-port {{ engines.dask_worker.vars.nanny_port }} \
  --dashboard \
  --dashboard-address :{{ engines.dask_worker.vars.dashboard_port }} \
  --nthreads {{ engines.dask_worker.deployment.hardware.cpu.vcpus }} \
  {{ engines.dask_scheduler.vars.url }}