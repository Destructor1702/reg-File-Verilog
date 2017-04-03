#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2016.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto f6c95f69d9eb4263a4efcd5a6a528bdb -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot RegFile_TestBench_behav xil_defaultlib.RegFile_TestBench xil_defaultlib.glbl -log elaborate.log
