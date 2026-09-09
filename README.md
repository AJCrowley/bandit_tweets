# Tweets from the Bandit (@UtilityLimb)

Back when twitter was still a fun place, a person going by the handle bandit(@UtilityLimb) expertly crafted 665 tweets so weird and wonderful that they deserve a place in history.

This will grant you with the gift of a single piece of timeless wisdom from @UtilityLimb each time you open a terminal (or whenever you want really).

## I just want it to install

Then download it, ```chmod +x install.sh``` and run the .sh script if you're on a real computer, or just run the .ps1 script if you're on Windows and everything will be taken care of for you. You can edit your shell's startup script (```~/.bashrc,~/.zshrc,\Users\<you>\Documents\PowerShell\Microsoft.PowerShell_profile.ps1```) and style it if you want a splash of colour or a bit more framing.

## I don't like blindly running shell scripts from strangers/I want it to run how I want it to run

The install scripts aren't rocket surgery, copy the ```utilitylimb``` folder and its contents to its permanent home, install fortune (rfortune if you're on Windows) through apt, brew, dpkg, or winget or whatever package manager you use. Then all you need to do is call ```fortune /wherever/you/put/it/utilitylimb``` (```rfortune \wherever\you\put\it\utilitylimb\utilitylimb``` on Windows, just use scripts as reference) to dispense a single tweet. I have it baked into a larger "welcome" function that gives some stats when I open a shell, but you can do with it as you wish.

I made neither fortune/rfortune, nor the @UtilityLimb tweets. I managed to find an old archive of the tweets (which no longer appear to be on Twitter), I just made the archive into a format useable by fortune, and wrote the installer script to dispense them using fortune. This kind of history deserves to be preserved.

I hope that this brings an air of wonder to your terminal as it has mine.

---

kris@8pi.ca // https://buymeacoffee.com/ajcrowley
