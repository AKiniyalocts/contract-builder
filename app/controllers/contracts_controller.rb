class ContractsController < ApplicationController
    def new
    
    end
    def create
        @contract = Contract.new(contract_params)
        @contract.save
        redirect_to @contract
    end
    
    def show
        @contract = Contract.find(params[:id])
    end
    
    def index
        @contracts = Contract.all
    end
    
    private
        def contract_params
            params.require(:contract).permit(:compName, :accountNum, :compPhone, :compFax)
        end
        
end
