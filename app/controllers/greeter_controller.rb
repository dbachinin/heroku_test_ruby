class GreeterController < ApplicationController
  def hello
  	rand_names = ["Alex", "John", "Michael"]
  	@name = rand_names.sample
  	@time = Time.now
  	@times ||=0
  	@times +=1
  end
  def goodbye
  end

end
