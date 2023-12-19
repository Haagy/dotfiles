if [[ -d "/opt/cisco/anyconnect/"  ]];
then
    alias AnyConnect='/opt/cisco/anyconnect/bin/vpn -s < /opt/cisco/anyconnect/profile/sulzer.txt'
    alias AnyDisconnect='/opt/cisco/anyconnect/bin/vpn disconnect'
    alias AnyReconnect='AnyDisconnect; AnyConnect'
fi