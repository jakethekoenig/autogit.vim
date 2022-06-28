*autogit.vim.txt*    For AutoGitrsion 8.0. Last Change: 2022 Jun 28

                     _              _ _         _           
          __ _ _   _| |_ ___   __ _(_) |___   _(_)_ __ ___         ~
         / _` | | | | __/ _ \ / _` | | __\ \ / / | '_ ` _ \        ~
        | (_| | |_| | || (_) | (_| | | |_ \ V /| | | | | | |       ~
         \__,_|\__,_|\__\___/ \__, |_|\__(_)_/ |_|_| |_| |_|       ~

====================================================================
CONTENTS                                        *AutoGitContents*

    1. Usage ................ |AutoGitUsage|
    2. Mappings ............. |AutoGitMappings|
    3. License .............. |AutoGitLicense|
    4. Bugs ................. |AutoGitBugs|
    5. Contributing ......... |AutoGitContributing|
    6. Changelog ............ |AutoGitChangelog|
    7. Credits .............. |AutoGitCredits|

====================================================================
Section 1: Usage                                   *AutoGitUsage*

This plugin changes the behavior of read and write for files that contain
+ GITAUTOPULL or + GITAUTOPUSH, without a space between the + and word.
Specifically if a file contains + GITAUTOPULL then this plugin will call git
pull from that files directory and refresh the file when the file would be
read. And if the file contains + GITAUTOPUSH the plugin will call git add @%,
git commit -m "Autopush", git push from that file's directory.

====================================================================
Section 2: Mappings                             *AutoGitMappings*

The plugin defines no mappings

====================================================================
Section 3: License                               *AutoGitLicense*

This plugin is distributed under the MIT license.

====================================================================
Section 4: Bugs                                     *AutoGitBugs*

This plugin has not been extensively used or tested so there are
undoubtedly bugs. If you encounter any you may open an issue on the
Github repository.

====================================================================
Section 5: Contributing                     *AutoGitContributing*

Feel free to open a pull request to the Github repository if you
want to add any features or fix any bugs.

====================================================================
Section 6: Changelog                           *AutoGitChangelog*

0.0.1: This software is on it's first version. There are likely bugs

====================================================================
Section 7: Credits                               *AutoGitCredits*

Thanks to Steve Losh for writing his wonderful book. Thanks to Bram
Moolenaar for making vim. Thanks to Linus Torvalds for making git.

 vim:tw=68:ts=8:ft=help:norl:
