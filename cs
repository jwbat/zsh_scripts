#!/bin/zsh

# Author: James Batman
# Date Created: 11/17/2021
# Last Modified: 11/17/2021

# Description
# Creates starter zsh script 

# Usage
# createscript <name_of_script> 

name=$1

echo "#!/bin/zsh

# Author: James Batman
# Date Created: 
# Last Modified: 

# Description
# 

# Usage
# 

exit 0" >> $name

/bin/chmod 744 $name


exit 0
