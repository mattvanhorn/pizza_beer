class Site
  def self.current_page
    @current_page
  end

  def self.method_missing(meth_name, *args)
    klass = meth_name.to_s.classify
    @current_page = klass.constantize.new
  end
end
