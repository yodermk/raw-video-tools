# This is a script intended to be sourced in your shell before you run 
# the other scripts in this package. Copy it to your project directory
# and edit appropriately.
# Do not put trailing slashes on the directories.

# CARDPATH is the mount point of your storage card. We will look
# under this path for DCIM/*/*.MLV
export CARDPATH=

# VIDEOPATH is the parent directory of where your videos will
# be saved.
export VIDEOPATH=

# FPS is frames per second. Should be the same among all videos
# on your card or we have problems.
export FPS=

# MLVDUMPOPTS gives additional options for the mlv_dump program
export MLVDUMPOPTS=

# UFRAWOPTS will specify any additional conversion options
# to ufraw-batch
export UFRAWOPTS=

# MLVDUMP is the path to the mlv_dump.linux binary
export MLVDUMP=

