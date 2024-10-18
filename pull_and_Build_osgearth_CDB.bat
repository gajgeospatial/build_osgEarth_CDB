G:
cd %DEV_BASE%
call SetEnvironmentVariables.bat
call InitializeBoost.bat
cd %DEV_BASE%
if not exist %GDAL_DIR% git clone https://github.com/gajgeospatial/gdal-3.6.4.git %GDAL_DIR% & cd %GDAL_DIR% & call MakeBuildDirectories_vs2022.bat
cd %DEV_BASE%

if not exist %SQLITE3_DIR% git clone https://github.com/gajgeospatial/sqlite-3.42.0.git %SQLITE3_DIR%
devenv %SQLITE3_DIR%\sqlite.sln /Build vs2022_Debug
devenv %SQLITE3_DIR%\sqlite.sln /Build vs2022_Release

if not exist %ZLIB_DIR% git clone https://github.com/gajgeospatial/zlib-1.2.13.git %ZLIB_DIR%
devenv %ZLIB_DIR%\zlib.sln /Build vs2022_Debug
devenv %ZLIB_DIR%\zlib.sln /Build vs2022_Release

if not exist %WEBP_DIR% git clone https://github.com/gajgeospatial/libwebp-1.3.0.git %WEBP_DIR%
devenv %WEBP_DIR%\msvc\WebP.sln /Build vs2022_Debug /Project webp
devenv %WEBP_DIR%\msvc\WebP.sln /Build vs2022_Release /Project webp

if not exist %LIBLZMA_DIR% git clone https://github.com/gajgeospatial/liblzma-5.2.5.git %LIBLZMA_DIR%
devenv %LIBLZMA_DIR%\windows\xz_win.sln /Build vs2022_Debug
devenv %LIBLZMA_DIR%\windows\xz_win.sln /Build vs2022_Release

if not exist %JPEG_DIR% git clone https://github.com/gajgeospatial/jpeg-9c.git %JPEG_DIR%
devenv %JPEG_DIR%\jpeg.sln /Build vs2022_Debug
devenv %JPEG_DIR%\jpeg.sln /Build vs2022_Release

if not exist %JPEG12_DIR% git clone https://github.com/gajgeospatial/jpeg-9c.git -b jpeg12bit-9c %JPEG12_DIR%
devenv %JPEG12_DIR%\jpeg12.sln /Build vs2022_Debug
devenv %JPEG12_DIR%\jpeg12.sln /Build vs2022_Release

if not exist %TIFF_DIR% git clone https://github.com/gajgeospatial/tiff-4.5.1.git %TIFF_DIR%
devenv %TIFF_DIR%\msvc\tiff.sln /Build vs2022_Debug
devenv %TIFF_DIR%\msvc\tiff.sln /Build vs2022_Release

if not exist %PNG_DIR% git clone https://github.com/gajgeospatial/libpng-1.6.40.git %PNG_DIR%
devenv %PNG_DIR%\projects\vstudio\libpng.sln /Build vs2022_Debug
devenv %PNG_DIR%\projects\vstudio\libpng.sln /Build vs2022_Release

if not exist %GIF_DIR% git clone https://github.com/gajgeospatial/giflib-5.0.4.git %GIF_DIR%
devenv %GIF_DIR%\build.vc11\giflib-5.0.4.sln /Build vs2022_Debug
devenv %GIF_DIR%\build.vc11\giflib-5.0.4.sln /Build vs2022_Release


if not exist %WEBP_DIR% git clone https://github.com/gajgeospatial/libwebp-1.3.0.git %WEBP_DIR%
devenv %WEBP_DIR%\msvc\WebP.sln /Build vs2022_Debug
devenv %WEBP_DIR%\msvc\WebP.sln /Build vs2022_Release

if not exist %CARES_DIR% git clone https://github.com/gajgeospatial/c-ares-1.10.0.git %CARES_DIR%
devenv %CARES_DIR%\vc\cares\cares.sln /Build vs2022_Debug
devenv %CARES_DIR%\vc\cares\cares.sln /Build vs2022_Release

