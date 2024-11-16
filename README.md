This repository contains the necessary input files for running Delft3D simulations described in the paper:

Jean Louis, M., and M. Hiatt, "Modeling the effects of vegetation distribution and density on hydrological connectivity and water age in a river delta" - Ecohydrology.

Below is a detailed description of the files and instructions for their use.

Folder Structure: Model_Initiation_Files

The Model_Initiation_Files folder contains six (6) subfolders, one for each scenario described in the paper (see Table 2). Each subfolder includes the following essential files:

dflowfm folder: Contains all the input files necessary to run the Delft3D Flexible Mesh model.

dimr-config.xml: The configuration file for the Deltares Integrated Model Runner (DIMR). See notes below for additional guidance.

run_dimr.bat: A batch file to execute the DIMR. Double-click on this file to run the model, provided Delft3D FM is correctly installed.

Files Within the dflowfm Subfolder

Below are the file types required to set up the model:

.WND — Wind file defining wind speed and direction time series.

.XYZ — Bathymetry file specifying bed elevations.

.PLI — Cross-section (CRS) file for historical (.his) files.

.XYN — Observation points (OBS) for historical (.his) files.

.XYZ — Bed roughness file defining roughness per grid cell.

.SUB — Substances file for water age calculations.

.POL — Polygon file for vegetation types (e.g., Colocasia, Nelumbo, Salix, Floating, SAV, Polygonum).

.BC — Boundary condition file for various forcings, including discharge, water level, tracers, and temperature.

.PLI — Polyline file where boundary conditions are applied (e.g., input discharge, water level, tracers, Neumann).

.EXT — External file (supports both old and new versions).

.MDU — Master definition file defining geometry, physics, numerics, time settings, and other modules.

.NC — Grid and model geometry file.

.SH — Batch script for model partitioning and running in parallel computing environments.

How to Use

Clone the repository:

git clone https://github.com/mhiatt262/WLD_waterAge.git

Prepare the input files:

Copy the input files into the appropriate directories for each scenario.

Run the model:

Use the dimr-config.xml configuration file and run_dimr.bat batch file to execute the simulations.

Ensure Delft3D FM and its dependencies are correctly installed on your system.

Notes

Dependencies: Ensure you have the required software installed, including Delft3D Flexible Mesh and Python (if needed).

DIMR Configuration: Refer to the Delft3D manual for detailed instructions on using the DIMR mode.

Model Requirements: Check the specific requirements for each scenario in the configuration files.

This repository is designed to facilitate the simulation of hydrological and ecological processes in a river delta, providing robust tools to study the impacts of vegetation distribution and density on connectivity and water age.

