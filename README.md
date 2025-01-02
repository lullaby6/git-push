<div align="center">

# GitPush

A fast method to push!

</div>

## Installation (Windows)

[Download](https://github.com/LucianoBrumer/GitPush/releases/download/v1.0.2/gp.exe) and move the .exe file into "C:\Windows"

## Usage
On your shell:

```bash
gp -c 'first commit!' -b master
```

If no branch is specified:

```bash
gp -c 'quick update'
```

This will execute a simple `git push` without specifying a branch.

To set the upstream flag:

```bash
gp -c 'initial commit' -b master -u
```

This will execute `git push -u origin master`.

### Options
```bash
  -h, --help            show this help message and exit
  --commit COMMIT, -c COMMIT
                        Commit message (default: "commit")
  --branch BRANCH, -b BRANCH
                        Branch name (if not specified, only "git push" is executed)
  --upstream, -u        Set upstream flag
```

