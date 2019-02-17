if not set -q abbrs_initialized
  set -U abbrs_initialized
  echo -n Setting abbreviations... 

    abbr p 'python3'
    abbr v 'nvim'

  echo 'Done'
end
