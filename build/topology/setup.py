# -*- coding: utf-8 -*-
#
# setup.py
#
# This file is part of NEST.
#
# Copyright (C) 2004 The NEST Initiative
#
# NEST is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 2 of the License, or
# (at your option) any later version.
#
# NEST is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with NEST.  If not, see <http://www.gnu.org/licenses/>.

from distutils.core import setup

setup(name         = 'Topology',
      version      = '2.12.0',
      description  = 'Python bindings for NEST Topology module',
      author       = 'The NEST Initiative',
      url          = 'http://www.nest-simulator.org',
      packages     = ['nest.topology', 'nest.topology.tests'],
      package_dir  = {'nest.topology': '/home/bsc15/bsc15982/nest-simulator/topology/pynest',
                      'nest.topology.tests': '/home/bsc15/bsc15982/nest-simulator/topology/pynest/tests'})
