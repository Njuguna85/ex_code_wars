defmodule TestSuite do
  use ExUnit.Case

  test "Sample tests" do
    Enum.each(
      [
        {"This website is for losers LOL!", "Ths wbst s fr lsrs LL!"},
        {"Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
         "Lrm psm hs bn th ndstry's stndrd dmmy txt vr snc th 1500s"},
        {"ContrAry to POPULAR belief", "Cntrry t PPLR blf"}
      ],
      fn {str, expected} ->
        actual = Kata.disemvowel(str)
        assert actual == expected
      end
    )
  end
end
