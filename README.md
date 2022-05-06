# obsidian_open
Provides a CLI interface (**MacOS only**) to open a vault and/or file in [Obsidian](https://obsidian.md/).

See discussion of this topic on the Obsidian forums at:
<https://forum.obsidian.md/t/command-line-interface-to-open-files-folders-in-obsidian-from-the-terminal>

Since it wasn't supported in Obsidian proper as of this writing, I hacked together a Bash script to do what I needed.  
It is not full-featured by any means, but it solved my immediate issue, so I'm sharing it just in case you are 
also looking to do something similar.

## Installation
Download the "opsidian-open.sh" script and save it somewhere executable (e.g. `/usr/local/bin`).

For easier use, make an alias or a symlink with a shorter name, for example:

**Alias in `.bash_profile` or similar:**
```bash
alias obs="/path/to/your/obsidian-open.sh"
```
**Symlink in `/usr/local/bin` or similar:**
```bash
ln -s /path/to/your/obsidian-open.sh /usr/local/bin/obs
```

Then, you can use the script just by typing `obs`.  (Of course if you prefer to be more verbose, alias it to `obsidian` instead...)

## MIT License
Copyright 2022 Jason L. Causey

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
