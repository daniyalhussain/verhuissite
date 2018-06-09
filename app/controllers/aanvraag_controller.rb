class AanvraagController < ApplicationController

  def new
    #hier nieuwe cookie aanmaken
    if token = request.cookies["aanvraag"]
      @aanvraag = Aanvraag.find_by!(token: token)

    else
      @aanvraag = Aanvraag.create!(token: SecureRandom.urlsafe_base64)
      cookies.permanent["aanvraag"] = @aanvraag.token
    end
  end

  def adresb
    #data aan cookie toevoegen en checken of cookie bestaat
    if token = request.cookies["aanvraag"]
      @aanvraag = Aanvraag.find_by!(token: token)

      if params[:adresa]
        @aanvraag.update(adresa_params)
      end
    else
      #redirect
    end
  end

  def adresc
    if token = request.cookies["aanvraag"]
      @aanvraag = Aanvraag.find_by!(token: token)

      if params[:adresb]
        @aanvraag.update(adresb_params)
      end
    else
      #redirect
    end
  end

  def inventarisatie
    if token = request.cookies["aanvraag"]
      @aanvraag = Aanvraag.find_by!(token: token)
      if params[:adresc]
        if params[:adresc][:tussenadres] == "1"
          @aanvraag.update(adresc_params)
        else
          @aanvraag.postcode_c = nil
          @aanvraag.huisnummer_c = nil
          @aanvraag.adres_c = nil
          @aanvraag.plaats_c = nil
          @aanvraag.tussenadres = false
          @aanvraag.save
        end
      end
    else
      #redirect
    end
  end

  def datum
    if token = request.cookies["aanvraag"]
      @aanvraag = Aanvraag.find_by!(token: token)
      if params[:inventarisatie]
        if params[:inventarisatie][:typeverhuizing] == "Enkele Meubels"
          @aanvraag.update(typeverhuizing: "Enkele Meubels", typeinventarisatie: nil, typeverhuizer: nil)
        else
          @aanvraag.update(inventarisatie_params)
        end
      end
    else
      #redirect
    end
  end

  def typewoning
    if token = request.cookies["aanvraag"]
      @aanvraag = Aanvraag.find_by!(token: token)
      if params[:verhuisdatum]
        @aanvraag.update(datum_params)
      end
    else
      #redirect
    end
  end

  def typewoningnaar
    if token = request.cookies["aanvraag"]
      @aanvraag = Aanvraag.find_by!(token: token)
      if params[:typewoninga]
        @aanvraag.update(typewoninga_params)
      end
    else
      #redirect
    end
  end

  protected
    def adresa_params
      params.require(:adresa).permit(:postcode_a, :huisnummer_a, :adres_a, :plaats_a)
    end

    def adresb_params
      params.require(:adresb).permit(:postcode_b, :huisnummer_b, :adres_b, :plaats_b)
    end

    def adresc_params
      params.require(:adresc).permit(:postcode_c, :huisnummer_c, :adres_c, :plaats_c, :tussenadres)
    end

    def inventarisatie_params
      params.require(:inventarisatie).permit(:typeverhuizing, :typeinventarisatie, :typeverhuizer)
    end

    def datum_params
      params.require(:verhuisdatum).permit(:datumvan, :datumtot)
    end

    def typewoninga_params
      params.require(:typewoninga).permit(:typewoning_a, :verdiepingen_a, :internelift_a)
    end
end
