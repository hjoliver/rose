#!/bin/bash
#-------------------------------------------------------------------------------
# Copyright (C) 2012-2019 British Crown (Met Office) & Contributors.
#
# This file is part of Rose, a framework for meteorological suites.
#
# Rose is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Rose is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Rose. If not, see <http://www.gnu.org/licenses/>.
#-------------------------------------------------------------------------------
# Test "rosie hello" with no settings.
#-------------------------------------------------------------------------------
. $(dirname $0)/test_header
tests 2

export ROSE_CONF_PATH=
run_fail "${TEST_KEY_BASE}" rosie hello
file_cmp "${TEST_KEY_BASE}.err" "${TEST_KEY_BASE}.err" <<'__ERR__'
[rosie-id] settings not defined in site/user configuration.
__ERR__

exit
