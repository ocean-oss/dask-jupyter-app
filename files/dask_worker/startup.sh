#!/bin/sh

set -e

dask-worker \
  --worker-port {{ engines.dask_worker.networking.ports.worker.value }} \
  --nanny-port {{ engines.dask_worker.networking.ports.nanny.value }} \
  --no-dashboard \
  --nthreads {{ engines.dask_worker.deployment.hardware.cpu.vcpus }} \
  {{ engines.dask_scheduler.vars.url }}