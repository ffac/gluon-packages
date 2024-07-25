mt7915 reload
=============

This script reloads mt7915-firmware twice a day on targets ramips-mt7621
and mediatek-filogic.
It's meant as a hotfix for https://github.com/freifunk-gluon/gluon/issues/3305
The issue popped up with Gluon v2023.2, earlier releases are not affected.

Create a file `modules` with the following content in your `./gluon/site/`
directory and add these lines: 

```
GLUON_SITE_FEEDS="community"
PACKAGES_COMMUNITY_REPO=https://github.com/freifunk-gluon/community-packages.git
PACKAGES_COMMUNITY_COMMIT=*/missing/*
PACKAGES_COMMUNITY_BRANCH=master
```

Now you can add the package `ffac-mt7915-reload` to your site.mk
(`*/missing/*` has to be replaced by the github-commit-ID of the version you
want to use, you have to pick it manually.)
