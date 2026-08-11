#!/bin/bash

#Not sure what version to pull into lvgl, v9.5 seems right, assumed by versioning found in the @git-commit tag page.
#But future me: skip file if ./lvgl/README.md exists
git clone -b release/v9.5 https://github.com/lvgl/lvgl.git lvgl
meson setup _build
meson compile -C _build
