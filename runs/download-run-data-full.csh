#!/bin/csh
#
set found=`which wget |grep -v found |wc -l`
  if ($found == 0) then
    set found=`which curl |grep -v found |wc -l`
    if ($found == 0) then
      echo 'No curl nor wget found in your system'
      echo 'Unable to download expample data'
      goto exit
    else
      set cmd=`which curl`
      $cmd -L https://surfdrive.surf.nl/files/index.php/s/pmRJ49COfnhHXJY/download > AcrB-rifampicin-surface-full.tgz
      $cmd -L https://surfdrive.surf.nl/files/index.php/s/Q41thzlD0fKUT7n/download > AcrB-rifampicin-pocket-full.tgz
    endif
  else
    set cmd=`which wget`
    $cmd https://surfdrive.surf.nl/files/index.php/s/pmRJ49COfnhHXJY/download -O AcrB-rifampicin-surface-full.tgz
    $cmd https://surfdrive.surf.nl/files/index.php/s/Q41thzlD0fKUT7n/download -O AcrB-rifampicin-pocket-full.tgz
  endif
endif

exit:
