class AppDelegate < ProMotion::Delegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    open_tab_bar A.new(nav_bar: true), B.new(nav_bar: true), C.new(nav_bar: true), D.new(nav_bar: true), E.new(nav_bar: true), F.new(nav_bar: true)
    true
  end
end
