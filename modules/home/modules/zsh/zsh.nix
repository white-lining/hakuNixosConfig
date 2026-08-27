{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    autocd = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;

    autosuggestion = {
      enable = true;
      strategy = [ "history" "completion" ];
    };

    setOptions = [
      "NO_PROMPT_SP"
      "NO_PROMPT_CR"
    ];

		plugins =
		[
			{
			  name = "zsh-powerlevel10k";
				src = "${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/";
				file = "powerlevel10k.zsh-theme";
			}
		];

	  initExtra = "source ./.p10k.zsh";

  };
	home.file.".p10k.zsh".source = /home/kumoren/projects/nix/hakurenNixosConfig/modules/home/modules/zsh/.p10k.zsh;
}
