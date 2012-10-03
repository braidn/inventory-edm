Fabricator(:item) do
  name 'stuff'
  location 'here'
  serial 'e234'
  kind 'stuff'
  purchaseDate {Time.now - 33000}
  retireDate {Time.now}
  backup 'yes'
  os 'linux'
  user
end
