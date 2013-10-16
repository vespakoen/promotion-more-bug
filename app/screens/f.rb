class F < ProMotion::Screen
  title "F"

  def will_appear
    super

    @view_setup ||= begin
      @button = UIButton.new

      @button.setTitle "Go to view G ('open')", forState: UIControlStateNormal

      @button.frame = [[0, 100], [320, 50]]

      @button.addTarget(self,
        action: :go_to_view_g,
        forControlEvents: UIControlEventTouchUpInside)

      self.view.addSubview(@button)
    end
  end

  def go_to_view_g
    open G.new(nav_bar: true)
  end
end
