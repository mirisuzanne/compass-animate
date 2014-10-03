*I'm no longer actively maintaining this project.
If you use it and want to take over maintenance, 
[let me know](https://github.com/ericam/compass-animate/issues/16)!*

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
gem install animate --pre
```

```ruby
# config.rb
require "animate"
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

We try our best to stay up to date
with the latest from Dan Eden,
but we've also made a few changes
and expanded on his base.

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
// @include animate[-animationName]([$sub: all, $class: false]);
```

Let's say you want just the "flash" animation:

```scss
// Include only the flash animation keyframes
@include animate-flash;
```

But you also want a pre-defined class
that calls that animation:

```scss
// Include only the flash animation keyframes,
// with associated class name:
@include animate-flash($class:true);
```

That will output:

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

.flash {
  -webkit-animation-name: flash;
     -moz-animation-name: flash;
      -ms-animation-name: flash;
       -o-animation-name: flash;
          animation-name: flash; }
```

Now you have the named keyframes
for the "flash" animation
and a class name that you can use in your HTML
or extend with Sass.

You can also set `$class` to `silent`
and get `%flash`
which can be used with `@extends`
but won't show up in the css.

There are a few shortcuts as well:

```scss
// this:
@include animate-fadeIn;
@include animate-fadeOut;
@include animate-fadeOutBig;

// is equal to this:
@include animate-fade(in-only out-only outBig);
```

If you want all the fadeOut animations:

```scss
@include animate-fade(out);
```

## Animations

This plugin includes the following _mixins_ & animations:

**Attention**
- _attention_
- flash, bounce, shake, tada, swing, wobble, wiggle, pulse

**Flip** (currently Webkit, Firefox, & IE10 only)
- flip, _flipX_, _flipY_
- _flipIn_, flipInX, flipInY
- _flipOut_, flipOutX, flipOutY

**Fade**
- _fade_
- fadeIn, fadeInUp, fadeInDown, fadeInLeft, fadeInRight,
  fadeInUpBig, fadeInDownBig, fadeInLeftBig, fadeInRightBig
- fadeOut, fadeOutUp, fadeOutDown, fadeOutLeft, fadeOutRight,
  fadeOutUpBig, fadeOutDownBig, fadeOutLeftBig, fadeOutRightBig

**Bounce**
- _bounce_
- bounceIn, bounceInDown, bounceInUp, bounceInLeft, bounceInRight
- bounceOut, bounceOutDown, bounceOutUp, bounceOutLeft, bounceOutRight

**Roll**
- _roll_
- rollIn
- rollOut

**Rotate**
- _rotate_
- rotateIn, rotateInDownLeft, rotateInDownRight,
  rotateInUpLeft, rotateInUpRight
- rotateOut, rotateOutDownLeft, rotateOutDownRight,
  rotateOutUpLeft, rotateOutUpRight

**LightSpeed**
- _lightSpeed_
- lightSpeedIn
- lightSpeedOut

**Special**
- _special_
- hinge

**Slide**
- _slide_
- slideInDown, slideInLeft, slideInRight
- slideOutUp, slideOutLeft, slideOutRight
