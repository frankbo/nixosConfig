{pkgs, ...}:
''

# Configuration for Alacritty, the GPU enhanced terminal emulator.

# Any items in the `env` entry below will be added as
# environment variables. Some entries may override variables
# set by alacritty itself.
#env:
  # TERM variable
  #
  # This value is used to set the `$TERM` environment variable for
  # each instance of Alacritty. If it is not present, alacritty will
  # check the local terminfo database and use 'alacritty' if it is
  # available, otherwise 'xterm-256color' is used.
  #TERM: xterm-256color

window:
  # Window dimensions (changes require restart)
  #
  # Specified in number of columns/lines, not pixels.
  # If both are `0`, this setting is ignored.
  dimensions:
    columns: 80
    lines: 24

  # Window padding (changes require restart)
  #
  # Blank space added around the window in pixels. This padding is scaled
  # by DPI and the specified value is always added at both opposing sides.
  padding:
    x: 2
    y: 2

  # Spread additional padding evenly around the terminal content.
  dynamic_padding: false

  # Window decorations
  #
  # Available values:
  # - `full`: Window with title bar and title bar buttons
  # - `none`: Window without title bar, rounded corners, or drop shadow
  # - `transparent`: Window with title bar with transparent background and title
  #   bar buttons
  # - `buttonless`: Window with title bar with transparent background and no
  #   title bar buttons
  # Window decorations
  #
  # Values for `decorations`:
  #     - full: Borders and title bar
  #     - none: Neither borders nor title bar
  #     - buttonless: Title bar, transparent background and title bar buttons
  #     - transparent: Title bar, transparent background, but no title bar buttons
  decorations: none

  # When true, alacritty starts maximized.
  startup_mode: Maximized
  
scrolling:
  # Maximum number of lines in the scrollback buffer.
  # Specifying '0' will disable scrolling.
  history: 10000

  # Number of lines the viewport will move for every line scrolled when
  # scrollback is enabled (history > 0).
  multiplier: 3

  # Faux Scrolling
  #
  # The `faux_multiplier` setting controls the number of lines the terminal
  # should scroll when the alternate screen buffer is active. This is used
  # to allow mouse scrolling for applications like `man`.
  #
  # Specifying `0` will disable faux scrolling.
  faux_multiplier: 3

  # Scroll to the bottom when new text is written to the terminal.
  auto_scroll: false

# Spaces per Tab (changes require restart)
#
# This setting defines the width of a tab in cells.
#
# Some applications, like Emacs, rely on knowing about the width of a tab.
# To prevent unexpected behavior in these applications, it's also required to
# change the `it` value in terminfo when altering this setting.
tabspaces: 8

# Font configuration (changes require restart)
font:
  # Normal (roman) font face
  normal:
    family: Menlo
    # The `style` can be specified to pick a specific face.
    #style: Regular

  # Bold font face
  bold:
    family: Menlo
    # The `style` can be specified to pick a specific face.
    #style: Bold

  # Italic font face
  italic:
    family: Menlo
    # The `style` can be specified to pick a specific face.
    #style: Italic

  # Point size
  size: 14.0

  # Offset is the extra space around each character. `offset.y` can be thought of
  # as modifying the line spacing, and `offset.x` as modifying the letter spacing.
  offset:
    x: 0
    y: 0

  # Glyph offset determines the locations of the glyphs within their cells with
  # the default being at the bottom. Increasing `x` moves the glyph to the right,
  # increasing `y` moves the glyph upwards.
  glyph_offset:
    x: 0
    y: 0

  # Thin stroke font rendering (OS X only)
  #
  # Thin strokes are suitable for retina displays, but for non-retina screens
  # it is recommended to set `use_thin_strokes` to `false`
  #
  # macOS >= 10.14.x:
  #
  # If the font quality on non-retina display looks bad then set
  # `use_thin_strokes` to `true` and enable font smoothing by running the
  # following command:
  #   `defaults write -g CGFontRenderingFontSmoothingDisabled -bool NO`
  #
  # This is a global setting and will require a log out or restart to take
  # effect.
  use_thin_strokes: true

