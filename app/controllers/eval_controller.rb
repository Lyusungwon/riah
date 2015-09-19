class EvalController < ApplicationController
def eval_params
      params.require(:eval).permit(:hairshop_id,:content,:rating_a,:rating_b,:rating_c,:rating_d,:rating_e,:rating_f, images: [])
end
end