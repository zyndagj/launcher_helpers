#!/bin/bash
#SBATCH -J parGzip
#SBATCH -o parGzip.o%j
#SBATCH -n 16
#SBATCH -N 1
#SBATCH -p normal
#SBATCH -t 06:00:00
#SBATCH --mail-user=gzynda@tacc.utexas.edu
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH -A Springer_Vaughn

printf "%s\n" "${files[@]}" | xargs -n 1 -P 16 gzip
