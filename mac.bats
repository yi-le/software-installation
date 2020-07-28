#!/usr/bin/env bats

@test "verify brew installation" {
  result="$(which brew)"
  [ "$result" != 'brew not found' ]
}

@test "verify java installation" {
  result="$(which java)"
  [ "$result" != "java not found" ]
}

@test "verify maven installation" {
  result="$(which mvn)"
  [ "$result" != 'mvn not found' ]
}

@test "verify python installation" {
  result="$(which python)"
  [ "$result" != 'python not found' ]
}

@test "verify Intelli J installation" {
  [ -d "/Applications/IntelliJ IDEA.app" ]
}

@test "verify Tomcat installation" {
  result="$(which catalina)"
  [ "$result" != 'catalina not found' ]
}

@test "verify Sublime installation" {
  [ -d "/Applications/Sublime Text.app" ]
}

@test "verify git installation" {
  result="$(which git)"
  [ "$result" != 'git not found' ]
}

@test "verify docker installation" {
  result="$(which docker)"
  [ "$result" != 'docker not found' ]
}

@test "verify Postman installation" {
  [ -d "/Applications/Postman.app" ]
}

@test "verify PG-admin 4 installation" {
  [ -d "/Applications/pgAdmin 4.app" ]
}