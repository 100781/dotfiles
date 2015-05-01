function ra --description 'restart apache'
  echo So ya wanna restart apache, huh...
  sudo apachectl -k restart
  echo Apache has been restarted.
end

