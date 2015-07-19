module Lita
  module Handlers
    class Epoch < Handler
    	  route(/^epoch$/i, :epoch, command: false, help: { "epoch" => "Posts the Epoch time."})
	  
	  def epoch(request)
	      request.reply("The current number of seconds since the Unix Epoch is: #{Time.now.to_i}")
	  end    
    end
    
    Lita.register_handler(Epoch)
  end
end