if not exist %NGHTTP2_DIR% git clone https://github.com/gajgeospatial/nghttp2-1.39.1.git %NGHTTP2_DIR%
devenv %NGHTTP2_DIR%\msvc\nghttp2.sln /Build vs2022_Debug
devenv %NGHTTP2_DIR%\msvc\nghttp2.sln /Build vs2022_Release

if not exist %BROTLI_DIR% git clone https://github.com/gajgeospatial/brotli-1.0.7.git %BROTLI_DIR%
devenv %BROTLI_DIR%\msvc\brotli.sln /Build vs2022_Debug
devenv %BROTLI_DIR%\msvc\brotli.sln /Build vs2022_Release

if not exist %LZ4_DIR% git clone https://github.com/gajgeospatial/lz4-1.9.3.git %LZ4_DIR%
devenv %LZ4_DIR%\msvc\lz4.sln /Build vs2022_Debug
devenv %LZ4_DIR%\msvc\lz4.sln /Build vs2022_Release

if not exist %ZSTD_DIR% git clone https://github.com/gajgeospatial/zstd-1.4.5.git %ZSTD_DIR%
devenv %ZSTD_DIR%\msvc\zstd.sln /Build vs2022_Debug
devenv %ZSTD_DIR%\msvc\zstd.sln /Build vs2022_Release

if not exist %OPENSSL_DIR% git clone https://github.com/gajgeospatial/openssl-3.0.8.git %OPENSSL_DIR%
cd %OPENSSL_DIR%
call Build_OpenSSL_with_vs2022_Command_Window.bat
cd %DEV_BASE%

if not exist %CURL_DIR% git clone https://github.com/gajgeospatial/curl-8.2.1.git %CURL_DIR%
devenv %CURL_DIR%\msvc\CURL.sln /Build vs2022_Debug
devenv %CURL_DIR%\msvc\CURL.sln /Build vs2022_Release

if not exist %PROJ_DIR% git clone https://github.com/gajgeospatial/proj-9.3.0.git %PROJ_DIR%
devenv %PROJ_DIR%\msvc\PROJ.sln /Build vs2022_Debug
devenv %PROJ_DIR%\msvc\PROJ.sln /Build vs2022_Release

if not exist %PIXMAN_DIR% git clone https://github.com/gajgeospatial/pixman-0.35.0.git %PIXMAN_DIR%
devenv %PIXMAN_DIR%\pixman.sln /Build vs2022_Debug
devenv %PIXMAN_DIR%\pixman.sln /Build vs2022_Release

if not exist %BZIP2_DIR% git clone https://github.com/gajgeospatial/bzip2-1.0.6.git %BZIP2_DIR%
devenv %BZIP2_DIR%\libbz2.sln /Build vs2022_Debug
devenv %BZIP2_DIR%\libbz2.sln /Build vs2022_Release

if not exist %FREETYPE_DIR% git clone https://github.com/gajgeospatial/freetype-2.13.0.git %FREETYPE_DIR%
devenv %FREETYPE_DIR%\msvc\freetype.sln /Build vs2022_Debug
devenv %FREETYPE_DIR%\msvc\freetype.sln /Build vs2022_Release

if not exist %ICONV_DIR% git clone https://github.com/gajgeospatial/win-iconv-1.0.0.git %ICONV_DIR%
devenv %ICONV_DIR%\msvc\win_iconv.sln /Build vs2022_Debug
devenv %ICONV_DIR%\msvc\win_iconv.sln /Build vs2022_Release

if not exist %EXPAT_DIR% git clone https://github.com/gajgeospatial/expat-2.5.0 %EXPAT_DIR%
devenv %EXPAT_DIR%\msvc\expat.sln /Build vs2022_Debug
devenv %EXPAT_DIR%\msvc\expat.sln /Build vs2022_Release

