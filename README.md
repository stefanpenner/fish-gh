# fish-gh

Tiny fish function that lets you "cd" into github repositories, if they are not
present it will first clone them, then `cd` into them.

```
cg ember-cli/ember-cli
if src/ember-cli/ember-cli is present, simply cd into it
else git clone into src/ember-cli/ember-cli/ and then cd into it
```
