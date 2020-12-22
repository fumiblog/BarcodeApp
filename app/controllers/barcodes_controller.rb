class BarcodesController < ApplicationController

  def index
     @barcode = Barcode.new(490333304734)
  end

  def show
    @number = 290000000000 + current_user.id
    @barcode = Barcode.new(@number)
  end


end
