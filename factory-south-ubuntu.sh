export DISPLAY=:0.0 # just DISPLAY=:0.0 without export is not enough

# Nightly build of slicer (Documentation & Package)
/home/kitware/Dashboards/Support/cmake-3.9.0-Linux-x86_64/bin/ctest -S /home/kitware/Dashboards/DashboardScripts/factory-south-ubuntu-slicer4_release_nightly.cmake -VV -O /home/kitware/Dashboards/Logs/factory-south-ubuntu-slicer4_release_nightly.log

# Push generated documentation archives
(cd /home/kitware/Dashboards/Doxygen && rsync ./Slicer-cpp.tar.gz kitware@public:./Slicer_Doc/)
(cd /home/kitware/Dashboards/Doxygen && rsync ./SlicerWizard.tar.gz kitware@public:./Slicer_Doc/)

# Nightly build of slicer extensions testing
/home/kitware/Dashboards/Support/cmake-3.9.0-Linux-x86_64/bin/ctest -S /home/kitware/Dashboards/DashboardScripts/factory-south-ubuntu-slicerextensions_testing_release_nightly.cmake -VV -O /home/kitware/Dashboards/Logs/factory-south-ubuntu-slicerextensions_testing_release_nightly.log

# Nightly build of slicer extensions
/home/kitware/Dashboards/Support/cmake-3.9.0-Linux-x86_64/bin/ctest -S /home/kitware/Dashboards/DashboardScripts/factory-south-ubuntu-slicerextensions_release_nightly.cmake -VV -O /home/kitware/Dashboards/Logs/factory-south-ubuntu-slicerextensions_release_nightly.log

# Nightly build of slicer 4.8 extensions
/home/kitware/Dashboards/Support/cmake-3.9.0-Linux-x86_64/bin/ctest -S /home/kitware/Dashboards/DashboardScripts/factory-south-ubuntu-slicerextensions_48_release_nightly.cmake -VV -O /home/kitware/Dashboards/Logs/factory-south-ubuntu-slicerextensions_48_release_nightly.log

