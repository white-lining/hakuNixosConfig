{ pkgs, ... }:
{
	plugins.trailblazer = 
	{
		enable = true;

		settings = 
		{
			mappings = 
			{
				nv = 
				{
					motions =
					{
						new_trail_mark = "<leader>tn";
						track_back = "<leader>tb";
						peek_move_next_down = "<leader>tj";
						peek_move_previous_up = "<leader>tk";
						move_to_nearest = "<leader>tm";
						toggle_trail_mark_list = "<leader>tl";
					};
				};
			};
		};
	};
}
