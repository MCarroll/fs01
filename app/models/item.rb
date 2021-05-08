# == Schema Information
#
# Table name: items
#
#  id                  :bigint           not null, primary key
#  bulk                :string
#  bulk_description    :string
#  bulk_qty            :string
#  height              :string
#  name                :string
#  price               :string
#  short_name          :string
#  sku                 :string
#  weight_display_unit :integer
#  weight_type         :string
#  weight_unit         :integer
#  weight_value        :decimal(30, 15)
#  width               :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  account_id          :bigint           not null
#  item_id             :bigint           not null
#
# Indexes
#
#  index_items_on_account_id  (account_id)
#  index_items_on_item_id     (item_id)
#
# Foreign Keys
#
#  fk_rails_...  (account_id => accounts.id)
#  fk_rails_...  (item_id => items.id)
#
class Item < ApplicationRecord
  include Weighable::Model

  weighable :weight

  belongs_to :item
  belongs_to :account
  has_many_attached :images
end
