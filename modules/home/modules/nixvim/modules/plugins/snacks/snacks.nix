{ pkgs, ... }:
{
	plugins.snacks =
	{
		enable = true;

		settings =
		{

			indent =
			{
				enabled = true;
			};

			statuscolumn =
			{
				enabled = true;
			};

			# input =
			# {
			# 	enabled = true;
			# 	position = "float";
			# 	border = true;
			# 	title_pos = "center";
			# };
			#
			# dim =
			# {
			# 	enabled = true;
			# 	scope = 
			# 	{
			# 		min_size = 5;
			# 		max_size = 20;
			# 		siblings = true;
			# 	};
			# };
			#
			# animate = 
			# {
			# 	enabled = true;
			# 	easing = "outQuad";
			# 	duration = 
			# 	{
			# 		step = 20;
			# 		total = 300;
			# 	};
			# };

		};
	};
}
