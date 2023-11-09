# Thsi script installs DanvicniResolve intel gpu integration 

# Makes new temp directory
mkdir temp
cd temp
# Downloads all files from intel git repository
wget https://github.com/intel/intel-graphics-compiler/releases/download/igc-1.0.14828.8/intel-igc-core_1.0.14828.8_amd64.deb
wget https://github.com/intel/intel-graphics-compiler/releases/download/igc-1.0.14828.8/intel-igc-opencl_1.0.14828.8_amd64.deb
wget https://github.com/intel/compute-runtime/releases/download/23.30.26918.9/intel-level-zero-gpu-dbgsym_1.3.26918.9_amd64.ddeb
wget https://github.com/intel/compute-runtime/releases/download/23.30.26918.9/intel-level-zero-gpu_1.3.26918.9_amd64.deb
wget https://github.com/intel/compute-runtime/releases/download/23.30.26918.9/intel-opencl-icd-dbgsym_23.30.26918.9_amd64.ddeb
wget https://github.com/intel/compute-runtime/releases/download/23.30.26918.9/intel-opencl-icd_23.30.26918.9_amd64.deb
wget https://github.com/intel/compute-runtime/releases/download/23.30.26918.9/libigdgmm12_22.3.0_amd64.deb
# Downloads sha256 verifier
wget https://github.com/intel/compute-runtime/releases/download/23.30.26918.9/ww30.sum
# Exectues it
sha256sum -c ww30.sum
echo If all the packages show up as OK you are ready to install them
echo Navigate to the folder named temp created on the directory where you executed this script and 
echo Double click on each of them to install
read -t 5
read -s -n 1 -p "When you installed all packages press a key to continue..."
# Removes temp directory
rm *.* 
cd ..
rm temp -d
# Exits program (2nd is for if launched on root)
exit
exit
