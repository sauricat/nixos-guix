{ pkgs, guix, ... }:

pkgs.runCommand "nixos-guix" { } 
  ''
    mkdir -p $out/bin
    ln -s ${guix.guixpath}/bin/guix $out/bin/nguix

    mkdir -p $out/share
    ln -s ${guix.guixpath}/share/guix $out/share/nguix

    mkdir -p $out/share/guile/site
    ln -s ${guix.guixpath}/share/guile/site/guix $out/share/guile/site/nguix

    mkdir -p $out/share/guile/ccache
    ln -s ${guix.guixpath}/share/guile/ccache/guix $out/share/guile/ccache/nguix

    mkdir -p $out/libexec
    ln -s ${guix.guixpath}/libexec/guix $out/libexec/nguix

    mkdir -p $out/etc/bash_completion.d
    ln -s ${guix.guixpath}/etc/bash_completion.d/guix $out/etc/bash_completion.d/nguix
  ''
/*
  meta = with lib; {
    description =
      "A transactional package manager for an advanced distribution of the GNU system, and with symlinks.";
    homepage = "https://guix.gnu.org/";
    license = licenses.gpl3;
    maintainers = with maintainers; [ sauricat ];
    platforms = platforms.linux;
  };
}*/