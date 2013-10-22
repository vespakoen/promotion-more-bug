class A < ProMotion::Screen
  title "A"

  def will_appear
    p "A's navigation_controller: #{self.navigation_controller}"
  end
end
