#!/usr/bin/env bash

# Request admin password upfront
sudo -v

if [[ ! -f "/etc/keyd/default.conf" ]]; then
    echo "[INFO] keyd: Installing keyd config"
    sudo rsync -avh ../init/etc/keyd/ /etc/keyd/
else
    echo "[INFO] keyd: keyd already configured, skipping"
fi

echo "[INFO] keyd: Starting keyd deamon"
sudo systemctl enable --now keyd

if [ "$(which fnm)" == "" ]; then
    echo "[INFO] fnm: Installing fnm node manager"
    curl -fsSL https://fnm.vercel.app/install | bash

    echo "[INFO] fnm: Loading new bash config"
    source ~/.bashrc

    echo "[INFO] fnm: Installing fnm completions"
    fnm completions --shell bash | bash

    echo "[INFO] fnm: Installing latest node version initially"
    fnm install --lts
else
    echo "[INFO] fnm: Upgrading fnm without updating shell config file"
    curl -fsSL https://fnm.vercel.app/install | bash -s -- --skip-shell
fi

if [ "$(which pnpm)" == "" ]; then
    echo "[INFO] pnpm: Installing (depends on Node)"
    curl -fsSL https://get.pnpm.io/install.sh | sh -

    echo "[INFO] pnpm: Loading new bash config"
    source ~/.bashrc
fi

if [ "$(which sdk)" == "" ]; then
    echo "[INFO] sdkman: Installing sdkman"
    curl -fsSL "https://get.sdkman.io" | bash

    echo "[INFO] sdkman: Loading new bash config"
    source ~/.bashrc
fi
