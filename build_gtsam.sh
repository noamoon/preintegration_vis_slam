sudo apt-install git
git clone git@github.com:borglab/gtsam.git
cd gtsam
mkdir build
cd build
cmake -DGTSAM_INSTALL_MATLAB_TOOLBOX=ON ..
make -j$(nproc) install