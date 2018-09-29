# code_morse

A simple 'Morse Code' back and forth converter.

# .... . .-.. .-.. ---  -- --- .-. ... . -.-.--


## Usage
It's realy simple!


### In your console:
1. to morse code
```$ bin/code_morse your string here```

2. from morse code
```$ bin/code_morse "-.-- --- ..- .-.  -- --- .-. ... .  -.-. --- -.. .  .... . .-. ."```
*NOTE: put morse code inside quotes; this will be fixed soon! ;)*

### In your code:
```
> require 'code_morse'

> CodeMorse.new.call('Hello!')
 => ".... . .-.. .-.. --- -.-.--"
> CodeMorse.new.call(".... . .-.. .-.. --- -.-.--")
 => "hello!"
 ```