# Display the time it takes to redraw each frame.
debug.render_timer: false

# Keep the log file after quitting Alacritty.
debug.persistent_logging: false

# If `true`, bold text is drawn using the bright color variants.
draw_bold_text_with_bright_colors: true

# Colors (Tomorrow Night Bright)
colors:
  # Default colors
  primary:
    background: '0x000000'
    foreground: '0xeaeaea'

    # Bright and dim foreground colors
    #
    # The dimmed foreground color is calculated automatically if it is not present.
    # If the bright foreground color is not set, or `draw_bold_text_with_bright_colors`
    # is `false`, the normal foreground color will be used.
    #dim_foreground: '0x9a9a9a'
    #bright_foreground: '0xffffff'

  # Cursor colors
  #
  # Colors which should be used to draw the terminal cursor. If these are unset,
  # the cursor color will be the inverse of the cell color.
  #cursor:
  #  text: '0x000000'
  #  cursor: '0xffffff'

  # Normal colors
  normal:
    black:   '0x000000'
    red:     '0xd54e53'
    green:   '0xb9ca4a'
    yellow:  '0xe6c547'
    blue:    '0x7aa6da'
    magenta: '0xc397d8'
    cyan:    '0x70c0ba'
    white:   '0xffffff'

  # Bright colors
  bright:
    black:   '0x666666'
    red:     '0xff3334'
    green:   '0x9ec400'
    yellow:  '0xe7c547'
    blue:    '0x7aa6da'
    magenta: '0xb77ee0'
    cyan:    '0x54ced6'
    white:   '0xffffff'

  # Dim colors
  #
  # If the dim colors are not set, they will be calculated automatically based
  # on the `normal` colors.
  dim:
    black:   '0x333333'
    red:     '0xf2777a'
    green:   '0x99cc99'
    yellow:  '0xffcc66'
    blue:    '0x6699cc'
    magenta: '0xcc99cc'
    cyan:    '0x66cccc'
    white:   '0xdddddd'

  # Indexed Colors
  #
  # The indexed colors include all colors from 16 to 256.
  # When these are not set, they're filled with sensible defaults.
  #indexed_colors:
  #  - { index: 16, color: '0x000000' }

# Visual Bell
#
# Any time the BEL code is received, Alacritty "rings" the visual bell. Once
# rung, the terminal background will be set to white and transition back to the
# default background color. You can control the rate of this transition by
# setting the `duration` property (represented in milliseconds). You can also
# configure the transition function by setting the `animation` property.
#
# Values for `animation`:
#   - Ease
#   - EaseOut
#   - EaseOutSine
#   - EaseOutQuad
#   - EaseOutCubic
#   - EaseOutQuart
#   - EaseOutQuint
#   - EaseOutExpo
#   - EaseOutCirc
#   - Linear
#
# Specifying a `duration` of `0` will disable the visual bell.
visual_bell:
  animation: EaseOutExpo
  duration: 0

# Background opacity
#
# Window opacity as a floating point number from `0.0` to `1.0`.
# The value `0.0` is completely transparent and `1.0` is opaque.
background_opacity: 1.0

# Mouse bindings
#
# Available fields:
# - mouse
# - action
# - mods (optional)
#
# Values for `mouse`:
# - Middle
# - Left
# - Right
# - Numeric identifier such as `5`
#
# All available `mods` and `action` values are documented in the key binding
# section.
mouse_bindings:
  - { mouse: Middle, action: PasteSelection }

mouse:
  # Click settings
  #
  # The `double_click` and `triple_click` settings control the time
  # alacritty should wait for accepting multiple clicks as one double
  # or triple click.
  double_click: { threshold: 300 }
  triple_click: { threshold: 300 }

  # If this is `true`, the cursor is temporarily hidden when typing.
  hide_when_typing: false

  url:
    # URL launcher
    #
    # This program is executed when clicking on a text which is recognized as a URL.
    # The URL is always added to the command as the last parameter.
    launcher: open

    # URL modifiers
    #
    # These are the modifiers that need to be held down for opening URLs when clicking
    # on them. The available modifiers are documented in the key binding section.
    #modifiers: Control|Shift

