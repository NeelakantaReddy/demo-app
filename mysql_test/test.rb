require 'mysql2'

client = Mysql2::Client.new(host: 'localhost', username: 'root', password: 'neela5')

sql = 'show databases'

result = client.query(sql)

result.each do |row|
	puts(row['Database'])
end