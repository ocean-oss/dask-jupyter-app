# Dask/Jupyter App

This app runs a fully-managed Dask cluster of an arbitrary size. It also launches a Jupyter instance that is configured to work with the Dask cluster.

To access the Dask cluster in your notebooks simply use the `DASK_MASTER_ADDRESS` environment variable:

~~~
import os

os.environ['DASK_MASTER_ADDRESS']
~~~

## Included Packages

This app includes many Python packages for scientific computing:

- dask
- pandas
- numexpr
- matplotlib
- scipy
- seaborn
- scikit-learn
- scikit-image
- sympy
- cython
- patsy
- statsmodel
- cloudpickle
- dill
- numba
- bokeh
- sqlalchemy
- hdf5
- vincent
- beautifulsoup
- protobuf
- xlrd
- bottleneck
- pytables
- ipywidgets
- ipymp 