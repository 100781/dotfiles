function cleanup --description 'Clean up OXS DS_Store files'
  find . -type f -name '*.DS_Store' -ls -delete
end
