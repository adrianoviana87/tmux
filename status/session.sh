show_session() {
  local index=$1
  local icon=$(get_tmux_option "@catppuccin_session_icon" "")
  local color=$(get_tmux_option "@catppuccin_session_color" "#{?client_prefix,$thm_session_client_prefix,$thm_session_no_client_prefix}")
  local text=$(get_tmux_option "@catppuccin_session_text" "#S")

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}
