#!/bin/sh

set -e

dask-scheduler \
  --host {{ engines.dask_scheduler.vars.private_ip }} \
  --port {{ engines.dask_scheduler.networking.ports.scheduler.value }} \
  --dashboard \
  --dashboard-address :{{ engines.dask_scheduler.networking.ports.dashboard.value }}