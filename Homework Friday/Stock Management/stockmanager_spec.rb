require_relative 'stockmanagement'

describe StockManager do
  describe '#new' do
    it 'builds a new Stock Manager' do

      stock_manager1 = StockManager.new('Barclays')
      stock_manager1.should be_instance_of StockManager
      stock_manager1.name.should == 'Barclays'

    end
  end

  describe '#create_account' do

    it 'creates a new account for a new client' do
      stock_manager1 = StockManager.new('Barclays')
      client_account = stock_manager1.create_account('Tanay Jalan', 300)
      client_account[:name].should == 'Tanay Jalan'



    end
  end
end


# describe Stock do
# 	describe '#new' do #this is for the constructor, (initiaizer, bank = Bank.new): new object

#     it 'creates a new stock with its name, quanity ' do

#       bank = Bank.new('MyCiti')
#       bank.should be_instance_of(Bank)
#       bank.name.should == 'MyCiti'

#     end
#   end
