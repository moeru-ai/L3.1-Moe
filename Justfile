# show available recipes.
list:
  @just --list

merge variant='2x8b' version='0.2' device='cuda':
  rm -r result/{{variant}}-v{{version}}
  mkdir -p result/{{variant}}-v{{version}}
  mergekit-moe ./cfg/{{variant}}-v{{version}}.yml ./result/{{variant}}-v{{version}} --device {{device}}
