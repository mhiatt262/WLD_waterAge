#!/bin/bash
#SBATCH -J baseline_age          # Job name
#SBATCH -n 64                 # Number of MPI tasks (processes/cores)
#SBATCH -N 1                  # Number of nodes to be allocated
#SBATCH -t 144:00:00          # Wall time limit (hh:mm:ss)
#SBATCH -p single             # Partition/queue name
#SBATCH -A hpc_delft3dh2o     # Allocation/project name
#SBATCH -o delft3dfm.o        # Output file
#SBATCH -e delft3dfm.err      # Error file
#SBATCH --mail-user=mjeanl1@lsu.edu  # Email address
#SBATCH --mail-type=ALL       # Email notification

date > run.begin
mpiexec -n 64 singularity exec -B /work:/work /home/admin/singularity/delft3dfm_r142632.sif  dflowfm --autostartstop FlowFM.mdu --processlibrary "/opt/delft3dfm_r142632/build_all/install/share/delft3d/proc_def.dat" >out.txt 2>err.txt
date > run.end
exit 0

