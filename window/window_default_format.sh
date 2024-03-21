show_window_default_format() {
  local number="#I"
  local color="$thm_window_default_fg"
  local background="$thm_window_default_bg"
  local text="$(get_tmux_option "@catppuccin_window_default_text" "#W")" # use #W for application instead of directory
  local fill="$(get_tmux_option "@catppuccin_window_default_fill" "number")" # number, all, none
  local text_fg="$thm_window_default_text_fg"
  local text_bg="$thm_window_default_text_bg"

  local default_window_format=$( build_window_format "$number" "$color" "$background" "$text" "$fill" "$text_fg" "$text_bg" )

  echo "$default_window_format"
}
