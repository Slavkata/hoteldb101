class ClientsController < ApplicationController
  def index
    @clients = Client.all
    render json: @clients
  end

  def create
    client = params['client']
    @client = Client.new do |c|
      c.Name = client['Name']
      c.LastName = client['LastName']
      c.Room_id = client['Room_id']
      c.Price_id = client['Price_id']
      c.Registration_date = client['Registration_date']
      c.Leaving_date = client['Leaving_date']
      c.EGN = client['EGN']
    end

    @client.save
  end

  def delete
    client = params["client"]

    @client = Client.find_by(:EGN => client['EGN'])

    if !@client.nil?
      Client.destroy(@client.id)
    end
  end

  def update
    client = params["client"]
    @client = Client.find_by(:EGN => client['EGN'])
    if !@client.nil?
      Client.update(@client.id, params["update_client"])
    end
  end
end
