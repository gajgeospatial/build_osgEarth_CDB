call %DEV_BASE%\SetEnviornmentVariables.bat
cd %BOOST_DIR%
cd ..
if not exist %BOOST_DIR% git clone https://github.com/gajgeospatial/boost_1_81_0.git %BOOST_DIR%
cd %BOOST_DIR%
call Build_Boost_1_81_2022.bat
