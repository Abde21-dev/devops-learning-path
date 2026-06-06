#!/bin/bash

echo "===== VÉRIFICATION SERVEUR ====="
echo "Date : $(date)"
echo ""
echo "--- Espace disque ---"
df -h /
echo ""
echo "--- Services critiques ---"
systemctl is-active cron > /dev/null && echo "cron : OK" || echo "cron : ARRÊTÉ"
systemctl is-active ollama > /dev/null && echo "ollama : OK" || echo "ollama : ARRÊTÉ"
echo ""
[ -f ~/devops-training/rapport-systeme.sh ] && echo "rapport-systeme.sh : PRÉSENT" || echo "rapport-systeme.sh : MANQUANT"
echo ""
echo "===== FIN ====="

