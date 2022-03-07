---
title: Blogs (Useful commands)
permalink: /blogs/
author_profile: true
published: true
---

# List of all directories with size
```du -sh *
```

# Joining two files vertically
```awk 'NF' file1 file > result
```

# Moving files using awk
```ll | awk -F' ' '{if($5<=20 && NF>=9) {cmd="mv "$9" ../backup/"$9; system(cmd) } }'
```

# Choose the column line and then print the parts (sed and awk)
```sed -n '1p' /projets/sig/mullah/ir/projects/l2rsc-risk/adhoc_old/COVID21_Expansion_all.mat | awk -F ' ' '{for(i=1;i<=NF;i++) print i":"$i; }'
```

# Symbolic link (two files)
```ln -s source_file new_file
```

# Split a files into parts
```split -l 50000 fused-run/combsum_runs fused-run/
```

# Installing softwares in user space
```easy_install --prefix=$HOME/local package_name
```

# Installing a software package in linux 
```./configure --prefix=<instalation directory>
make 
make install 
```

# Installing with a configuration file but cmake list
> mkdir build
> cd build
> cmake .. --DCMAKE_INSTALL_PREFIX=<instalation director>

### Slurm commands
# Slurm osirim commands
> scontrol show job jobid(#2072705)

# Show the available resources
> sinfo --Node -o %N:%C

### Working with Git
# Initiate a git project
> git init

# Add file(s) to staging for committing
> git add <filename>
> git add --all #all files and folder

# Commit
> git commit -m "message"

# Push remotely
> git remote add origin https://github.com/zuacubd/xxxxx.git
> git push -u origin master

# Pull from remote repository
> git pull https://github.com/zuacubd/photopitch.git

# Update an R commands
#update.packages(checkBuilt = TRUE, ask = FALSE)

# Create a virtual environment
> python3 -m venv env_name

# Adding a virtual environment to the jupyter
> pip install ipykernel
> python -m ipykernel install --user --name env_name --display-name "env_name"

# List all packages installed in the virtual environment
> pip freeze requirements.txt

# Creating a virtual environment using Conda
> conda create -y --name py37 python==3.7
> conda install --force-reinstall -y -q --name py37 -c conda-forge --file requirements.txt
> conda activate py37
> conda deactivate

# Creating a singularity image from recipe 
> sudo singularity build growl-llo-world.sif recipe_file

# Executing a Singularity image
> singularity shell /logiciels/containerCollections/CUDA11/pytorch-NGC-20-06-py3.sif
> conda create -n env36tc11 python=3.6
> source activate env36tc11

# Show the mode of the file
> stat -c %a file.sh

# Change permission as (full permissions for the owner, read-only for the group, and nothing for the other users)
> chmod 740 file.sh