if not exist %FREEXL_DIR% git clone https://github.com/gajgeospatial/freexl-2.0.0.git %FREEXL_DIR%
devenv %FREEXL_DIR%\freexl.sln /Build vs2022_Debug
devenv %FREEXL_DIR%\freexl.sln /Build vs2022_Release

if not exist %CAIRO_DIR% git clone https://github.com/gajgeospatial/cairo-1.17.2.git %CAIRO_DIR%
devenv %CAIRO_DIR%\cairo.sln /Build vs2022_Debug
devenv %CAIRO_DIR%\cairo.sln /Build vs2022_Release

if not exist %GTEST_DIR% git clone https://github.com/gajgeospatial/googletest-1.14.0.git %GTEST_DIR%
devenv %GTEST_DIR%\msvc\googletest-distribution.sln /Build vs2022_Debug
devenv %GTEST_DIR%\msvc\googletest-distribution.sln /Build vs2022_Release

if not exist %URIPARSER_DIR% git clone https://github.com/gajgeospatial/uriparser-0.9.7.git %URIPARSER_DIR%
devenv %URIPARSER_DIR%\msvc\uriparser.sln /Build vs2022_Debug
devenv %URIPARSER_DIR%\msvc\uriparser.sln /Build vs2022_Release

if not exist %LIBKML_DIR% git clone https://github.com/gajgeospatial/libkml-1.3.0.git %LIBKML_DIR%
devenv %LIBKML_DIR%\msvc\libkml.sln /Build vs2022_Debug
devenv %LIBKML_DIR%\msvc\libkml.sln /Build vs2022_Release

if not exist %GEOS_DIR% git clone https://github.com/gajgeospatial/Geos-3.11.1.git %GEOS_DIR%
devenv %GEOS_DIR%\msvc\GEOS.sln /Build vs2022_Debug
devenv %GEOS_DIR%\msvc\GEOS.sln /Build vs2022_Release

if not exist %GEOTIFF_DIR% git clone https://github.com/gajgeospatial/libgeotiff-1.7.1.git %GEOTIFF_DIR%
devenv %GEOTIFF_DIR%\libgeotiff\msvc\GeoTIFF.sln /Build vs2022_Debug
devenv %GEOTIFF_DIR%\libgeotiff\msvc\GeoTIFF.sln /Build vs2022_Release

if not exist %JASPER_DIR% git clone https://github.com/gajgeospatial/jasper-1.900.1.git %JASPER_DIR%
devenv %JASPER_DIR%\src\msvc\jasper.sln /Build vs2022_Debug
devenv %JASPER_DIR%\src\msvc\jasper.sln /Build vs2022_Release

if not exist %XERCES_DIR% git clone https://github.com/gajgeospatial/xerces-c-3.2.4.git %XERCES_DIR%
devenv %XERCES_DIR%\msvc\xerces-c.sln /Build vs2022_Debug
devenv %XERCES_DIR%\msvc\xerces-c.sln /Build vs2022_Release

if not exist %LIBXML2_DIR% git clone https://github.com/gajgeospatial/libxml2-2.9.9.git %LIBXML2_DIR%
devenv %LIBXML2_DIR%\win32\libxml2.sln /Build vs2022_Debug
devenv %LIBXML2_DIR%\win32\libxml2.sln /Build vs2022_Release

if not exist %LIBXSLT_DIR% git clone https://github.com/gajgeospatial/libxslt-1.1.28.git %LIBXSLT_DIR%
devenv %LIBXSLT_DIR%\win32\libxslt.sln /Build vs2022_Debug
devenv %LIBXSLT_DIR%\win32\libxslt.sln /Build vs2022_Release

if not exist %PCRE_DIR% git clone https://github.com/gajgeospatial/pcre-8.45.git %PCRE_DIR%
devenv %PCRE_DIR%\msvc\PCRE.sln /Build vs2022_Debug
devenv %PCRE_DIR%\msvc\PCRE.sln /Build vs2022_Release
devenv %PCRE_DIR%\msvc_static\PCRE.sln /Build vs2022_Debug
devenv %PCRE_DIR%\msvc_static\PCRE.sln /Build vs2022_Release

