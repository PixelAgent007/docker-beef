# docker-beef

Docker implementation of BeEF Browser Exploitation Framework.
Originally made by isaudits, modified by PixelAgent007

https://github.com/beefproject/beef

## Usage
Edit config.yaml, then build and run.

Build:
    
    git clone https://github.com/PixelAgent007/docker-beef
    cd docker-beef
    docker build -t pixelagent007/beef .
    
Run:

    docker run -d pixelagent007/beef --name=beef


--------------------------------------------------------------------------------

Copyright 2018

Matthew C. Jones, CPA, CISA, OSCP, CCFE

IS Audits & Consulting, LLC - <http://www.isaudits.com/>

TJS Deemer Dana LLP - <http://www.tjsdd.com/>

--------------------------------------------------------------------------------

Except as otherwise specified:

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program. If not, see <http://www.gnu.org/licenses/>.
