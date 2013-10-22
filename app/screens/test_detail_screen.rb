class TestDetailScreen < ProMotion::Screen
  title "Detail"

  attr_accessor :state

  def will_appear
    super

    p "test_detail_screen's navigation_controller: #{self.navigation_controller}"

    title = state
  end
end
