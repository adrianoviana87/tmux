show_window_current_format() {
  local number="#I"
  local color="$thm_window_current_fg"
  local background="$thm_window_current_bg"
  local text_fg="$thm_window_current_text_fg"
  local text_bg="$thm_window_current_text_bg"
  local text="$(get_tmux_option "@catppuccin_window_current_text" "#W")" # use #W for application instead of directory
  local fill="$(get_tmux_option "@catppuccin_window_current_fill" "number")" # number, all, none

  local current_window_format=$( build_window_format "$number" "$color" "$background" "$text" "$fill" "$text_fg" "$text_bg" )

  echo "$current_window_format"
}
