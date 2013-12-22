class ContractsController < ApplicationController
    def new
        @contract = Contract.new
    end
    def create
        @contract = Contract.new(contract_params)
        if @contract.save
            redirect_to @contract
        else
            render 'new'
        end
    end
    
    def show
        @contract = Contract.find(params[:id])
    end
    
    def index
        @contract = Contract.all
    end
    
    private
        def contract_params
            params.require(:contracts).permit(:compName, :accountNum, :compPhone, :compFax)
        end
        
end
