import os
import subprocess

def mailpasswd(acct):
  acct = os.path.basename(acct)
  args = ["pass", "show", acct]
  try:
    return subprocess.check_output(args).strip()
  except subprocess.CalledProcessError:
    return ""
