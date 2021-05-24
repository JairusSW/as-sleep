# AS-Sleep 😴

## Installation

```bash
~ npm install as-sleep
```

## Features
- Works on all platforms
- Fast and small
- Made in pure AS
- Synchronous/Callback

## Usage

**Synchronous**
```js
import { sleep } from 'as-sleep'

console.log('Sleeping for 2.3 seconds.')

sleep(2300)
// Sleep for 2.3 seconds 💤
console.log('Slept for 2.3 seconds.)
```

**Callback**
```js
import { sleepCallback } from 'as-sleep'

console.log('Sleeping for 2.3 seconds.')

sleepCallback(() => {
    // Sleep for 2.3 seconds 💤
    console.log('Slept for 2.3 seconds.)
}, 2300)
```