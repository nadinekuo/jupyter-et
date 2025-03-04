if [ ! -r rootCA.key ]
then
    openssl genrsa -out rootCA.key 2048
fi
if [ ! -r rootCA.pem ]
then
  openssl req -x509 -new -nodes -key rootCA.key -sha256 -days 1024 -out rootCA.pem
fi

mkdir -p ssl/private
cp rootCA.key ssl/private/etk.cct.lsu.edu.key

mkdir -p ssl/certs
cp rootCA.pem ssl/certs/etk.cct.lsu.edu.cer

#c.JupyterHub.ssl_cert = '/etc/ssl/certs/etk.cct.lsu.edu.cer'
#c.JupyterHub.ssl_cert = '/etc/ssl/certs/etk.cct.lsu.edu.cer'
#c.JupyterHub.ssl_key =  '/etc/ssl/private/etk.cct.lsu.edu.key'
#c.JupyterHub.ssl_ciphers =  'ECDHE-RSA-AES128-GCM-SHA256:ECDHE-RSA-AES256-GCM-SHA384'
