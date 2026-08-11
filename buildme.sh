#!/bin/bash

#Not sure what version to pull into lvgl, v8.x seem too old? v9.1 has fewest errors, so not sure if configs or something?
#But future me: skip file if ./lvgl/README.md exists
git clone -b release/v9.1 https://github.com/lvgl/lvgl.git lvgl
meson setup _build
meson compile -C _build
