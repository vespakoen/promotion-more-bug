class D < ProMotion::Screen
  title "D"

  def will_appear
    p "D's navigation_controller: #{self.navigation_controller}"
  end
end
