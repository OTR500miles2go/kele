module Roadmap
  def get_roadmap(chain_id)
    response = self.class.get("/roadmaps/#{chain_id}", headers: {"authorization" => @auth_token})
    JSON.parse(response.body)
  end

  def get_checkpoint(checkpoint_id)
    response = self.class.get("/checkpoints/#{checkpoint_id}", headers: {"authorization" => @auth_token})
    JSON.parse(response.body)
  end
end