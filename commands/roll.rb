module RollCommands
  def self.register(bot)

    # Dados somados (2d6)
    bot.message(contains: /\d+d\d+/i) do |event|
next unless event.message.content.match?(/\A(\d+d\d+(\+\d+)?\s*)+\z/i)
dados = event.message.content.scan(/\d+d\d+(?:\+\d+)?/i)       

ultimo_total = 0
ultimo_quantidade = 0
ultimo_lados = 0

resultados_finais = dados.map do |dado|  
    partes = dado.split("d")
    quantidade = partes[0].to_i
    lados = partes[1].to_i
    rolls = Array.new(quantidade) { rand(1..lados) }
    modificador = dado.match(/\+(\d+)/)
    mod = modificador ? modificador[1].to_i : 0
    total = rolls.sum + mod
    ultimo_total = total
    ultimo_quantidade = quantidade
    ultimo_lados = lados
    mod > 0 ? " #{dado}: #{rolls.join(' + ')} + #{mod} = **#{total}**" : " #{dado}: #{rolls.join(' + ')} = **#{total}**"
  end
    event.channel.send_embed do |embed|
  embed.color = if ultimo_total == ultimo_quantidade
    0x8B0000
  elsif ultimo_total == ultimo_quantidade * ultimo_lados
    0xFF6666
  else
    0xFF0000
  end
  embed.description = resultados_finais.join("\n")
end
end
    # Dados separados com embed colorido (2#d6)
    bot.message(contains: /\d+#d\d+/i) do |event|
      next unless event.message.content.match?(/\A(\d+#d\d+(\+\d+)?\s*)+\z/i)

      dados = event.message.content.scan(/\d+#d\d+(?:\+\d+)?/i)

      dados.each do |dado|
        partes = dado.split("#d")
        quantidade = partes[0].to_i
        lados = partes[1].to_i

        quantidade.times do |i|
          roll = rand(1..lados)
          modificador = dado.match(/\+(\d+)/)
          mod = modificador ? modificador[1].to_i : 0
          total = roll + mod
          color = if roll == 1
            0x8B0000
          elsif roll == lados
            0xFF6666
          else
            0xFF0000
          end

          event.channel.send_embed do |embed|
            embed.color = color
            embed.description = mod > 0 ? " Dado #{i+1} (d#{lados}): **#{roll}** + #{mod} = **#{total}**" : " Dado #{i+1} (d#{lados}): **#{roll}**"
          end
        end
      end
    end

  end
end