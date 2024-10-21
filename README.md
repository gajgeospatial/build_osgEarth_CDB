# build_osgEarth_CDB
Scripts to pull and build osgEarth/OpenSceneGraph with CDB

Each of the Opensource repositories used in osgEarth_CDB is assigned an envionment variable to link it to other reposiies 
required in the build. To start the process the envionment variable DEV_BASE must be set to the core directory that will
be used for all of the projects except for BOOST. The Boost Location is set as the full path to boost directory. The file 
SetRegistryEnvioronmentVariables.bat may be used to the values permanently into the system registry for all projects in the build.
SetRegistryEnvioronmentVariables.bat should be run as administrator or it will fail. If you wish to use user envionment variables
rather than system edit SetRegistryEnvioronmentVariables.bat and remove the /M at the end of each SETX command before running the 
command. Remember that with SETX that you must log out and back into windows for the variables to be active in you current shell.
If you do not use SetRegistryEnvioronmentVariables.bat you must set at least both DEV_BASE and BOOST_DIR enviornment varaiables prior
to running the pull and build script either through Windows Control Panel or with a tool such as RapidEnvironmentEditor.
Using SetRegistryEnvioronmentVariables.bat will enable you to use VisualStudio to interactively work with the individual projects. 
In gneral the .sln file for each projectcan be found in the msvc subdirectory however in a few projects the location may differ.

For your systrem you should edit both SetRegistryEnvioronmentVariables.bat and SetEnviornmentVariables.bat to set your desired DEV_BASE
and BOOST_DIR locations. In the repsository these have been set to D:\Development\Dev_Base and D:\Development\3rd_Party\boost_1_86_0.
The DEV_BASE directory must exist prior to executing the scripts and all .bat files in this repsitory should be compied to that 
directory and run from that directory. The parent directory of BOOST_DIR must also exist. 

Build Tools (needed for complete build) (must be in path)
Visual Studio 2022
Cuda
Perl
nmake
nasm
cmake


To pull and build use a visual studio x64 Native command prompt window and execute pull_and_Build_osgearth_CDB.bat

