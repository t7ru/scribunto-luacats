# scribunto-luacats

LuaCATS type definitions for [Scribunto](https://www.mediawiki.org/wiki/Extension:Scribunto).

If you do not use the VSCode extension, you can add a `.luarc.json` to your project root:
```json
{
  "$schema": "https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json",
  "runtime": {
    "version": "Lua 5.1",
    "builtin": {
      "io": "disable",
      "coroutine": "disable",
      "os": "disable",
      "debug": "disable",
      "package": "disable"
    }
  },
  "workspace": {
    "library": ["../scribunto-luacats/library"],
    "checkThirdParty": false
  }
}
```

Adjust the `library` path if you cloned to a different location.
