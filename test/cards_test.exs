defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck" do
    deck = Cards.create_deck

    assert Enum.count(deck) == 20
  end

  test "contains?" do
    deck = Cards.create_deck

    assert Cards.contains?(deck, "Ace of Spades")
    assert Cards.contains?(deck, "Five of Diamonds")
  end

  test "shuffle" do
    deck = Cards.create_deck
    shuffle = Cards.shuffle(deck)

    assert Enum.count(shuffle) == 20
    refute deck == shuffle
  end

  test "deal" do
    deck = Cards.create_deck

    assert Cards.deal(deck, 2) == ["Ace of Spades", "Two of Spades"]
  end
end
