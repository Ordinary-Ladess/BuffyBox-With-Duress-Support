# BuffyBox With Duress PIN support in Unl0kr

BuffyBox is a suite of graphical applications for the terminal.


## Action Plan

- Fork a copy of the repo  -  Done
- find time to work on this, lol
- Update sources
- Modify unl0kr-agent.c with a proof of concept
- Demonstrate the concept
- improve slowly and eventually.

The function <code>int send_password(const char *password)</code> looks to be the <br>
best place to check if the password is a duress password and if so,<br>
executes a shell script.<br>
The script would be a simple search for all eMMC block devices and zero them.<br>
<br>
After this, my future goals will be to figure out basic camera support,<br>
add in support for modifying boot and generating/swapping initramfs.<br>
Even if it's my usual dodgy system() way of running external scripts to handle that.<br>
<br>
Picture this:<br>
Apparently it maybe illegal in some countries to knowingly give a duress PIN.<br>
That happened to a GrapheneOS user around July/August 2026.<br>
Instead of just wiping, instead, the phone says, "unlocking, Please wait".<br>
It takes a photo with the selfie camera,<br>
Plants the photo into the boot area or initramfs,<br>
wipes the main encrypted partition,<br>
reboots.<br>
A big screen with "ANTI-THEFT - Face Detection failed!", a picture of the thief/fed/etc.<br>
at the bottom is a "PERMANENTLY BRICKED".
Legally it would appear as though the person under duress didn't wipe the phone,<br>
instead it'll look like the fed tripped the anti-theft.<br>
<br>
The embarrassment the fed would have being accused of theft by a phone under investigation!<br>
<br>
Future improvements from that point onwards could include actual face detection.<br>
That way, if face detection fails, the owner has to put in 2 or more different passwords.<br>
That way, if a court refers to this README.md, they'll still be without evidence <br>
<br>
## Components

### Standalone apps

**[buffyboard]** – Touch-enabled on-screen keyboard for virtual terminals

**[unl0kr]** – Disk unlocking UI for the initramfs

### Utilities

**[squeek2lvgl]** – Converter for transforming [Squeekboard] layouts into [LVGL]-compatible C code

**[shared]** – Internal code that is shared by some or all applications in the suite but not meant to be used externally 

## Contributing

You can join our development chat at [#buffybox:matrix.org].

## Making a release

To make it easier for distributions to package BuffyBox, we include source tarballs including the LVGL submodule in GitLab releases. See [unl0kr#42] for more background on this.

Producing and uploading a source tarball requires [git-archive-all] to be installed as well as an access token for the GitLab API. To tag a release and upload a source tarball, run

```
./release.sh $VERSION $TOKEN
```

Once the upload completes, create a new release on GitLab and attach the URL of the uploaded source tarball.

## License

This project is licensed under the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

For the license of bundled images and fonts, see [shared/cursor] and [shared/fonts].

[#buffybox:matrix.org]: https://matrix.to/#/#buffybox:matrix.org
[buffyboard]: ./buffyboard
[git-archive-all]: https://github.com/Kentzo/git-archive-all
[LVGL]: https://github.com/lvgl/lvgl
[shared]: ./shared
[squeek2lvgl]: ./squeek2lvgl
[Squeekboard]: https://gitlab.gnome.org/World/Phosh/squeekboard
[shared/cursor]: ./shared/cursor
[shared/fonts]: ./shared/fonts
[unl0kr]: ./unl0kr
[unl0kr#42]: https://gitlab.com/cherrypicker/unl0kr/-/issues/42
