cat >/opt/alist/data/config.json <<EOF
{
  "force": false,
  "site_url": "",
  "cdn": "",
  "jwt_secret": "sSmTcVspBbj9QuAC",
  "token_expires_in": 48,
  "database": {
    "type": "$DATABASE",
    "user": "$SQLUSER",
    "password": "$SQLPASSWORD",
    "host": "$SQLHOST",
    "port": $SQLPORT,
    "name": "$SQLNAME",
    "table_prefix": "x_",
    "db_file": "data.db",
    "ssl_mode": ""
  },
  "scheme": {
    "address": "0.0.0.0",
    "http_port": 5244,
    "https_port": -1,
    "force_https": false,
    "cert_file": "",
    "key_file": "",
    "unix_file": "",
    "unix_file_perm": ""
  },
  "temp_dir": "data/temp",
  "bleve_dir": "data/bleve",
  "log": {
    "enable": true,
    "name": "data/log/log.log",
    "max_size": 50,
    "max_backups": 30,
    "max_age": 28,
    "compress": false
  },
  "delayed_start": 0,
  "max_connections": 0,
  "tls_insecure_skip_verify": true
}
EOF

cd /opt/alist
./alist server
