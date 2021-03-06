# $Id$
#-----------------------------------------------------------------------
# ruby-daqmxbase: A SWIG interface for Ruby and the NI-DAQmx Base data
# acquisition library.
# 
# Copyright (C) 2007 Ned Konz
# 
# Licensed under the Apache License, Version 2.0 (the "License"); you
# may not use this file except in compliance with the License.  You may
# obtain a copy of the License at
# 
# http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
# implied.  See the License for the specific language governing
# permissions and limitations under the License.
#-----------------------------------------------------------------------

require 'daqmxbase'

# Task parameters
taskName = "ai finite buffered"
task = nil

# Data read parameters
arraySizeInSamps = 1000
# numSampsPerChan = Daqmxbase::VAL_CFG_DEFAULT
numSampsPerChan = 1
fillMode = Daqmxbase::VAL_GROUP_BY_CHANNEL
timeout = 10.0

# data read outputs
task = Daqmxbase::Task.new(taskName)  # does LoadTask too
task.start()

now = Time.now

(data, sampsPerChanRead) = task.read_analog_f64(numSampsPerChan, timeout, fillMode, arraySizeInSamps) 

puts("elapsed: #{Time.now - now} seconds")
printf("Acquired %d samples\n", sampsPerChanRead)

# Just print out the first 10 points
10.times { |i| printf("data[%d] = %f\n", i, data[i]) }
