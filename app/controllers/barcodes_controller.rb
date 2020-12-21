class BarcodesController < ApplicationController
  
  
  
  def index
     @barcode = Barcode.new(490333304734)
  end
end
