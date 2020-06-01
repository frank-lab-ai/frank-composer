param (
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$username
)

if ($username -ne '') {
  cd ..

  'Cloning franky repo...'
  git clone https://$username@bitbucket.org/frank-lab/franky.git
  "`nDone`n"

  'Cloning frank-ui repo...'
  git clone https://$username@bitbucket.org/frank-lab/frank-ui.git
  "`nDone`n"

  cd frank-composer
} else { 'A BitBucket username must be provided as the first argument or with thewith the -u or --username flags' }
