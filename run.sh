#!/bin/sh

~/go/bin/hugo server -b https://crystallabs.io/ --cleanDestinationDir  --config hugo.yaml -c content -d public --forceSyncStatic --gc -w --appendPort=false --disableBrowserError --ignoreCache --disableFastRender --disableLiveReload --renderStaticToDisk --renderToDisk -v  $*

#  -l, --layoutDir string           filesystem path to layout directory
#      --logLevel string            log level (debug|info|warn|error)
#      --minify                     minify any supported output format (HTML, XML etc.)
#      --noBuildLock                don't create .hugo_build.lock file
#      --noHTTPCache            prevent HTTP caching
#  -p, --port int               port on which the server will listen (default 1313)
