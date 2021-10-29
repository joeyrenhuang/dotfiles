:<<EOF
As A Entry Of Bash(Bourne-Again SHell)
We will load all our bash configs here
Assume ourself-defined configs are alike .__my__
EOF
OPWD=$PWD
cd ~
for cfg in `ls -a .__*my__*`
	do 
		[ -e $cfg ] && [ -f $cfg ] && [ -s $cfg ] && . $cfg && echo "(Bourne-Again SHell)${cfg} loaded."
	done
cd $OPWD
unset cfg
unset OPWD
. "$HOME/.cargo/env"
