

forcedevo_saved_func = item_evo
item_evo = function(self, card, context, forced_key)
   local new_context = {end_of_round = true}
   return forcedevo_saved_func(self,card,new_context, forced_key)
end