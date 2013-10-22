class H < ProMotion::Screen
  title "H"

  def will_appear
    super

    p "F's navigation_controller: #{self.navigation_controller}"

    @view_setup ||= begin
      @test_table_screen_view = self.test_table_screen.view
      self.view.addSubview(@test_table_screen_view)
    end
  end

  def on_appear
    @test_table_screen_view.frame = [[0, 44], [320, 400]]
  end

  def test_table_screen
    @test_table_screen ||= begin
      screen = TestTableScreen.new({
        nav_bar: true
      })
      screen.navigation_controller = self.navigation_controller
      screen
    end
  end

  def on_load
    set_nav_bar_left_button "Close", action: :close_screen, type: UIBarButtonItemStyleDone
  end
end
