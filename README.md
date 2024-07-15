# mfind - Module Finder

Given a list of module names (without versions), finds the list of module names (with versions) that 1) have compatible toolchains and 2) are the most recent possible versions/toolchains.

## Motivation

We often see users running into problems because they load multiple modules that use different toolchains.
We can explain to them how to avoid this, but even then it's a lot of work to get a list of modules that are 
compatible. You have to refer to the [equivalency table](https://fredhutch.github.io/easybuild-life-sciences/toolchains/), and also know that `gompi` and `gfbf` toolchains are equivalent to `foss`.
You basically have to run `ml avail` for every module you want to load and then find the module with the most recent toolchain that exists for all the modules you want to load. It's a bunch of work and we often end up doing it for users, sending them a list of modules that they have to keep handy (and which will not, over time, remain the most recent).

`mfind` does all this work for us. Now you can just type:

```bash
mfind Python R unixODBC
```

and it will print out:

```bash
ml Python/3.11.5-GCCcore-13.2.0 fhR/4.3.3-foss-2023b unixODBC/2.3.12-GCC-13.2.0
```

That doesn't actually do anything. You either have to copy and paste the output onto the command line, or wrap the command in an `eval`; either way will actually load the modules for you:

```bash
eval $(mfind Python fhR unixODBC)
```

`mfind` has tab-completion as well (like `ml`, but it doesn't show module versions).

If a module was not built with a particular toolchain (because it's Go or Java code) then `mfind` will just try to pick the most recent overall version of it. The tab completion is case sensitive, so if it is not showing the module you think it should, try a different case. For example, `mfind py<tab>` will NOT show `Python` as a completion, but `mfind Py<tab>` will.

If `mfind` can't find compatible modules from its arguments it will print a message to that effect on standard error, and exit with exit code 1.

## Maintenance

If a new toolchain is added, it needs to be added to the definitions of `fossVersions` and `gccVersions` near the top of `mfind.go`. Note that these lists are in order, recent to oldest, and the code will treat `fossVersions[i]` and `gccVersions[i]` as equivalent, so make sure they are. 

Build as follows:

```bash
ml purge
ml Go
go get -u github.com/spf13/cobra@latest # only need to run this once
go build -o mfind
```

Then place the `mfind` executable in `/app/bin` with the appropriate permissions/ownership:

```
$ ls -l /app/bin/mfind
-rwxr-xr-x 1 scicomp g_scicomp 4447213 Jul 14 12:26 /app/bin/mfind
```

Note also that the following code has been added to `/app/lmod/lmod/init/bash` to facilitate tab completions:

```bash
# Check if 'mfind' executable is present
if command -v /app/bin/mfind &> /dev/null; then
    # Source the output of 'mfind completion bash'
    source <(/app/bin/mfind completion bash)
fi
```

I tried to implement case-insensitive completions (so you could type `mfind py<tab>` and get `Python` as a match) but it was too tricky and I did not want to permanently change people's settings for other uses of tab-completion. 
Maybe I will revisit this in the future.


# TODOS

* Currently it doesn't do anything special with CUDA modules because I am not 100% clear on the logic required.
I imagine it's just like toolchains, in that if you pick multiple modules with CUDA in their names, the version that follows `CUDA` must be the same for each. If that is the needed behavior, it can easily be added.
* Might revisit the case-insensitive completion thing. 
