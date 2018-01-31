Bootstrap: shub
From: kalebabram/singularity_r
 
%help
  This will run RStudio Server

%environment
  export PATH=/usr/lib/rstudio-server/bin:${PATH}

%post
  # Software versions
  export RSTUDIO_LATEST=$(wget --no-check-certificate -qO- https://s3.amazonaws.com/rstudio-server/current.ver)

  # Install RStudio Server
  apt-get update
  apt-get install -y --no-install-recommends \
    ca-certificates \
    wget \
    gdebi-core
  wget \
    --no-verbose \
    -O rstudio-server.deb \
    "https://download2.rstudio.org/rstudio-server-${RSTUDIO_LATEST}-amd64.deb"
  gdebi -n rstudio-server.deb
  rm -f rstudio-server.deb

  # Clean up
  rm -rf /var/lib/apt/lists/*

%labels
  RStudio_version 1.1.419

%apprun rserver
  exec rserver "${@}"

%runscript
  exec rserver "${@}"