class StaticController < ApplicationController 
    def index 
        render html: "Root page"
    end
end