SET OSGEO4W_ROOT=C:\OSGeo4W
SET QGISNAME=qgis-ltr
SET QGIS=%OSGEO4W_ROOT%\apps\%QGISNAME%
SET QGIS_PREFIX_PATH=%QGIS%
SET PYCHARM="C:\Program Files\PyCharmpro\bin\pycharm64.exe"

CALL %OSGEO4W_ROOT%\bin\o4w_env.bat

SET PATH=%QGIS%\bin;%PATH%
SET PYTHONPATH=%QGIS%\python;%QGIS%\python\plugins;%OSGEO4W_ROOT%\apps\qt5\plugins;%OSGEO4W_ROOT%\apps\gdal\share\gdal;%PYTHONPATH%
SET PYTHONHOME=%OSGEO4W_ROOT%\apps\Python312
SET QT_QPA_PLATFORM_PLUGIN_PATH=%OSGEO4W_ROOT%\apps\qt5\plugins\platforms\
SET QT_PLUGIN_PATH=%OSGEO4W_ROOT%\apps\qgis\qtplugins;%OSGEO4W_ROOT%\apps\qt5\plugins;%OSGEO4W_ROOT%\apps\Qt5\plugins\webview

start "PyCharm aware of QGIS" /B %PYCHARM% %*
set
::pause
