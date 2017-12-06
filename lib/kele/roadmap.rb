module Roadmap

  def get_roadmap(id)
    roadmap_url = "https://www.bloc.io/api/v1/roadmaps/" + id.to_s
    response = self.class.get(roadmap_url, headers: {"Content-type" => "application/json", "authorization" => @auth_token})
    body = JSON.parse(response.body)
  end

  def get_checkpoint(id)
    checkpoint_url = "https://www.bloc.io/api/v1/checkpoints/" + id.to_s
    response = self.class.get(checkpoint_url, headers: {"Content-type" => "application/json", "authorization" => @auth_token})
    body = JSON.parse(response.body)
  end
end
