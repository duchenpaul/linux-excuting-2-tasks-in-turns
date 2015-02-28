cd /root/Pictures/autosave
if [ -f *.zip ]; then
  rm *.zip;
fi
zip -rq /root/Pictures/autosave/reaver_$(date -d "today" +"%Y%m%d_%H%M%S").zip /usr/local/etc/reaver
sz *.zip
rm *.zip
echo ==Backup is Done!==
