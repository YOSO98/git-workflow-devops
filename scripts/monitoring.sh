#!/bin/bash

# ========================
# Script de monitoring système
# DevOps Junior - Formation
# ========================

DATE=$(date '+%Y-%m-%d %H:%M:%S')
echo "=============================="
echo "  MONITORING SYSTÈME"
echo "  $DATE"
echo "=============================="

# CPU
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d'%' -f1)
echo "🖥️  CPU utilisé    : $CPU%"

# RAM
RAM_TOTAL=$(free -m | awk '/Mem:/ {print $2}')
RAM_USED=$(free -m | awk '/Mem:/ {print $3}')
RAM_PERCENT=$(awk "BEGIN {printf \"%.1f\", ($RAM_USED/$RAM_TOTAL)*100}")
echo "🧠 RAM utilisée   : ${RAM_USED}MB / ${RAM_TOTAL}MB ($RAM_PERCENT%)"

# DISQUE
DISK=$(df -h / | awk 'NR==2 {print $5}')
DISK_USED=$(df -h / | awk 'NR==2 {print $3}')
DISK_TOTAL=$(df -h / | awk 'NR==2 {print $2}')
echo "💾 Disque utilisé : $DISK_USED / $DISK_TOTAL ($DISK)"

# ALERTES
echo "=============================="
CPU_INT=${CPU%.*}
RAM_INT=${RAM_PERCENT%.*}
DISK_INT=${DISK%\%}

if [ "$CPU_INT" -gt 80 ]; then
  echo "⚠️  ALERTE : CPU élevé ($CPU%)"
fi

if [ "$RAM_INT" -gt 80 ]; then
  echo "⚠️  ALERTE : RAM élevée ($RAM_PERCENT%)"
fi

if [ "$DISK_INT" -gt 80 ]; then
  echo "⚠️  ALERTE : Disque plein ($DISK)"
fi

echo "✅ Monitoring terminé"
echo "=============================="
