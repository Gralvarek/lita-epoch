require "spec_helper"

describe Lita::Handlers::Epoch, lita_handler: true do
	it { is_expected.to route("epoch") }
	it { is_expected.to route("EPOCH") }
	it { is_expected.to route("Epoch") }
	it "should respond with the correct Epoch time" do
	   time = Time.now.to_i
	   send_message("epoch")
	   expect(replies.last).to eq("The current number of seconds since the Unix Epoch is: #{time}")
	end
end
