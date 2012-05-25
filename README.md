Compass Animate
===============

This is the new home for 
Eric Meyer's Compass port of
[animate.css][animate]
by [Dan Eden][dan].
It is splitting off from
[compass-animation][ca]
because the majority of that plugin
has moved into [Compass 0.13][c13].
This plugin is for people on the Compass edge,
while that plugin remains useful 
to people who are still using Compass 0.12.

Compass Animate requires
Compass 0.13 (currently in alpha).

```bash
gem install compass-animate
```

```ruby
# config.rb
@require "animate"
```

```scss
// *.scss
@import "animate";
```

[animate]: http://daneden.me/animate/
[dan]: http://daneden.me/
[ca]: https://github.com/ericam/compass-animation
[c13]: http://beta.compass-style.org/reference/compass/css3/animation/

## Usage

You can include any number of named animation keyframes,
each one with or without it's related class name.

The most basic option is simply:

```scss
// Include all the animation keyframes:
@include animate;
```

But you can get much more detailed:

```scss
// Temlate:
// @include animate[-animationName]([$class: false]);

// Include only the flash animation keyframes,
// with associated class name:
@include animate-flash(true);
```

Which will output:

```css
@-moz-keyframes flash { 0% { opacity: 1; }
  25% { opacity: 0; }
  50% { opacity: 1; }
  75% { opacity: 0; }
  100% { opacity: 1; } }

@-webkit-keyframes flash { 0% { opacity: 1; }
  25% { opacity: 0; }
  50% { opacity: 1; }
  75% { opacity: 0; }
  100% { opacity: 1; } }

@-o-keyframes flash { 0% { opacity: 1; }
  25% { opacity: 0; }
  50% { opacity: 1; }
  75% { opacity: 0; }
  100% { opacity: 1; } }

@-ms-keyframes flash { 0% { opacity: 1; }
  25% { opacity: 0; }
  50% { opacity: 1; }
  75% { opacity: 0; }
  100% { opacity: 1; } }

@keyframes flash { 0% { opacity: 1; }
  25% { opacity: 0; }
  50% { opacity: 1; }
  75% { opacity: 0; }
  100% { opacity: 1; } }

.flash { -webkit-animation-name: flash; -moz-animation-name: flash; -ms-animation-name: flash; -o-animation-name: flash; animation-name: flash; }
```

Now you have the named keyframes
for the "flash" animation
and a class name that you can use in your HTML
or extend with Sass.

## Animations

This plugin includes the following animations:

**Attention seekers**
- flash, bounce, shake, tada, swing, wobble, wiggle, pulse

**Flippers** (currently Webkit, Firefox, & IE10 only)
- flip, flipInX, flipOutX, flipInY, flipOutY

**Fading entrances**
- fadeIn, fadeInUp, fadeInDown, fadeInLeft, fadeInRight, 
  fadeInUpBig, fadeInDownBig, fadeInLeftBig, fadeInRightBig

**Fading exits**
- fadeOut, fadeOutUp, fadeOutDown, fadeOutLeft, fadeOutRight,
  fadeOutUpBig, fadeOutDownBig, fadeOutLeftBig, fadeOutRightBig

**Bouncing entrances**
- bounceIn, bounceInDown, bounceInUp, bounceInLeft, bounceInRight

**Bouncing exits**
- bounceOut, bounceOutDown, bounceOutUp, 
  bounceOutLeft, bounceOutRight

**Rotating entrances**
- rotateIn, rotateInDownLeft, rotateInDownRight, 
  rotateInUpLeft, rotateInUpRight

**Rotating exits**
- rotateOut, rotateOutDownLeft, rotateOutDownRight, 
  rotateOutUpLeft, rotateOutUpRight

**Lightspeed**
- lightSpeedIn, lightSpeedOut

**Specials**
- hinge, rollIn, rollOut
