## My nvim config ##

Baseline taken from https://github.com/ThePrimeagen

Althought I don't utilize Tmux in favor of Yakuake with difrent sessions in it.

|Language|Status|Additional|
|---|:---:|---|
|Python|Full|Works great, requires proper venv|
|Java|~Full~ Broken|Linting and sudgestions work most of the time, `jdtls` does like to throw an occasional tantrum|
|Go|Partial|Linting and sudgestions kind of work.|

## Tips ##
 - `:write | edit | TSBufEnable highlight`: Does help when `treesitter` shits itself. Also seems to help with autoformatting.
 - `:JdtWipeDataAndRestart`: Helps `jdtls` see new packages.
 - `rm -rf ~/.cache/jdtls/project-name` Can get `jdtls` unstuck if it's throwing exception 13. 

## Problems ##
Updating the packages can, and sometimes will break features.
