rem #######################################################
rem #         JavaLayer 0.0.9 WIN32 Build Script
rem #
rem # Project Homepage :
rem #   http://www.javazoom.net/javalayer/javalayer.html 
rem #
rem # Developer Homepage :
rem #   http://sourceforge.net/project/?group_id=1344
rem #
rem #######################################################

rem # JAVA_HOME and JL must be set below
set JAVA_HOME=c:\jdk1.3
set JL=c:\PersoApp\JavaLayer0.0.9

rem #---------------------------
rem # Do not modify lines below
rem #---------------------------
set CLASSPATH=%JAVA_HOME%\lib\tools.jar
set PATH=%PATH%;%JAVA_HOME%\bin
set JLDECODERSRC=%JL%\src\javazoom\jl\decoder
set JLCONVERTERSRC=%JL%\src\javazoom\jl\converter
set JLSIMPLEPLAYER=%JL%\src\javazoom\jl\player
javac -classpath %CLASSPATH%;%JL%\classes -d %JL%\classes %JLDECODERSRC%\*.java
javac -classpath %CLASSPATH%;%JL%\classes -d %JL%\classes %JLCONVERTERSRC%\*.java
cd %JLDECODERSRC%
copy *.ser %JL%\classes\javazoom\jl\decoder

rem # MP3 Simple Player support :
rem #
rem # Comment both lines below for JDK1.1.x or JDK 1.2.x
cd %JLSIMPLEPLAYER%
javac -classpath %JL%\classes -d %JL%\classes *.java

rem # JAR Generation
cd %JL%\classes
jar cvf ..\jl009.jar *
cd %JL%
