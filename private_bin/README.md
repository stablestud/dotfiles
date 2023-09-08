# Special user directory `~/bin` 

This directory can contain user installed scripts/programs and is not managed    
by Chezmoi, that means no files are added/removed from here.    
So files here are safe from deletion/removal/overwrites,    
also programs here are first in `$PATH` so it can be used to overwrite system    
programs or those installed by chezmoi (which are in `~/.local/bin`)

