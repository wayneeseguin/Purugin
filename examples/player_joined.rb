purugin('PlayerJoined', 0.1) do
  def on_enable
    # Tell everyone in players world that they have joined
    event(:player_join) do |e|
      e.player.world.players.each do |p| 
        p.send_message "Player #{e.player.name} has joined"
      end
    end

    # Tell everyone in players world that they have quit
    event(:player_quit) do |e|
      e.player.world.players.each do |p| 
        p.send_message "Player #{e.player.name} has quit"
      end
    end
  end
end
