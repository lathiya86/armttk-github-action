# Github action running ARM-TTK in a Docker container

![.github/workflows/main.yml](https://github.com/whaakman/armttk-github-action-demo/workflows/.github/workflows/main.yml/badge.svg)

This demo leverages the Azure Resource Manager Template Toolkit (ARM-TTK) (https://github.com/Azure/arm-ttk) and runs the toolkit against the files in the repository. 

The container is build from mcr.microsoft.com/powershell:latest and the entrypoint file can contain as much PowerShell goodness as you like. 

Build for testing / learning purposes and will improve once I learn more :)
