#!/bin/sh

set -e

dask-scheduler \
  --host {{ engines.dask-master.vars.private_ip }} \
  --port {{ engines.dask-master.vars.port }} \
  --dashboard \
  --dashboard-address :{{ engines.dask-master.vars.dashboard_port }}