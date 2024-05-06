class PackagesController < ApplicationController
  layout 'package'

  def index
    @packages = Package.all
  end
end
