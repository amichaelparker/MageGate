# MageGate
A (mostly) fixed up version of the MageGate addon for ~~Shadowlands~~ ~~Dragonflight~~ ~~The War Within~~ (somehow, miraculously) Midnight.

All credits go to the original author (found [here](https://www.curseforge.com/wow/addons/mage-gate)).

## WoW: Forever (beta support)
The same addon also loads on WoW: Forever, which runs the modern engine but reports interface `16001`. The `.toc` lists both versions, so one copy works on both clients.

This support is **untested on the live servers** so far. It was only tried on the pre-launch beta with a low-level mage. Specifically:

- Portal and teleport spells that don't exist in the Forever client are removed at load, so nothing errors on missing spells. The Forever spell IDs themselves haven't been checked yet.
- Spellcast events that come through as secret values (in combat) are ignored instead of throwing errors.
- `/mgate debug` prints which spells were found and which were dropped. If something's missing, that's the first thing to check.

Bug reports from Forever are welcome.
