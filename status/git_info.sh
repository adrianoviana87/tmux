show_git_info() {
  local index=$1
  local icon=$(get_tmux_option "@catppuccin_git_info_icon" "GIT")
  local color=$(get_tmux_option "@catppuccin_git_info_color" "$thm_git")
  local pwd=$(tmux display-message -p -F "#{pane_current_path}")
  # local gitmux_output=$(gitmux -cfg ~/tmux-files/.gitmux.conf $pwd)
  # if gitmux_output has no content, then there is no git repo
  # if [ -z "$gitmux_output" ]; then
    # return
  # fi
  local text=$(get_tmux_option "@catppuccin_git_info_text" "#(gitmux -cfg ~/tmux-files/.gitmux.conf \"#{pane_current_path}\")")
  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}
