## TH Data Science

This image was built with data science in mind.
Contains the most common python packages used in data science:

* Numpy
* scipy
* psycopg2
* scikit-learn

Due it's difficult to build the product image every time, the TrueHome data science time decided to build this image as base to avoid to install this packages every time.

The chosen operating system Debian Slim Buster.

Just download it from Docker Hub:
```
$ docker pull truehomemx/th_data_science:0.1.0
```
or use it like a base image:
```dockerfile
FROM truehomemx/th_data_science:0.1.0
```
