# Changelog

## 1.0.0 (2023-10-20)


### ⚠ BREAKING CHANGES

* **buffer.get_range:** visual mode gets current

### Features

* Accept verbatim host matches alongside patterns ([0443a35](https://github.com/linrongbin16/gitlinker.nvim/commit/0443a353d4c2425a0d7b9be00a6ef18c5b69984a))
* add contribution ([#34](https://github.com/linrongbin16/gitlinker.nvim/issues/34)) ([135d990](https://github.com/linrongbin16/gitlinker.nvim/commit/135d9905b915d96fa3f5101f3ea6480ef5852fcb))
* add plugin name to logger ([#39](https://github.com/linrongbin16/gitlinker.nvim/issues/39)) ([9927cb6](https://github.com/linrongbin16/gitlinker.nvim/commit/9927cb65667d324a5506173d12be8c05decf0e28))
* add utils for job result ([#20](https://github.com/linrongbin16/gitlinker.nvim/issues/20)) ([a5da862](https://github.com/linrongbin16/gitlinker.nvim/commit/a5da862a3e9a88c24003e7ab737659771ec02de4))
* allow file changes with warning ([37e5b2b](https://github.com/linrongbin16/gitlinker.nvim/commit/37e5b2be61bfe8dfc7e21939bd029034311a5349)), closes [#43](https://github.com/linrongbin16/gitlinker.nvim/issues/43)
* ci & ut ([#67](https://github.com/linrongbin16/gitlinker.nvim/issues/67)) ([730cdff](https://github.com/linrongbin16/gitlinker.nvim/commit/730cdffb29d58a366a27403dc4986388d3a5f544))
* drop plenary ([#58](https://github.com/linrongbin16/gitlinker.nvim/issues/58)) ([593ab1b](https://github.com/linrongbin16/gitlinker.nvim/commit/593ab1be494ee13c8bc080c846df60a61f12925c))
* embed logger ([d4700b3](https://github.com/linrongbin16/gitlinker.nvim/commit/d4700b3609ed31829c0f425537aeeb7d7a5b21c5))
* generate repo's homepage ([6a59e9c](https://github.com/linrongbin16/gitlinker.nvim/commit/6a59e9ca450ba8c71f4e83918e8130905c316b62))
* optimize file in rev error message ([#21](https://github.com/linrongbin16/gitlinker.nvim/issues/21)) ([3735844](https://github.com/linrongbin16/gitlinker.nvim/commit/373584484b76a2bef9aa94617ae9792293117c30))
* optimize not in git root error ([#22](https://github.com/linrongbin16/gitlinker.nvim/issues/22)) ([b2b8c5b](https://github.com/linrongbin16/gitlinker.nvim/commit/b2b8c5b4a7a208c0461f132e741bbf5450b7661e))
* support command range ([#60](https://github.com/linrongbin16/gitlinker.nvim/issues/60)) ([2c7a0b0](https://github.com/linrongbin16/gitlinker.nvim/commit/2c7a0b077edc8dc06bde6467f23bd9fe4eb9ae04))
* support gitlab, update doc ([#40](https://github.com/linrongbin16/gitlinker.nvim/issues/40)) ([e6bc82d](https://github.com/linrongbin16/gitlinker.nvim/commit/e6bc82dea97189f6f2f8f2eeb06382a1c0cf2278))


### Bug Fixes

* 'plenary.path' on Windows ([#54](https://github.com/linrongbin16/gitlinker.nvim/issues/54)) ([565f186](https://github.com/linrongbin16/gitlinker.nvim/commit/565f186c187475a0041e10c6b3e04eb4bb9a979a))
* add ~ to the allowed repo path chars ([775c8d5](https://github.com/linrongbin16/gitlinker.nvim/commit/775c8d54c187c43bedd7f22941d039422bd67abd)), closes [#36](https://github.com/linrongbin16/gitlinker.nvim/issues/36)
* add missing return true ([fc72db9](https://github.com/linrongbin16/gitlinker.nvim/commit/fc72db97454496397148ec71ba5bdda1a3bbe9a4))
* allow url generation for changed files ([7a2d359](https://github.com/linrongbin16/gitlinker.nvim/commit/7a2d3596a8e61001a5c4c02dfa7c4be230bb0f0b)), closes [#21](https://github.com/linrongbin16/gitlinker.nvim/issues/21)
* **buffer.get_range:** visual mode gets current ([1c49ccb](https://github.com/linrongbin16/gitlinker.nvim/commit/1c49ccbbe76c562e85dfdcf1e6b70a6684cd7a3d))
* dash in repo name ([#42](https://github.com/linrongbin16/gitlinker.nvim/issues/42)) ([47c822f](https://github.com/linrongbin16/gitlinker.nvim/commit/47c822f9885c43cff5208246b536615e293209c7))
* decode space char before extracting repo path ([0af1fb2](https://github.com/linrongbin16/gitlinker.nvim/commit/0af1fb22a9d0661c3eeb7fdd2bba0d9d681b1186))
* do not error out on multiple remotes ([00cbf99](https://github.com/linrongbin16/gitlinker.nvim/commit/00cbf99d3669de52230eceeb4b0a6c49ea771b40))
* do not pick a remote arbitrarily ([3f29108](https://github.com/linrongbin16/gitlinker.nvim/commit/3f29108b014053a37e9a03f16e262e0dce63ed9c))
* Do not use host in patterns ([a9340a7](https://github.com/linrongbin16/gitlinker.nvim/commit/a9340a7a5592c977c730e918d1c584ef4798675f)), closes [#27](https://github.com/linrongbin16/gitlinker.nvim/issues/27)
* **doc:** `require` statments missing dot ([9201073](https://github.com/linrongbin16/gitlinker.nvim/commit/92010735592ba49679609a1760e99c6529b0e361))
* error when missing remote branch ([#18](https://github.com/linrongbin16/gitlinker.nvim/issues/18)) ([5b00559](https://github.com/linrongbin16/gitlinker.nvim/commit/5b00559e70a4a03490cd11c59f3df00866d589b9))
* extract port from remote uri ([b68d832](https://github.com/linrongbin16/gitlinker.nvim/commit/b68d832fd325ff4aa276f9e0e8519ca310a6881f)), closes [#12](https://github.com/linrongbin16/gitlinker.nvim/issues/12)
* fix logger name ([d3fce1a](https://github.com/linrongbin16/gitlinker.nvim/commit/d3fce1ab905b2a01059447510d1964284dff51f9))
* **hosts/gitlab:** add trailing `/` after project name ([7219b9d](https://github.com/linrongbin16/gitlinker.nvim/commit/7219b9ddd73f4fe1dc56ff0393d02d7048e5f727))
* **hosts:** fix error msg when host not found ([38938b2](https://github.com/linrongbin16/gitlinker.nvim/commit/38938b29e892868bbe316d9d4ed5951d1d80788e)), closes [#16](https://github.com/linrongbin16/gitlinker.nvim/issues/16)
* mapping customization ([#49](https://github.com/linrongbin16/gitlinker.nvim/issues/49)) ([29360ad](https://github.com/linrongbin16/gitlinker.nvim/commit/29360ad9d9b1aabfbe322adcaa2ec067eef002a8))
* mappings ([#51](https://github.com/linrongbin16/gitlinker.nvim/issues/51)) ([85794a7](https://github.com/linrongbin16/gitlinker.nvim/commit/85794a7a5d1dfaed7b5bab6165d291b06b729011))
* reverse target_host matching ([399bac3](https://github.com/linrongbin16/gitlinker.nvim/commit/399bac3242ffc1adb80cb8a17f149ff4a754ba53))
* set git root as cwd ([14c52db](https://github.com/linrongbin16/gitlinker.nvim/commit/14c52db7f91b2234a63d5f786256c35cb30539ed))
* support dashes in repository names ([#41](https://github.com/linrongbin16/gitlinker.nvim/issues/41)) ([80a6154](https://github.com/linrongbin16/gitlinker.nvim/commit/80a615489390cce1e9bf40698d1d8b0bd607782b))
* syntax error in lua for loop ([cc2e3d2](https://github.com/linrongbin16/gitlinker.nvim/commit/cc2e3d25c02d688ed577c7710bb812363a7cecbb))
* uri parsing (closes [#2](https://github.com/linrongbin16/gitlinker.nvim/issues/2)) ([f4fd8a7](https://github.com/linrongbin16/gitlinker.nvim/commit/f4fd8a7db9ba9a43fff2409ccc62ecbe93d2ba5f))
* use '&lt;cmd&gt;' instead of ':' for default mappings ([d28028b](https://github.com/linrongbin16/gitlinker.nvim/commit/d28028ba21e8be2d9f290ba69eb08f96a31fa769))
* visual lines ([#57](https://github.com/linrongbin16/gitlinker.nvim/issues/57)) ([b50ca53](https://github.com/linrongbin16/gitlinker.nvim/commit/b50ca53b666cf61facd0ebdd4767d02d2639f720))
* windows symlink ([#64](https://github.com/linrongbin16/gitlinker.nvim/issues/64)) ([bc1c680](https://github.com/linrongbin16/gitlinker.nvim/commit/bc1c6801b4771d6768c6ec6727d0e7669e6aac5f))


### Performance Improvements

* **git:** use 'uv.spawn' for command line IO ([#70](https://github.com/linrongbin16/gitlinker.nvim/issues/70)) ([35aebb7](https://github.com/linrongbin16/gitlinker.nvim/commit/35aebb7f4f8d30b7863742864a93cbe0224e8975))
* try remote branch first ([59ee024](https://github.com/linrongbin16/gitlinker.nvim/commit/59ee0244f8da0ddfe45850cde0e07d4ed448b0b7)), closes [#34](https://github.com/linrongbin16/gitlinker.nvim/issues/34)