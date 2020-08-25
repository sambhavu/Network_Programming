import socket
import sys
import subprocess

def main(): 
  options,server, remote = parse_options() 
  password = None 
  if options.readpass: 
    password = getpass.getpass('Enter SSH password') 
    client = paramiko.SSHClient() 
    client.load_system_host_keys() 
    
  client.set_missing_host_key_policy(paramikoWarning
