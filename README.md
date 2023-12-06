## translate.sh

A simple bash script which translates any selected text and displays a desktop notification with the translated text. The script runs only on Linux.
It uses Google Translate under the hood. The idea is to assign this script to a keyboard shortcut in your Linux desktop. Then whenever you need to
translate some text, you select it, press the shortcut and a notification with the translated text pops up.

## Installation

1. Install dependencies

    ```bash
    sudo apt install curl xsel jq
    ```

2. Download the translate.sh script
3. Make the script executable

    ```bash
    chmod a+x ./translate.sh
    ```

4. Assign the translate.sh script to a keyboard shortcut. This step depends on the desktop environment you use (e.g. Gnome, KDE, Xfce, etc.).
    Please simply Google how to assign a command to a keyboard shortcut in your desktop environment. The important thing is that the target language
    (the language to which you want to translate) is set by a command line argument. For example if you want to translate to Spanish, 
    then the command you assign to a keyboard shortcut should look like this:

    ```bash
    /path/to/the/script/translate.sh es
    ```

    Please notice that the command line argument (`es`) is the language code for Spanish.

