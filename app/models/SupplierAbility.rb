class SupplierAbility
  include CanCan::Ability

  def initialize user

    # direct permissions
    #can :create, Products

    # or permissions by group
    if spree_user.has_spree_role? "supplier"
      can :create, Products
    end
   end
end