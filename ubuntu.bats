#!/usr/bin/env bats

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
  [ -d "~$HOME/.local/share/JetBrains" ]
}

@test "verify Tomcat installation" {
  result="$(which catalina)"
  [ "$result" != 'catalina not found' ]
}

@test "verify Sublime installation" {
  result="$(which subl)"
  [ "$result" != 'subl not found' ]
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
  skip "Postman can be installed anywhere in ubnuntu, please open Postman to validate installation"
}

@test "verify PG-admin 4 installation" {
  [ -d "$HOME/.local/share/pgadmin/pgadmin4" ]
}