selection:
  semantic_escape_chars: ",│`|:\"' ()[]{}<>"

  # When set to `true`, selected text will be copied to the primary clipboard.
  save_to_clipboard: false

cursor:
  # Cursor style
  #
  # Values for 'style':
  #   - ▇ Block
  #   - _ Underline
  #   - | Beam
  style: Block

  # If this is `true`, the cursor will be rendered as a hollow box when the
  # window is not focused.
  unfocused_hollow: true

# Live config reload (changes require restart)
live_config_reload: true

# Shell
#
# You can set `shell.program` to the path of your favorite shell, e.g. `/bin/fish`.
# Entries in `shell.args` are passed unmodified as arguments to the shell.
#shell:
#  program: /bin/bash
#  args:
#    - --login

# Key bindings
#
# Key bindings are specified as a list of objects. Each binding will specify
# a key and modifiers required to trigger it, terminal modes where the binding
# is applicable, and what should be done when the key binding fires. It can
# either send a byte sequnce to the running application (`chars`), execute
# a predefined action (`action`) or fork and execute a specified command plus
# arguments (`command`).
#
# Example:
#   `- { key: V, mods: Command, action: Paste }`
#
# Available fields:
#   - key
#   - mods (optional)
#   - chars | action | command (exactly one required)
#   - mode (optional)
#
# Values for `key`:
#   - `A` -> `Z`
#   - `F1` -> `F12`
#   - `Key1` -> `Key0`
#
#   A full list with available key codes can be found here:
#   https://docs.rs/glutin/*/glutin/enum.VirtualKeyCode.html#variants
#
#   Instead of using the name of the keys, the `key` field also supports using
#   the scancode of the desired key. Scancodes have to be specified as a
#   decimal number.
#   This command will allow you to display the hex scancodes for certain keys:
#     `showkey --scancodes`
#
# Values for `mods`:
#   - Command
#   - Control
#   - Shift
#   - Alt
#
#   Multiple `mods` can be combined using `|` like this: `mods: Control|Shift`.
#   Whitespace and capitalization is relevant and must match the example.
#
# Values for `chars`:
#   The `chars` field writes the specified string to the terminal. This makes
#   it possible to pass escape sequences.
#   To find escape codes for bindings like `PageUp` ("\x1b[5~"), you can run
#   the command `showkey -a` outside of tmux.
#   Note that applications use terminfo to map escape sequences back to
#   keys. It is therefore required to update the terminfo when
#   changing an escape sequence.
#
# Values for `action`:
#   - Paste
#   - PasteSelection
#   - Copy
#   - IncreaseFontSize
#   - DecreaseFontSize
#   - ResetFontSize
#   - ScrollPageUp
#   - ScrollPageDown
#   - ScrollToTop
#   - ScrollToBottom
#   - ClearHistory
#   - Hide
#   - Quit
#   - ClearLogNotice
#
# Values for `command`:
#   The `command` field must be a map containing a `program` string and
#   an `args` array of command line parameter strings.
#
#   Example:
#       `command: { program: "alacritty", args: ["-e", "vttest"] }`
#
# Values for `mode`:
#   - ~AppCursor
#   - AppCursor
#   - ~AppKeypad
#   - AppKeypad
key_bindings:
  - { key: V,        mods: Command, action: Paste                        }
  - { key: C,        mods: Command, action: Copy                         }
  - { key: Paste,                   action: Paste                        }
  - { key: Copy,                    action: Copy                         }
  - { key: H,        mods: Command, action: Hide                         }
  - { key: Q,        mods: Command, action: Quit                         }
  - { key: W,        mods: Command, action: Quit                         }
  - { key: Home,                    chars: "\x1bOH",   mode: AppCursor   }
  - { key: Home,                    chars: "\x1b[H",   mode: ~AppCursor  }
  - { key: End,                     chars: "\x1bOF",   mode: AppCursor   }
  - { key: End,                     chars: "\x1b[F",   mode: ~AppCursor  }
  - { key: Key0,     mods: Command, action: ResetFontSize                }
  - { key: Equals,   mods: Command, action: IncreaseFontSize             }
  - { key: Minus,    mods: Command, action: DecreaseFontSize             }
  - { key: K,        mods: Command, action: ClearHistory                 }
  - { key: K,        mods: Command, chars: "\x0c"                        }
  - { key: L,        mods: Control, action: ClearLogNotice               }
  - { key: L,        mods: Control, chars: "\x0c"                        }
  - { key: PageUp,   mods: Shift,   chars: "\x1b[5;2~"                   }
  - { key: PageUp,   mods: Control, chars: "\x1b[5;5~"                   }
  - { key: PageUp,                  chars: "\x1b[5~"                     }
  - { key: PageDown, mods: Shift,   chars: "\x1b[6;2~"                   }
  - { key: PageDown, mods: Control, chars: "\x1b[6;5~"                   }
  - { key: PageDown,                chars: "\x1b[6~"                     }
  - { key: Tab,      mods: Shift,   chars: "\x1b[Z"                      }
  - { key: Back,                    chars: "\x7f"                        }
  - { key: Back,     mods: Alt,     chars: "\x1b\x7f"                    }
  - { key: Insert,                  chars: "\x1b[2~"                     }
  - { key: Delete,                  chars: "\x1b[3~"                     }
  - { key: Left,     mods: Shift,   chars: "\x1b[1;2D"                   }
  - { key: Left,     mods: Control, chars: "\x1b[1;5D"                   }
  - { key: Left,     mods: Alt,     chars: "\x1b[1;3D"                   }
  - { key: Left,                    chars: "\x1b[D",   mode: ~AppCursor  }
  - { key: Left,                    chars: "\x1bOD",   mode: AppCursor   }
  - { key: Right,    mods: Shift,   chars: "\x1b[1;2C"                   }
  - { key: Right,    mods: Control, chars: "\x1b[1;5C"                   }
  - { key: Right,    mods: Alt,     chars: "\x1b[1;3C"                   }
  - { key: Right,                   chars: "\x1b[C",   mode: ~AppCursor  }
  - { key: Right,                   chars: "\x1bOC",   mode: AppCursor   }
  - { key: Up,       mods: Shift,   chars: "\x1b[1;2A"                   }
  - { key: Up,       mods: Control, chars: "\x1b[1;5A"                   }
  - { key: Up,       mods: Alt,     chars: "\x1b[1;3A"                   }
  - { key: Up,                      chars: "\x1b[A",   mode: ~AppCursor  }
  - { key: Up,                      chars: "\x1bOA",   mode: AppCursor   }
  - { key: Down,     mods: Shift,   chars: "\x1b[1;2B"                   }
  - { key: Down,     mods: Control, chars: "\x1b[1;5B"                   }
  - { key: Down,     mods: Alt,     chars: "\x1b[1;3B"                   }
  - { key: Down,                    chars: "\x1b[B",   mode: ~AppCursor  }
  - { key: Down,                    chars: "\x1bOB",   mode: AppCursor   }
  - { key: F1,                      chars: "\x1bOP"                      }
  - { key: F2,                      chars: "\x1bOQ"                      }
  - { key: F3,                      chars: "\x1bOR"                      }
  - { key: F4,                      chars: "\x1bOS"                      }
  - { key: F5,                      chars: "\x1b[15~"                    }
  - { key: F6,                      chars: "\x1b[17~"                    }
  - { key: F7,                      chars: "\x1b[18~"                    }
  - { key: F8,                      chars: "\x1b[19~"                    }
  - { key: F9,                      chars: "\x1b[20~"                    }
  - { key: F10,                     chars: "\x1b[21~"                    }
  - { key: F11,                     chars: "\x1b[23~"                    }
  - { key: F12,                     chars: "\x1b[24~"                    }
  - { key: F1,       mods: Shift,   chars: "\x1b[1;2P"                   }
  - { key: F2,       mods: Shift,   chars: "\x1b[1;2Q"                   }
  - { key: F3,       mods: Shift,   chars: "\x1b[1;2R"                   }
  - { key: F4,       mods: Shift,   chars: "\x1b[1;2S"                   }
  - { key: F5,       mods: Shift,   chars: "\x1b[15;2~"                  }
  - { key: F6,       mods: Shift,   chars: "\x1b[17;2~"                  }
  - { key: F7,       mods: Shift,   chars: "\x1b[18;2~"                  }
  - { key: F8,       mods: Shift,   chars: "\x1b[19;2~"                  }
  - { key: F9,       mods: Shift,   chars: "\x1b[20;2~"                  }
  - { key: F10,      mods: Shift,   chars: "\x1b[21;2~"                  }
  - { key: F11,      mods: Shift,   chars: "\x1b[23;2~"                  }
  - { key: F12,      mods: Shift,   chars: "\x1b[24;2~"                  }
  - { key: F1,       mods: Control, chars: "\x1b[1;5P"                   }
  - { key: F2,       mods: Control, chars: "\x1b[1;5Q"                   }
  - { key: F3,       mods: Control, chars: "\x1b[1;5R"                   }
  - { key: F4,       mods: Control, chars: "\x1b[1;5S"                   }
  - { key: F5,       mods: Control, chars: "\x1b[15;5~"                  }
  - { key: F6,       mods: Control, chars: "\x1b[17;5~"                  }
  - { key: F7,       mods: Control, chars: "\x1b[18;5~"                  }
  - { key: F8,       mods: Control, chars: "\x1b[19;5~"                  }
  - { key: F9,       mods: Control, chars: "\x1b[20;5~"                  }
  - { key: F10,      mods: Control, chars: "\x1b[21;5~"                  }
  - { key: F11,      mods: Control, chars: "\x1b[23;5~"                  }
  - { key: F12,      mods: Control, chars: "\x1b[24;5~"                  }
  - { key: F1,       mods: Alt,     chars: "\x1b[1;6P"                   }
  - { key: F2,       mods: Alt,     chars: "\x1b[1;6Q"                   }
  - { key: F3,       mods: Alt,     chars: "\x1b[1;6R"                   }
  - { key: F4,       mods: Alt,     chars: "\x1b[1;6S"                   }
  - { key: F5,       mods: Alt,     chars: "\x1b[15;6~"                  }
  - { key: F6,       mods: Alt,     chars: "\x1b[17;6~"                  }
  - { key: F7,       mods: Alt,     chars: "\x1b[18;6~"                  }
  - { key: F8,       mods: Alt,     chars: "\x1b[19;6~"                  }
  - { key: F9,       mods: Alt,     chars: "\x1b[20;6~"                  }
  - { key: F10,      mods: Alt,     chars: "\x1b[21;6~"                  }
  - { key: F11,      mods: Alt,     chars: "\x1b[23;6~"                  }
  - { key: F12,      mods: Alt,     chars: "\x1b[24;6~"                  }
  - { key: F1,       mods: Command, chars: "\x1b[1;3P"                   }
  - { key: F2,       mods: Command, chars: "\x1b[1;3Q"                   }
  - { key: F3,       mods: Command, chars: "\x1b[1;3R"                   }
  - { key: F4,       mods: Command, chars: "\x1b[1;3S"                   }
  - { key: F5,       mods: Command, chars: "\x1b[15;3~"                  }
  - { key: F6,       mods: Command, chars: "\x1b[17;3~"                  }
  - { key: F7,       mods: Command, chars: "\x1b[18;3~"                  }
  - { key: F8,       mods: Command, chars: "\x1b[19;3~"                  }
  - { key: F9,       mods: Command, chars: "\x1b[20;3~"                  }
  - { key: F10,      mods: Command, chars: "\x1b[21;3~"                  }
  - { key: F11,      mods: Command, chars: "\x1b[23;3~"                  }
  - { key: F12,      mods: Command, chars: "\x1b[24;3~"                  }
  - { key: NumpadEnter,             chars: "\n"                          }

''
