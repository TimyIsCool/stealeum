#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.stealeumcore/stealeumd.pid file instead
stealeum_pid=$(<~/.stealeumcore/testnet3/stealeumd.pid)
sudo gdb -batch -ex "source debug.gdb" stealeumd ${stealeum_pid}
