# cellorganizer-galaxy-tools

![screenshot](/images/screenshot.png)

This repository contains the CellOrganizer Galaxy tools and the instructions on how to install them on your Galaxy instance.

## Prerequisites

Before you attempt to install the tools make sure to have

* A working Galaxy instance. Installing Galaxy is beyond the scope of this document. Please refer to the [official documentation](https://galaxyproject.org/admin/get-galaxy/) to install an instance.
* Matlab. Matlab should be installed in the same machine running Galaxy. Installing Matlab is beyond the scope of this document. Please refer to the [official documentation](https://www.mathworks.com/support/install-matlab.html?q=&page=1) to build an instance.
* The Matlab binary must be in the `$PATH` of the user running Galaxy.

  For example
  
  ```
  ~ export PATH=$(PATH):/opt/matlab/bin  
  ~ echo $PATH
  /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/opt/matlab/bin

  ~ which matlab
  /opt/matlab/bin/matlab
  ```

## Installing CellOrganizer for Galaxy

* CellOrganizer must be downloaded into the system running Galaxy. Its location should be set in an environment variable called `$CELLORGANIZER`. The environment variable needs to be accessible to the user running your Galaxy instance. Make sure the user running Galaxy has reading permissions on the CellOrganizer location.

  For example
  
  ```
  ~ export CELLORGANIZER=/usr15/galaxy/cellorganizer-galaxy-tools-v2.8.0/cellorganizer3
  ~ echo $CELLORGANIZER
  /usr15/galaxy/cellorganizer-galaxy-tools-v2.8.0/cellorganizer3
  ```

  To download CellOrganizer visit the [official website](http://www.cellorganizer.org). Please make sure the version of CellOrganizer you install matches the version of CellOrganizer for Galaxy. 

* Copy the CellOrganizer tools into the `$GALAXY/tools`. The variable `$GALAXY`, as explained in the official documentation, holds the location of your Galaxy instance.

## Contributing

When contributing to this repository, please first discuss the change you wish to make via issue, [email](mailto:cellorganizer-dev@compbio.cmu.edu), or any other method with the owners of this repository before making a change.

---

Support for [CellOrganizer](http://cellorganizer.org/) has been provided by grants GM075205, GM090033 and GM103712 from the [National Institute of General Medical Sciences](http://www.nigms.nih.gov/), grants MCB1121919 and MCB1121793 from the [U.S. National Science Foundation](http://nsf.gov/), by a Forschungspreis from the [Alexander von Humboldt Foundation](http://www.humboldt-foundation.de/), and by the [Freiburg Institute for Advanced Studies](http://www.frias.uni-freiburg.de/lifenet?set_language=en).

[![MMBioS](https://i1.wp.com/www.cellorganizer.org/wp-content/uploads/2017/08/MMBioSlogo-e1503517857313.gif?h=60)](http://www.mmbios.org)

Copyright (c) 2007-2019 by the [Murphy Lab](http://murphylab.web.cmu.edu) at the [Computational Biology Department](http://www.cbd.cmu.edu) in [Carnegie Mellon University](http://www.cmu.edu)

