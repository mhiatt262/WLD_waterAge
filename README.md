# Delft3D FM (DFM) Input Files

This repository contains the necessary input files for running Delft3D simulations of JJean Louis, M., and M. Hiatt, Modeling the effects 
of vegetation distribution and density on hydrological connectivity and water age in a river delta, - Ecohydrology

. Below is a description of the files and how to use them.

## The Folder Model_Initiation_Files contain six (6) subfolders, one for each scenario as described in the paper (Table 2)

Each subfolder contains the following files extention: 
a. dflowfm folder that has all the inout files
b. dimr-config.xml which is the configuration file of the DIMR (See notes below)
c. run_dimr.bat which is batch file to run the DIMR. Double click onit to run, once the DFM is properly installed

Within the dflowfm subfolder, the following files are the required set uo files : 


## How to Use
1. Clone the repository: `git clone https://github.com/mhiatt262/WLD_waterAge.git`
2. Copy the input files into the appropriate directories.
3. Follow the instructions in the configuration files to run the Delft3D model.

## Notes
- Ensure you have the required dependencies installed (e.g., Delft3D, Python, etc.).Note that we use the DIMR (Deltares Integrated model Runner). 
Refer to the manual for further instructions on how to use the DIMR
mode of Delft3D to run the model 
- Please check the specific requirements for each model in the configuration files.

.WND -->  Wind file defines wind speed and direction time series
.XYZ --> Bathymetry files (defined as bed elevations)
.PLI --> Cross-section files (crs) for historical (.his) files
.XYN --> Observation points (obs) for historicl (.his) files
.XYZ --> Bed roughness files (rgh) per grid cell
.SUB --> Substances files for water age calculation 
.POL --> Poligone file per vegetation types (Colocasia, Nelumbo, Salix, Floating, SAV, Polygonum)
.BC --> Boundary condition file for different forcings (discharge, water level, tracers,temperature)
.PLI --> Polyline files where boundary conditions are forced (input discharge, water level, tracers, neumann)
.EXT --> Both old and new versions of the external files 
.MDU --> Master definition file where all geometry, physics, numerics, time and other modules set up are defined
.NC --> Grid and model geometry
.SH --> Batch script for model partition and run in case of parallel computing