if not exist %LCMS2_DIR% git clone https://github.com/gajgeospatial/lcms2-2.5.git %LCMS2_DIR%
devenv %LCMS2_DIR%\Projects\VC2012\lcms2.sln /Build vs2022_Debug
devenv %LCMS2_DIR%\Projects\VC2012\lcms2.sln /Build vs2022_Release

if not exist %OPENJPEG20_DIR% git clone https://github.com/gajgeospatial/openjpeg-2.5.0.git %OPENJPEG20_DIR%
devenv %OPENJPEG20_DIR%\msvc\OPENJPEG.sln /Build vs2022_Debug
devenv %OPENJPEG20_DIR%\msvc\OPENJPEG.sln /Build vs2022_Release

if not exist %POSTGRES_DIR% git clone https://github.com/gajgeospatial/postgresql-9.3.2.git %POSTGRES_DIR%
devenv %POSTGRES_DIR%\pgsql.sln /Build vs2022_Debug
devenv %POSTGRES_DIR%\pgsql.sln /Build vs2022_Release

if not exist %TINYXML_DIR% git clone https://github.com/gajgeospatial/tinyxml-2.6.2.git %TINYXML_DIR%
devenv %TINYXML_DIR%\tinyxml.sln /Build vs2022_Debug
devenv %TINYXML_DIR%\tinyxml.sln /Build vs2022_Release

if not exist %COLLADA_DOM_DIR% git clone https://github.com/gajgeospatial/collada-dom-2.4.0.git %COLLADA_DOM_DIR%
devenv %COLLADA_DOM_DIR%\msvc\collada-dom.sln /Build vs2022_Debug
devenv %COLLADA_DOM_DIR%\msvc\collada-dom.sln /Build vs2022_Release

if not exist %DCMTK_DIR% git clone https://github.com/gajgeospatial/dcmtk-3.6.0.git %DCMTK_DIR%
devenv %DCMTK_DIR%\msvc\DCMTK.sln /Build vs2022_Debug
devenv %DCMTK_DIR%\msvc\DCMTK.sln /Build vs2022_Release

if not exist %HDF4_DIR% git clone https://github.com/gajgeospatial/hdf-4.2.16.git %HDF4_DIR%
devenv %HDF4_DIR%\msvc\HDF4.sln /Build vs2022_Debug
devenv %HDF4_DIR%\msvc\HDF4.sln /Build vs2022_Release

if not exist %HDF5_DIR% git clone https://github.com/gajgeospatial/hdf5-1.14.0.git %HDF5_DIR%
devenv %HDF5_DIR%\msvc\HDF5.sln /Build vs2022_Debug
devenv %HDF5_DIR%\msvc\HDF5.sln /Build vs2022_Release

if not exist %NETCDF_DIR% git clone https://github.com/gajgeospatial/netcdf-c-4.9.2.git %NETCDF_DIR%
devenv %NETCDF_DIR%\msvc\netCDF.sln /Build vs2022_Debug
devenv %NETCDF_DIR%\msvc\netCDF.sln /Build vs2022_Release

if not exist %SPATIALITE_DIR% git clone https://github.com/gajgeospatial/libspatialite-5.1.0.git %SPATIALITE_DIR%
devenv %SPATIALITE_DIR%\libspatialite.sln /Build vs2022_Debug
devenv %SPATIALITE_DIR%\libspatialite.sln /Build vs2022_Release

if not exist %SPATIALINDEX_DIR% git clone https://github.com/gajgeospatial/spatialindex-1.9.3.git %SPATIALINDEX_DIR%
devenv %SPATIALINDEX_DIR%\msvc\spatialindex.sln /Build vs2022_Debug
devenv %SPATIALINDEX_DIR%\msvc\spatialindex.sln /Build vs2022_Release

