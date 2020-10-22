function ,fix_bluetooth_mouse_responsivity {
  HANDLE="$(hcitool con | grep 'D7:C5:9B:95:5A:EA' | awk '{print $5}')"
  sudo hcitool lecup --handle $HANDLE --latency 0 --min 6 --max 8
}

alias touchscreenEnable='xinput set-prop 16 "Device Enabled" 1'
alias touchscreenDisable='xinput set-prop 16 "Device Enabled" 0'
