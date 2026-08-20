{ pkgs, ... }:
{
  programs.tmux = {
    enable = true;

    extraConfig = ''
      unbind i
      unbind o
      unbind j
      unbind j
      unbind l
      unbind c
      unbind ;

      bind-key y kill-window
      bind-key u new-window
      bind-key i previous-window
      bind-key o next-window

      bind-key h select-pane -L
      bind-key j select-pane -D
      bind-key k select-pane -U
      bind-key l select-pane -R
      bind-key c break-pane
      bind-key m last-pane
      bind-key v split-window -h

      set -g default-terminal "tmux-256color"
      set -as terminal-features ",xterm-256color:RGB"
      set -g mouse on
      set -sg escape-time 0
    '';

    shortcut = "h";
    prefix = "C-h";
    clock24 = true;
    keyMode = "vi";
    terminal = "screen-256color";
    secureSocket = true;
    disableConfirmationPrompt = true;

    plugins = with pkgs.tmuxPlugins; [
      {
        plugin = nord;
      }
    ];
  };
}
