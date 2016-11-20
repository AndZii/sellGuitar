class MainController < ApplicationController
  before_action :create_message_object
    
  def create_message_object 
    @message = Message.new
  end
    
    
  def home
    @title = "Top Rated Musical Instroment Buyers | We Always Pay More"
    @second_title = "Fast, fair, secured way to sell your musical instruments in New York City area. "
    @third_title = "It has never been so ease and conviniant to sell your items in NYC. Call us right now! "
    @description = "We buy all kinds of musicas instruments: guitars, basses, pianos, drums, DJ equipment, we will buy your old ukulele and french horn!"
    @picture = "500_1.jpg"
    render 'template'  
  end

  def contacts
    @title = "Where To Sell Musical Instruments In New York City"
  end
    
  def guitars
    @title = "We Buy Guitars in NYC | You Will Never Find Better Deal"
    @second_title = "Top dollar paid for your musical instrumenst. "
    @third_title = "Best deals in New York City"
    @description = "We buy all kinds of guitars. Electric, acoustic etc. If You want to get best deal, you are on the right page. Call us right now."
    @picture = "500_1.jpg"
    render 'template'  
  end  

  def basses
    @title = "We Buy Basses in New York City"
    @second_title = "We buy Basses and Electric guitars. We always pay more."
    @third_title = "Top rated musical instrument buyers in NYC."
    @description = "If you are looking for the place to sell your bass or any other musical instrument, you just have found the best . Call us right now. Top dollar always paid."
    @picture = "500_1.jpg"
    render 'template'  
  end  
    
  def amps
    @title = "We buy all kind of amplifires in New York City area"
    @second_title = "You will never have better deal. We always pay more."
    @third_title = "Top dollar paid for amplifires in New York."
    @description = "You will never find better deal on your musical instruments. Do not waste your time, call us right now. Top dollar paid for all kind of amplifires in New York."
    @picture = "500_1.jpg"
    render 'template'  
  end 
    
  def pedals
    @title = "We Buy guitar pedals in NYC"
    @second_title = "Top dollar paid for your musical equipment. "
    @third_title = "You will never find better deal, call us right now"
    @description = "If you have any guitar pedals thet you are not using anymore, may be it's the best time to get rid of them. We always pay more."
    @picture = "500_1.jpg"
    render 'template'  
  end 
    
  def dj_equipment
    @title = "Looking for place to sell your DJ equipment? We are here for you."
    @second_title = "We buy all kinds of DJ equipment. Used and New. "
    @third_title = "Top dollar paid for DJ items in New York. Call us right now."
    @description = "We are your best chance to get top cash for your used and new DJ equipment. Do not waste your time, secure your money. We always pay more."
    @picture = "500_1.jpg"
    render 'template'  
  end      
    
  def messages
      render json: Message.all
  end      
    
  def message
      @msg = Message.new({:name => params[:message][:name],
          :email => params[:message][:email],
          :phone_number => params[:message][:phone_number],
          :message => params[:message][:message]})
      @msg.save
     UserMailserMailer.send_mail(@msg.name,
         @msg.email,
         @msg.phone_number,
         @msg.message).deliver_now
     redirect_to root_path  
  end        
end
