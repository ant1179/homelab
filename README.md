# Usage instructions

This repository contains a devcontainer file used to connect the devcontainer to a remote Kubernetes cluster.

The devcontainer file simply spins up a dev pod devcontainer, installs neovim for file editing and positions the default shell to zsh.

# Requirements

- In order to launch the devcontainer you have to have devpods installed

# Missing files

In order to be able to connect to the remote kubernetes cluster, you need to create two separate files:
- a ```.envrc``` file exporting the KUBECONFIG variable to the local kubeconfig file
- the kubeconfig file containing the secrets and the cluster details.

For obvious reasons these files are part of the ```.gitignore```.
