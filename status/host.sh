show_host() {
  local index=$1
  local icon=$(get_tmux_option "@catppuccin_host_icon" "HOST")
  local color=$(get_tmux_option "@catppuccin_host_color" "$thm_host_fg")
  local text=$(get_tmux_option "@catppuccin_host_text" "#H")

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}
