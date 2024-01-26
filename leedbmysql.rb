require 'mysql2'

begin
    # Initialize connection variables.
    host = String('localhost')
    database = String('clavomwuchaxeehrdpbs')
    username = String('7b2nb4geg3gw')
    password = String('k3e_44#dh8fkjf.#DFwe')

    # Initialize connection object.
    client = Mysql2::Client.new(:host => host, :username => username, :database => database, :password => password)
    puts 'Successfully created connection to database.'

    # Read data
    resultSet = client.query('SELECT ID, InsertIntoDB, IMEI, IMSI, NetName from phones;')
    resultSet.each do |row|
        puts 'Data row = (%s, %s, %s)' % [row['ID'], row['InsertIntoDB'], row['IMEI'], row['IMSI'], row['NetName']]
    end
    puts 'Read ' + resultSet.count.to_s + ' row(s).'

# Error handling
rescue Exception => e
    puts e.message

# Cleanup
ensure
    client.close if client
    puts 'Done.'
end