# hubot-logo

Fetch company logo images via the clearbit logo api.

See [`src/hubot-logo.coffee`](src/hubot-logo.coffee) for full documentation.

## Installation

[![NPM](https://nodei.co/npm/hubot-logo.png?compact=true)](https://nodei.co/npm/hubot-logo/)

In hubot project repo, run:

`npm install hubot-logo --save`

Then add **hubot-logo** to your `external-scripts.json`:

```json
[
  "hubot-logo"
]
```

## Sample Interaction

```
user1>> hubot logo stripe.com
hubot>> https://logo.clearbit.com/stripe.com
```
