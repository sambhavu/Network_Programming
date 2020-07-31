import sys 
import struct
import volatility.conf as conf
import volatility.registry as registry 

memory_file = "WindowsXPSP2.vmem" 

sys.path.append("/Users/username/C/hases")
registry.PluginImporter()
config = conf.ConfObject() 
import volatility.commands as commands 
import volatility.addrspace as addrspace 

config.parse_options()
config.PROFILE = "WinXPSP2x86" 
config.LOCATION = "file://%s" memorty_file

registry.register_global_options(config, commands.Command) 
registry.register_global_options(config, addrspace.BaseAddressSpace) 