if not exist %SDL2_DIR% git clone https://github.com/gajgeospatial/sdl2-2.0.3.git %SDL2_DIR%
devenv %SDL2_DIR%\VisualC\SDL_VS2013.sln /Build vs2022_Debug
devenv %SDL2_DIR%\VisualC\SDL_VS2013.sln /Build vs2022_Release

if not exist %JSON_DIR% git clone https://github.com/gajgeospatial/json-c-0.16.git %JSON_DIR%
devenv %JSON_DIR%\msvc\json-c.sln /Build vs2022_Debug
devenv %JSON_DIR%\msvc\json-c.sln /Build vs2022_Release

if not exist %BLOSC_DIR% git clone >https://github.com/gajgeospatial/blosc-1.21.2 %BLOSC_DIR%
devenv %BLOSC_DIR%\msvc\blosc.sln /Build vs2022_Debug
devenv %BLOSC_DIR%\msvc\blosc.sln /Build vs2022_Release

if not exist %GDAL_DIR% git clone https://github.com/gajgeospatial/gdal-3.6.4.git %GDAL_DIR%
devenv %GDAL_DIR%\msvc\gdal.sln /Build vs2022_Debug
devenv %GDAL_DIR%\msvc\gdal.sln /Build vs2022_Release

if not exist %NVTT_DIR% git clone https://github.com/gajgeospatial/nvidia-texture-tools-2.1.1.git %NVTT_DIR%
devenv %NVTT_DIR%\msvc\NV.sln /Build vs2022_Debug
devenv %NVTT_DIR%\msvc\NV.sln /Build vs2022_Release

if not exist %OPENEXR_DIR% git clone https://github.com/gajgeospatial/openexr-3.1.7 %OPENEXR_DIR%
devenv %OPENEXR_DIR%\msvc\OpenEXR.sln /Build vs2022_Debug
devenv %OPENEXR_DIR%\msvc\OpenEXR.sln /Build vs2022_Release

if not exist %LUA52_DIR% git clone  %LUA52_DIR%
devenv %LUA52_DIR%\msvc\lua.sln /Build vs2022_Debug
devenv %LUA52_DIR%\msvc\lua.sln /Build vs2022_Release

if not exist %LASZIP_DIR% git clone https://github.com/gajgeospatial/laszip-2.2.0.git %LASZIP_DIR%
devenv %LASZIP_DIR%\msvc\laszip.sln /Build vs2022_Debug
devenv %LASZIP_DIR%\msvc\laszip.sln /Build vs2022_Release

if not exist %LIBLAS_DIR% git clone https://github.com/gajgeospatial/libLAS-1.8.2.git %LIBLAS_DIR%
devenv %LIBLAS_DIR%\msvc\libLAS.sln /Build vs2022_Debug
devenv %LIBLAS_DIR%\msvc\libLAS.sln /Build vs2022_Release

if not exist %OSG_DIR% git clone https://github.com/gajgeospatial/OpenSceneGraph-3.7.0.git %OSG_DIR%
devenv %OSG_DIR%\msvc\OpenSceneGraph.sln /Build vs2022_Debug
devenv %OSG_DIR%\msvc\OpenSceneGraph.sln /Build vs2022_Release

if not exist %POCO_DIR% git clone https://github.com/gajgeospatial/poco-1.11.1.git %POCO_DIR%
devenv %POCO_DIR%\msvc\Poco.sln /Build vs2022_Debug
devenv %POCO_DIR%\msvc\Poco.sln /Build vs2022_Release

if not exist %OSGEARTH_DIR% git clone https://github.com/gajgeospatial/osgearth-3.0.0_CDB %OSGEARTH_DIR%
devenv %OSGEARTH_DIR%\msvc\OSGEARTH.sln /Build vs2022_Debug
devenv %OSGEARTH_DIR%\msvc\OSGEARTH.sln /Build vs2022_Release

