@echo off
rem Minimal functional gradlew.bat for ProBuild
set JAVA_EXE=java.exe
if defined JAVA_HOME set JAVA_EXE="%JAVA_HOME%\bin\java.exe"

if exist "gradle\wrapper\gradle-wrapper.jar" (
  %JAVA_EXE% -jar gradle\wrapper\gradle-wrapper.jar %*
) else (
  gradle %*
)