#!/usr/bin/env bash

# utility program to load new conky resource file

# kill the running version of conky
killall -SIGUSR1 conky

# update the conky resource file
trash ../conkyrc
cp ubuntu-conkyrc ../conkyrc

# restart conky, using the new resource file
# conky should restart automatically, so the command below isn't required
#conky &