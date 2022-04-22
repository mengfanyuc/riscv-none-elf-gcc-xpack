# -----------------------------------------------------------------------------
# This file is part of the xPacks distribution.
#   (https://xpack.github.io)
# Copyright (c) 2020 Liviu Ionescu.
#
# Permission to use, copy, modify, and/or distribute this software
# for any purpose is hereby granted, under the terms of the MIT license.
# -----------------------------------------------------------------------------

# Helper script used in the second edition of the GNU MCU Eclipse build
# scripts. As the name implies, it should contain only functions and
# should be included with 'source' by the container build scripts.

# -----------------------------------------------------------------------------

function add_linux_install_path()
{
  # Verify that the compiler is there.
  "${WORK_FOLDER_PATH}/${LINUX_INSTALL_RELATIVE_PATH}/${APP_LC_NAME}/bin/${GCC_TARGET}-gcc" --version

  export PATH="${WORK_FOLDER_PATH}/${LINUX_INSTALL_RELATIVE_PATH}/${APP_LC_NAME}/bin:${PATH}"
  echo ${PATH}
}

# -----------------------------------------------------------------------------
