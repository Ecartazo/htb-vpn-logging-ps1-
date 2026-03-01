#!/bin/bash
# Auto session logging for pentesting documentation

LOG_DIR="$HOME/pentest_logs"
mkdir -p "$LOG_DIR"

LOG_FILE="$LOG_DIR/session_$(date +%Y-%m-%d_%H-%M-%S).log"

script -f "$LOG_FILE"
