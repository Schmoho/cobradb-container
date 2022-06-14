# Why?
[cobradb](https://github.com/SBRG/cobradb) and [bigg_models](https://github.com/SBRG/bigg_models) unfortunately are no longer actively maintained at this point in time.

Also, for the newest version of BiGG, there is no SQL dump available.

Unfortunately, the installation of cobradb and bigg-db turned out to be somewhat involved, so this repository serves to provide a reproducible build environment.

This container serves as the basis for [bigg-db-container](https://github.com/Schmoho/bigg-db-container), which serves to reproduce the actual build of a BiGG-DB SQL dump.

It builds on [postgres-python3.7](https://github.com/Schmoho/postgres-python3.7).
