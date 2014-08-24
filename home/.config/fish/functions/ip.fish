function ip --description='Displays the external ip address'
  dig +short myip.opendns.com @resolver1.opendns.com
end
