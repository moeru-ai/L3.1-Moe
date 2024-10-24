# show available recipes.
list:
  @just --list

merge variant='2x8b' version='0.2' device='cuda':
  mergekit-moe ./cfg/{{variant}}-v{{version}}.yml ./result/{{variant}}-v{{version}} --device {{device}}
