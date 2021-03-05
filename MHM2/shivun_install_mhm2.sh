#!/bin/sh

# with reference from: https://bitbucket.org/berkeleylab/mhm2/src/master/docs/mhm_guide.md

ml purge
ml upcxx
ml cmake
ml intel


./build.sh clean

export MHM2_INSTALL_PATH=$HOME/isc21-scc/apps/mhm2


cmake -DCMAKE_CXX_COMPILER=/home/witsteam1/apps/intel/compilers_and_libraries_2020.4.304/linux/mpi/intel64/bin/mpiicpc\
 -DCMAKE_INSTALL_PREFIX=$HOME/apps/mhm2

#./build.sh Release

make -j 20
make install
