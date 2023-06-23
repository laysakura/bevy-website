#!/bin/sh

rm -rf bevy
git init bevy
cd bevy
git remote add origin https://github.com/laysakura/bevy
git pull --depth=1 origin main
