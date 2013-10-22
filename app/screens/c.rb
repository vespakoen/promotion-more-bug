class C < ProMotion::Screen
  title "C"

  def will_appear
    p "C's navigation_controller: #{self.navigation_controller}"
  end
end
