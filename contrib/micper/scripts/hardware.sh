function ,fix_bluetooth_mouse_responsivity {
  HANDLE="$(hcitool con | grep \"${1}\" | awk '{print $5}')"
  sudo hcitool lecup --handle $HANDLE --latency 0 --min 6 --max 8
}
