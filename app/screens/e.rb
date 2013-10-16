class E < ProMotion::Screen
  title "E"

  def will_appear
    super

    @view_setup ||= begin
      @button = UIButton.new

      @button.setTitle "Go to view H ('open_modal')", forState: UIControlStateNormal

      @button.frame = [[0, 100], [320, 50]]

      @button.addTarget(self,
        action: :go_to_view_h,
        forControlEvents: UIControlEventTouchUpInside)

      self.view.addSubview(@button)
    end
  end

  def go_to_view_h
    open_modal H.new(nav_bar: true)
  end
end
