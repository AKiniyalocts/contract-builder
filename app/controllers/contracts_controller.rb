class ContractsController < ApplicationController
    def new
        @contract = Contract.new
    end
    def create
        @contract = Contract.new(params)
        #@post = Post.new(params[:post].permit(:title, :text))
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
        if @contract.update(params[:contract].permit(:compName, :accountNum, :compPhone, :compFax, :compContact, :conPhone, :conEmail))
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
            params.require(:contract).permit(:compName, :accountNum, :compPhone, :compFax, :compContact, :conPhone, :conEmail)
        end
        
end
