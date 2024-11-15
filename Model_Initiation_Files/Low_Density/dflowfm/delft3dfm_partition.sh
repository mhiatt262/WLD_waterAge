#!/bin/bash
#SBATCH -J delft3dfm		 #Job name
#SBATCH -n 64                    # Number of MPI tasks (processes/cores)
#SBATCH -N 1                     # Number of nodes to be allocated
#SBATCH -t 144:00:00             # Wall time limit (hh:mm:ss)
#SBATCH -p single                # Partition/queue name
#SBATCH -A hpc_delft3dh2o        # Allocation/project name
#SBATCH -o delft3dfm.o           # Output file
#SBATCH -e delft3dfm.err         # Error file
#SBATCH --mail-user=mjeanl1@lsu.edu     # Email address
#SBATCH --mail-type=ALL          # Email notification

# Run Delft3D Fm using Singularity image using 64 domains, and six solvers

module purge

srun --overlap -n 1 singularity exec -B /work /home/admin/singularity/delft3dfm_r142632.sif run_dflowfm.sh autostartstop --partition:ndomains=64:icgsolver=6 FlowFM.mdu
