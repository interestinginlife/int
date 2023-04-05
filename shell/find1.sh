while true;do
        find /root/recycle/ -mtime +30 -type f ! -name "*.bak" -exec rm -rf {} \;
done

