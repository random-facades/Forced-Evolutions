-- Simple force the evolution

forcedevo_saved_func = item_evo
item_evo = function(self, card, context, forced_key)
   if card.is_evolving or context.end_of_round then return end
   local ret = forcedevo_saved_func(self, card, { end_of_round = true }, forced_key)
   if ret and ret.message then
      card.is_evolving = true
   end
end
