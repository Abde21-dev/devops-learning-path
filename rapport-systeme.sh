#!/bin/bash

echo "===== RAPPORT SYSTÈME ====="
echo "Date : $(date)"
echo "Utilisateur : $USER"
echo "Répertoire home : $HOME"
echo ""
echo "--- Espace disque ---"
df -h /
echo ""
echo "--- Mémoire ---"
free -h
echo ""
echo "--- Processus actifs ---"
ps aux | wc -l
echo "processus en cours"
echo ""
echo "--- Services critiques ---"
systemctl is-active cron > /dev/null && echo "cron : OK" || echo "cron : ARRÊTÉ"   
systemctl is-active ollama > /dev/null && echo "ollama : OK" || echo "ollama : ARRÊTÉ"
