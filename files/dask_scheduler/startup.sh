#!/bin/sh

set -e

dask_scheduler \
  --host {{ engines.dask_scheduler.vars.private_ip }} \
  --port {{ engines.dask_scheduler.vars.port }} \
  --dashboard \
  --dashboard-address :{{ engines.dask_scheduler.vars.dashboard_port }}