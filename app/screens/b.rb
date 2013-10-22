class B < ProMotion::Screen
  title "B"

  def will_appear
    p "B's navigation_controller: #{self.navigation_controller}"
  end
end
