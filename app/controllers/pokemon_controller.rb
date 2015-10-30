class PokemonController < ApplicationController
    def capture
        @pokemon = Pokemon.find(params[:id])
        @pokemon.trainer = current_trainer
        @pokemon.save

        redirect_to root_path
    end

    def damage 
        @pokemon = Pokemon.find(params[:id])

        if @pokemon.health <=0
                flash[:error] = "Cannot damage this Pokemon anymore, it is extremely dead."
                @pokemon.save
        else
                @pokemon.health -= 10
                @pokemon.save
        end

        redirect_to @pokemon.trainer
    end

    def new
        @pokemon = Pokemon.new
    end

    def create
        @pokemon = Pokemon.create(pokemons_params)
        @pokemon.level = 1
        @pokemon.health = 100
        @pokemon.trainer = current_trainer

        if @pokemon.save
            flash[:notice] = "Created New Pokemon"
            redirect_to @pokemon.trainer
        else
            flash[:error] = @pokemon.errors.full_messages.to_sentence
            render "new"
        end
    end


    private

    def pokemons_params
        params.require(:pokemon).permit(:name)
    end


end