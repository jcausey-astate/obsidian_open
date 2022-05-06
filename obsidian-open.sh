#!/usr/bin/env bash

# This script will generate the URL to open Obsidian to the vault and/or file of
# your choice, according to the arguments.  It only works on MacOS (requires the
# "open" command).

function usage(){
    echo "Usage:"
    echo "$(basename $0) vault/file.md"
    echo "    opens 'file.md' in 'vault'."
    echo "  or  "
    echo "$(basename $0) vault"
    echo "    opens 'vault'."
    echo "  or  "
    echo "$(basename $0) file.md"
    echo "    opens 'file.md' in current vault, if it exists.  (Error if the file doesn't exist.)."
    echo
    echo " Use the -n option to create a new file, if the file doesn't exist."
    echo
}

if [ "${1:0:2}" == "-h" ] ; then
    usage
    exit 0
fi

vault_action="open"
if [ "${1:0:2}" == "-n" ] ; then
    vault_action="new"
    shift
fi

file="${1#*/}"
vault="${1%%/*}"

# If they give only the file, or only the vault, we must empty the other variable:
if [ "${file}" == "${vault}" ] ; then
    # If they give a file name, it must have an extension.  If so, empty the vault string:
    if [ "${file%%.*}" != "${file}" ] ; then
        vault=""
    else # otherwise, it is the file that wasn't specified; clear that one.
        file=""
    fi
fi

vault_str=""
if [ "${vault}" != "" ] ; then
    vault_str="vault=${vault}"
fi
vault_str=$(echo ${vault_str}|sed -e 's/ /%20/g')

file_str=""
if [ "${file}" != "" ] ; then
    file_str="file=${file}"
fi
file_str=$(echo ${file_str}|sed -e 's/ /%20/g')

and_str=""
if [ "${vault_str}" != "" ] && [ "${file_str}" != "" ]; then
    and_str="&"
fi

obs_scheme="obsidian://${vault_action}?"
query="${vault_str}${and_str}${file_str}"
url="${obs_scheme}${query}"

# Now open the URL
open "${url}"
