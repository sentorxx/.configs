export PATH=$PATH:~/bin:~/gopath/bin/
# use green for matches not the default red 
export GREP_COLORS="mt=00;32:ms=00;32:mc=00;32:sl=:cx=:fn=35:ln=32:bn=32:se=36"
export EDITOR=emacsclient

# compile go properly
# GOROOT directory where the compiled go stuff is located e.g. also src dir
# compiled go stuff here: 
GOROOT=/home/sentor/download/go; export GOROOT
GOPATH=/home/sentor/gopath; export GOPATH

