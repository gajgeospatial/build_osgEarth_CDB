call %DEV_BASE%\SetEnviornmentVariables.bat
if not exist %BOOST_DIR% mkdir %BOOST_DIR% & cd %BOOST_DIR% & cd .. & git clone https://github.com/gajgeospatial/boost_1_81_0.git %BOOST_DIR%
cd %BOOST_DIR%
call Build_Boost_1_81_2022.bat
