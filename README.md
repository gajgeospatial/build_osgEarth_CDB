# build_osgEarth_CDB
Scripts to pull and build osgEarth/OpenSceneGraph with CDB

Each of the Opensource repositories used in osgEarth_CDB is assigned an envionment variable to link it to other reposiies 
required in the build. To start the process the envionment variable DEV_BASE must be set to the core directory that will
be used for all of the projects except for BOOST. The Boost Location is set as the full path to boost directory. The file 
SetRegistryEnvioronmentVariables.bat may be used to the values permanently into the system registry for all projects in the build.
This will enable you to use VisualStudio to interactively work with the individual projects. In gneral the .sln file for each project
can be found in the msvc subdirectory however in a few projects the location may differ.

For your systrem you should edit both SetRegistryEnvioronmentVariables.bat and SetEnviornmentVariables.bat to set your desired DEV_BASE
and BOOST_DIR locations. In the repsository these have been set to D:\Development\Dev_Base and D:\Development\3rd_Party\boost_1_81_0.
Both directories shold exist prior to executing the pull and build script.

To pull and build use a visual studio x64 Native command prompt window and execute pull_and_Build_osgearth_CDB.bat

