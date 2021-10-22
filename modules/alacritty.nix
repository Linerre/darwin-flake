{pkgs, ...}:
{
  home-manager.users.errenil.programs.alacritty = {
    enable = true;
    settings = {
      live_config_reload = true;
      mouse.hide_when_typing = true;
      # use_thin_strok = true;
      cursor.style = "Block";
      font = {
        size = 18;
        normal.family = "SF Mono";
        normal.style = "Regular";
        bold.family = "SF Mono";
        bold.style = "Bold";
        italic.family = "SF Mono";
        italic.style = "Italic";
      };
      colors = {
        primary.background = "#edeeed";
        primary.foreground = "#383e3f";
        # cursor.cursor = "";
        primary.dim_foreground = "#e0e0e0";
        primary.bright_foreground = "#595959";
        normal = {
          black = "#383e3f";
          red = "#e84c58";
          green = "#13665f";
          yellow = "#e36b3f";
          blue = "#3b84cc";
          magenta = "#a9779c";
          cyan = "#6facb3";
          white = "#7c878a";
        };
        bright = {
          black = "#383e3f";
          red = "#e84c58";
          green = "#39854c";
          yellow = "#b57614";
          blue = "#53859d";
          magenta = "#b16286";
          cyan = "#458588";
          white = "#2b2b2f";
        };
        key_bindings = [
         { key = "A";         mods = "Alt";      chars = "\\x1ba"; }
         { key = "B";         mods = "Alt";      chars = "\\x1bb"; }
         { key = "C";         mods = "Alt";      chars = "\\x1bc"; }
         { key = "D";         mods = "Alt";      chars = "\\x1bd"; }
         { key = "E";         mods = "Alt";      chars = "\\x1be"; }
         { key = "F";         mods = "Alt";      chars = "\\x1bf"; }
         { key = "G";         mods = "Alt";      chars = "\\x1bg"; }
         { key = "H";         mods = "Alt";      chars = "\\x1bh"; }
         { key = "I";         mods = "Alt";      chars = "\\x1bi"; }
         { key = "G";         mods = "Alt";      chars = "\\x1bg"; }
         { key = "K";         mods = "Alt";      chars = "\\x1bk"; }
         { key = "L";         mods = "Alt";      chars = "\\x1bl"; }
         { key = "M";         mods = "Alt";      chars = "\\x1bm"; }
         { key = "N";         mods = "Alt";      chars = "\\x1bn"; }
         { key = "O";         mods = "Alt";      chars = "\\x1bo"; }
         { key = "P";         mods = "Alt";      chars = "\\x1bp"; }
         { key = "Q";         mods = "Alt";      chars = "\\x1bq"; }
         { key = "R";         mods = "Alt";      chars = "\\x1br"; }
         { key = "S";         mods = "Alt";      chars = "\\x1bs"; }
         { key = "T";         mods = "Alt";      chars = "\\x1bt"; }
         { key = "U";         mods = "Alt";      chars = "\\x1bu"; }
         { key = "V";         mods = "Alt";      chars = "\\x1bv"; }
         { key = "W";         mods = "Alt";      chars = "\\x1bw"; }
         { key = "X";         mods = "Alt";      chars = "\\x1bx"; }
         { key = "Y";         mods = "Alt";      chars = "\\x1by"; }
         { key = "Z";         mods = "Alt";      chars = "\\x1bz"; }
        ];
      };
    };
  };
}
