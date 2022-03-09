---
title: Blogs (Useful commands)
permalink: /blogs/
author_profile: true
published: true
---

### Linux OS Useful Commands

List all directories with size:

`du -sh *`

Find all files containg a string 'pathlib" and ending wiht ".py", for example:

`find . -name '*.py' -exec grep -H 'pathlib' {} +`

Join two files vertically:

`awk 'NF' file1 file > result`

Move some particular files from one directory to another using AWK:

`ll | awk -F' ' '{if($5<=20 && NF>=9) {cmd="mv "$9" ../backup/"$9; system(cmd) } }'`

Choose the first row and then print the parts (sed and AWK):

`sed -n '1p' /*/*/COVID21_Expansion_all.mat | awk -F ' ' '{for(i=1;i<=NF;i++) print i":"$i; }'`

Make symbolic link between two files:

`ln -s source_file new_file`

Split a files into parts:

`split -l 50000 fused-run/combsum_runs fused-run/`

Install softwares in user space:

`easy_install --prefix=$HOME/local package_name`

Install a software package in linux (Configure, Make, and Make Install):

`./configure --prefix=<instalation directory>`

`make`

`make install`

Install with a configuration file but cmake list

`mkdir build`

`cd build`

`cmake .. --DCMAKE_INSTALL_PREFIX=<instalation director>`

Show the permission mode of a file

`stat -c %a file.sh`

Change permission as (full permissions for the owner, read-only for the group, and nothing for the other users)

`chmod 740 file.sh`

### Slurm cluster commands

Slurm control a job:

`scontrol show job jobid(#xxxxx)`

Show the available resources:

`sinfo --Node -o %N:%C`

### Working with Git

Initiate a git project:

`git init`

Add file(s) to staging for committing:

`git add <filename>`

`git add --all #all files and folder`

Commit:

`git commit -m "message"`

Push to a remote repository:

`git remote add origin https://github.com/zuacubd/xxxxx.git`

`git push -u origin master`

Pull from a remote repository:

`git pull https://github.com/zuacubd/xxxxx.git`

### Useful R commands

Update an R package:

`update.packages(checkBuilt = TRUE, ask = FALSE)`

### Virtual environment for Python

Create a virtual environment:

`python3 -m venv env_name`

Add a virtual environment to the jupyter:

`pip install ipykernel`

`python -m ipykernel install --user --name env_name --display-name "env_name"`

List all packages installed in the virtual environment to requirements.txt file:

`pip freeze requirements.txt`

Create a virtual environment using Conda:

`conda create -y --name py37 python==3.7`

Activate a virtual environment using Conda:

`conda activate py37`

Install packages in a virtual environment using Conda:

`conda install --force-reinstall -y -q --name py37 -c conda-forge --file requirements.txt`

Deactivating a virtual environment using Conda:

`conda deactivate`

### Working with Singularity

Create a singularity image from a recipe file:

`sudo singularity build growl-llo-world.sif recipe_file`

Executing a Singularity image:

`singularity shell /logiciels/containerCollections/CUDA11/pytorch-NGC-20-06-py3.sif`

`conda create -n env36tc11 python=3.6`

`source activate env36tc11`


### Docker container
