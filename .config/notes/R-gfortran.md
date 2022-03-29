# Making `gfortran` work with R on M1

Installing pkges from source was tripping on missing `gfortran` in `/opt/R/arm64/bin/gfortran`.

Many online guides tell you to mess w/ Makevars and stuff. 
I couldn't get that to change where R was looking for `gfortran`.

Instead, we appease R. 
We can download binaries from <https://github.com/fxcoudert/gfortran-for-macOS/releases>,
which unpacks to /usr/local/gfortran and whichs `which gfortan` to /usr/local/bin/gfortan.
We can just link these to `/opt/R/...`. 

First try was to link `$(which gfortran)` but this was a link to the binary only.
Other installs wanted supporting libraries.
So we link the entire `gfortan` source dir to /opt/... like so:

```sudo ln -s /usr/local/gfortran /opt/R/arm64/gfortran```

only this was also giving me grief because R explicitly was looking for gfortran 11.0 instead of 12.0, so I downgraded to an ARM-compatible 11.0 build.

It's possible that the 12.0 build can work if I change which library R expects.
This is probably where Makevars comes in again, but not yet sure where.
