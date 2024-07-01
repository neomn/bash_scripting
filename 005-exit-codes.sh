#!/bin/bash

package='some-fake-package-name'
sudo dnf install -y $package
if [ $? -eq 0 ]; then
    echo 'package installed successfully'
else 
    echo 'failed to install package'
fi

# we can use exit command to set the exit code manually
exit 153
# othe command after the above comamnd will not run since we are exiting
