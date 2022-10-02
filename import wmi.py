import wmi
c = wmi.WMI()

for process in c.Win32_Process():
  print({process.Name})
process_watcher = c.Win32_Process.watch_for("creation")
while True:
  new_process = process_watcher()
  print({new_process.Caption})