show_application() {
  local index=$1
  local icon=$(get_tmux_option "@catppuccin_application_icon" "APP:")
  local color=$(get_tmux_option "@catppuccin_application_color" "$thm_application")
  local text=$(get_tmux_option "@catppuccin_application_text" "#W")

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}
