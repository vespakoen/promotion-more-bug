class H < ProMotion::Screen
  title "H"

  def on_load
    set_nav_bar_left_button "Close", action: :close_screen, type: UIBarButtonItemStyleDone
  end
end
