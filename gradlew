#!/usr/bin/env bash
# Minimal functional gradlew for ProBuild
if [ -z "$JAVA_HOME" ]; then
  JAVA_EXE="java"
else
  JAVA_EXE="$JAVA_HOME/bin/java"
fi

# We use the gradle-wrapper.jar if it exists, otherwise we'd need gradle installed
# For GitHub Actions, gradle is usually in the path
if [ -f "gradle/wrapper/gradle-wrapper.jar" ]; then
  $JAVA_EXE -jar gradle/wrapper/gradle-wrapper.jar "$@"
else
  gradle "$@"
fi