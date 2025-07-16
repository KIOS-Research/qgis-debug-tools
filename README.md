# qgis-debug-tools

## Pycharm
The following steps are required to enable PyCharm debugging with QGIS:

1. To open PyCharm aware of QGIS you need to open it with a batch file similar to "PyCharmQGIS.bat" listed in the repo.
2.  You need to use the Professional edition of PyCharm as the Community Edition does not enable remote debugging.
3. In PyCharm Run > Edit Configurations press add (+ icon) and choose "Python Debug Server" to create a new configuration.  Give it a name e.g. "QgisRemDebugging"
4. Enter the IP address of the host running PyCharm in the "IDE host name" (or localhost if qgis and PyCharm will be running on the same machine)
5. Enter an empty port e.g. 53100
6. In your QGIS plugin "import pydevd_pycharm" also making sure that you add the pydevd_pycharm package to your QGIS python running environment.
7. Add the set trace command to your code at the position you wish to start debugging using:  "dbg.settrace('localhost', port=53100, stdoutToServer=True, stderrToServer=True)".  DO NOT Forget to comment it out or remove it when you commit for production!!!.
8. In PyCharm IDE start the debugger with the configuration you made in steps 3 & 4 (e.g. "QgisRemDebugging" )
9. When your perform an action in QGIS that will go through the code that contains the set trace command Debugging will Commence.  If the debugger is not started when you reach the Set Trace Command you will get an error in QGIS.

## VS Code

QGIS DevTools is a toolkit for QGIS plugin developers. It allows you to launch a debugpy server directly from QGIS and connect to the process from VS Code. In the future, more tools and new debugging libraries will be added to simplify everyday development tasks.

https://plugins.qgis.org/plugins/devtools

https://github.com/nextgis/qgis_devtools/
