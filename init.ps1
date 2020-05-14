param (
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$BitBucket_Username
)

if ($username -ne '') {
  cd ..

  'Cloning franky repo...'
  git clone https://$BitBucket_Username@bitbucket.org/frank-lab/franky.git
  "`nDone`n"

  'Cloning frank-ui repo...'
  git clone https://$BitBucket_Username@bitbucket.org/frank-lab/frank-ui.git
  "`nDone`n"

  cd frank-composer
} else { 'A BitBucket username must be provided as the first argument or with thewith the -BitBucket_Username flag' }
