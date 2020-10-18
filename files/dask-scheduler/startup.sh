#!/bin/sh

set -e

dask-scheduler \
  --host {{ engines.dask-scheduler.vars.private_ip }} \
  --port {{ engines.dask-scheduler.vars.port }} \
  --dashboard \
  --dashboard-address :{{ engines.dask-scheduler.vars.dashboard_port }}