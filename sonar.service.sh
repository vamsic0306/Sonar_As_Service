[unit]
Description=sonar 
After=network.target
[Service]
Type=forking
LimitNOFILE=65536
User=sonar
Group=sonar
ExecStart=/opt/sonar/bin/linux-x86-64/sonar.sh start
ExecStop=/opt/sonar/bin/linux-x86-64/sonar.sh stop
Restart=Always
[Install]
WantedBy=multi-user.target
