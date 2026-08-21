{ pkgs, ... }:
{
  plugins.cursorline =
  {
    enable = true;

    settings =
    {
      cursorline =
      {
        enable = true;
        number = false;
      };

      cursorword =
      {
        enable = true;
        hl = { underline = true; };
        min_lenght = 2;
      };
    };
  };
}
