if [ ! -d "HOME/.asdf"]

    # Get the package manager. https://asdf-vm.com/#/core-manage-asdf-vm
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf
    cd ~/.asdf
    git checkout "$(git describe --abbrev=0 --tags)"

    # fix issue verifying node binaries https://github.com/asdf-vm/asdf-nodejs/issues/65#issuecomment-365439989
    rm -rf "$HOME/.asdf/keyrings/nodejs"
    "$HOME/.asdf/plugins/nodejs/bin/import-release-team-keyring"
}
