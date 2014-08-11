# pretty-time-zsh [![Build Status](https://travis-ci.org/sindresorhus/pretty-time-zsh.svg?branch=master)](https://travis-ci.org/sindresorhus/pretty-time-zsh)

> Convert seconds to a human readable string: `165392` → `1d 21h 56m 32s`


## Install


Install with npm, clone this repo, or just download the [`pretty-time.zsh`](pretty-time.zsh) file.

```sh
$ npm install pretty-time-zsh
```


## Usage

```sh
$ date +%s
1407771536

$ ./node_modules/pretty-time-zsh/pretty-time.zsh 165392
1d 21h 56m 32s

# seconds since epoch - yesterday since epoch + 11111 seconds
$ ./node_modules/pretty-time-zsh/pretty-time.zsh "$(date +%s) - $(date -v-1d +%s) + 11111"
1d 3h 5m 11s
```


## CLI

```sh
$ npm install --global pretty-time-zsh
```

```sh
$ pretty-time 165392
1d 21h 56m 32s
```


## Related

See [pretty-ms](https://github.com/sindresorhus/pretty-ms) for a JavaScript version that converts from milliseconds.


## License

MIT © [Sindre Sorhus](http://sindresorhus.com)
