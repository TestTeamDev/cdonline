class Enduser::TopsController < ApplicationController
	def top
		#CDの詳細ページの開かれた回数を多い順に並べ替えして上から４つ取得する
		@all_ranks = Cd.find(Cd.order(view_number: :desc).limit(4).pluck(:id))
	end
end
