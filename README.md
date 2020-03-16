# Hosting Information

## Services we host on:

- YouTube
- LBRY
- Google Podcasts
- iTunes
- Apple?
- Spoofy

# Topic Ideas

- Podcast introduction
  - Who we are, what we do, what we're striving for
  - Privacy
  - Security
  - Decentralization, self-reliance
  - Low expectations - lrvick

- Role of open source in self-driving automobile tech
  - nvidia's role in this? Are they still dicks?
- Variations in how different cultures approach security
- Twitter: will it federate? what will it look like?
  - Role of ActivityPub? Brought about by AP? Will AP be involved?
- Biohacking: Giving the FDA a middle finger, and humans the right to live
- Ethics of using apps that not only track you but your friends as well
  - Second-hand privacy invasion
- Reliance on Git web UIs
  - Not accountable given things can technically be spoofed
- "EARN IT" and the implications of attempting to ban cryptography
- Open-source microtransaction disrupting advertising industry
  - lbry.io
  - BAT
  - Lightning
- DMCA and Illegal Primes
  - Illegal to reverse engineer copyright protection
  - Illegal to obtain certain prime numbers
- Abuse of and from the copyright system
  - Flame v Taylor Swift
  - YouTube's copyright system
  - Safe Harbor laws
- Bodily-embedded encryption keys - Vivokey
- Password managers
- Security patterns for different threat models
  - Are password managers as good as a hand-written notebook?
    - "Last time we talked about password managers,"
  - Performing attacks on yourself to analyze your own threat models
- Physical security
  - How to implement it
  - When it really matters
- Software supply chain integrity
  - Modern package managers
  - This must be done AFTER the "Practically Secure Package Manager" infocast
    - Which also means we need to analyze hashing, signing, encrypting
  - How to get around attacks blocking upgrades?
- Long-term communication in security
  - "The UX of security: how to get people to avoid danger they don't understand"
  - https://en.wikipedia.org/wiki/Long-time_nuclear_waste_warning_messages
- Running your own infrastructure
  - "De-Google" your life
  - History of #! and why your own service infrastructure is actually hard
- Shamir's Secret Sharing
- Toolchain security
  - Kernel/compiler memory access violations
  - Memory safe machine languages (Go, Rust, Zig, etc.)
- HSM design failures
  - PHYSICAL INPUT REQUIRED YOU NUMBNUTS
- Compare/contrast Defcon/CCC, why you should attend either|both
- Responsible disclosure
  - How far is too far?
  - How long is too long to wait?
- Ethics of spying on others
  - How easy it is to abuse
- Federation versus centralized communication platforms
  - Signal (closed-ecosystem, decent security) vs Telegram (open ecosystem, shit security)
- Hacking your friends and coworkers (responsibly!)
- Is "Digital Soverignty" achievable, or worth it?
- Immutable wealth - Operating without a government

# Tools

To add the tools to your PATH, use `source tools/activate`.

## generate-wave-from-audio

Takes two arguments, the first being an audio input, the second being a video
container output. The generated video can be tweaked by using the following
environment variables:

- GWFA_RES (default "1920x1080"): Resolution of the generated file
- GWFA_MODE (default "p2p"): Generated line format
  - `line` generates a thick wave on only one side of the wave at a time
  - `cline` generates a thick wave mirrored on both sides of the wave
  - `p2p` generates a thin line
  - `point` generates a less-solid line, but takes less time, useful for tests
- GWFA_COLOR (default "lime"): ffmpeg-compatible color to make the line/wave
- GWFA_SCALE (default "lin"): Calculation used for amplitude scaling
  - `lin`: Linear
  - `log`: Logarithmic
  - `sqrt`: Square Root
  - `cbrt`: Cubic Root
- GWFA_FRAMERATE (default "60"): Framerate to use for video
  - Should be one of 25, 30, 50, 60, and match the framerate of the final video
