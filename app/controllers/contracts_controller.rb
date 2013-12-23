class ContractsController < ApplicationController
    http_basic_authenticate_with name: "anthony", password: "1234"
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
    
    def edit
        @contract = Contract.find(params[:id])
    end
    
    def update
        @contract = Contract.find(params[:id])
        if @contract.update(params[:contract].permit(:compName, :accountNum, :compPhone, :compFax, :shipStr, :shipCity, :shipSt, :shipZip, :shipCounty, :shipTax,:billShipChk, :billStr, :billCity, :billSt, :billZip, :billCounty, :billTax))
            redirect_to @contract
        else
            render 'edit'
        end
    end
    def destroy
        @contract = Contract.find(params[:id])
        @contract.destroy
        
        redirect_to contracts_path
    end
    private
        def contract_params
            params.require(:contract).permit(:compName, :accountNum, :compPhone, :compFax, :shipStr, :shipCity, :shipSt, :shipZip, :shipCounty, :shipTax,:billShipChk, :billStr, :billCity, :billSt, :billZip, :billCounty, :billTax)
        end
        
end
