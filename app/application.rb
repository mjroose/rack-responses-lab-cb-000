class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.new(2018, 10, 13, 10, 30)

    if time.hour < 12
      resp.write "#{time.hour} Good Morning!"
    else
      resp.write "#{time.hour} Good Afternoon!"
    end

    resp.finish
  end

end
