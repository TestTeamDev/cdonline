class Artist < ApplicationRecord


def change        
        create_table :artists do |t|

        	t. string :name

     end
 end
