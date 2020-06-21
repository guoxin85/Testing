class TestappsController < ApplicationController

  def index
    @testapp_items = Testapp.all
  end

end
