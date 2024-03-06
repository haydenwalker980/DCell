module DCPerms
  # ID of this instance's support server. Required, roles are from here!
  SupportServer = ""

  # Whether to grant me (Hayden) owner-level permissions to the bot.
  # Default false. If you enable this it is only used for low-level debugging.
  CreatorPowers = false

  # Maintainers (owners, can use eval and other debug stuff)
  Maintainers = ["1","2"]

  # ID of the boss role.
  BossRole = ""
  # Manually assign those to the Boss position via User ID.
  Bosses = ["1","2"]

  # ID of the supervisor role.
  SoupAdvisorRole = ""
  # Manually assign those to the Supervisor position via User ID.
  SoupAdvisors = ["1","2"]

  # ID of the Customer Service role.
  CSRole = ""
  # Manually assign those to the CS position via User ID.
  Supporters = ["1","2"]

  # ID of the contributor role.
  ContributorRole = ""
  # Manually assign those to the Contributor position via User ID.
  Contributors = ["1","2"]

  # ID of the donor role.
  DonorRole = ""
  # Manually assign Donors via User ID.
  Donors = ["1","2"]
end
