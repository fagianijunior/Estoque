module ApplicationHelper
	def dinheiro(valor)
		valor = "R$ #{valor.real}"
	end
end
