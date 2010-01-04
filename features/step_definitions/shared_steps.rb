Given /^the following owners:$/ do |table|
  table.hashes.each do |attributes|
    Factory.create(:owner, attributes)
  end
end
