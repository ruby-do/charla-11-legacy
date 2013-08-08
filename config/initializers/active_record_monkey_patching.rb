class ActiveRecord::Base     

	def method_missing(method, *args, &block)

		unless method.to_s.include? "_"
			#Tomar el nombre de la clase para armar el nombre de la columna
			nombre = self.class.name.downcase + "_" + method.to_s

			#Convertirlo a un symbol y mandarlo
			send(nombre.to_sym, *args, &block)
		end

	end

end