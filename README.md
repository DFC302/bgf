# bgf
A bash version of tomnomnom's gf tool found here: [gf](https://github.com/tomnomnom/gf) \
A wrapper around grep to avoid typing common patterns.

**I do not take credit in any way for the idea of this tool. I simply just wanted to re-write it in bash**

# Why though?
I re-wrote this awesome tool in bash for the following reasons:
1. People have issues configuring golang.
2. People don't want golang installed on their system.
3. People just would prefer to use bash.

# Pattern files
The pattern files are stored in a separate file called patterns.sh as functions. \
You can edit them, change the flags, add new patterns, etc. just like you would any normal file with your favorite editor.

# Auto complete
An auto complete bash file exists that you can load into your \.bashrc file and then source it from there. \
You can also attempt to have the install.sh file do this for you. You may still have to source the file after. \
You can configure the install.sh file to fit your needs.

## \*\*\*Important note\*\*\*
Inside the main.sh file, it is configured to source the patterns.sh file as if you installed bgf in your home directory. 

Like so:
```
~/bgf/patterns.sh
```
If you plan to move bgf into a different directory, you will need to change this sourced directory. 

Example: \
If I moved bgf to *~/tools/* then I need to source the directory like so:
```
~/tools/bgf/patterns.sh
```

I will continue to add to this as gf updates.


