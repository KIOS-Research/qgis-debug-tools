# qgis-debug-tools

The following steps are required to enable PyCharm debugging with QGIS:

1. To open PyCharm aware of QGIS you need to open it with a batch file similar to "PyCharmQGIS.bat" listed in the repo.
2.  You need to use the Professional edition of PyCharm as the Community Edition does not enable remote debugging.
3. In PyCharm Run > Edit Configurations press add (+ icon) and choose "Pytho Debug Server" to create a new configuration
4. Enter the ip of the host running PyCharm in the IDE host name (or localhost if qgis and PyCharm will be running on the same machine)
5. Enter an empty port e.g. 53100
6. In your QGIS plugin "import pydevd_pycharm" also making sure that you add the pydevd_pycharm package to your QGIS running environment.
7. Add the set trace command to your code at the position you wish to start debugging using:  "dbg.settrace('localhost', port=53100, stdoutToServer=True, stderrToServer=True)".  DO NOT Forget to comment it out or remove it when you commit for production!!!.
