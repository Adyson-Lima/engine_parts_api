puts 'Gerando parts...'

5.times do |i|
  Part.create(
    name: ["Biela", "vela", "bloco"].sample ,
    function: "função especifica"
    )
end

puts 'parts gerados com sucesso!'