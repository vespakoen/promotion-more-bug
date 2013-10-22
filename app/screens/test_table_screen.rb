class TestTableScreen < ProMotion::TableScreen

  def will_appear
    super

    p "test_table_screen's navigation_controller: #{self.navigation_controller}"
  end

  def table_data
    [{
      title: "Northwest States",
      cells: [
        { title: "Oregon", action: :visit_state, arguments: { state: "oregon" }},
        { title: "Washington", action: :visit_state, arguments: { state: "washington" }}
      ]
    }]
  end

  def visit_state
    open TestDetailScreen.new({
      nav_bar: true
    })
  end

end
