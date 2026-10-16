-- ============================================
-- FAMILIES
-- ============================================
INSERT INTO families (name) VALUES
  ('Sanrio Originals'),
  ('Retro Era'),
  ('Modern Era')
ON CONFLICT (name) DO NOTHING;

-- ============================================
-- CHARACTERS
-- ============================================
INSERT INTO characters (name, family_id, debut_year, description)
SELECT v.name, f.id, v.debut_year, v.description
FROM (VALUES
  ('Coro Chan',        1973, 'Sanrio''s very first original character. A gentle, laid-back bear living in Windermere, England. His name and round cheeks were inspired by croquettes.'),
  ('Hello Kitty',      1974, 'A bright, happy little girl living in a London suburb with her twin sister, Mimmy. Loves baking apple pies and making friends. Motto: "You can never have too many friends." Five apples tall.'),
  ('My Melody',        1975, 'An honest, good-natured white rabbit who wears a pink or red hood handmade by her grandmother. Loves baking almond pound cake with her mother. Best friend: Flat the mouse.'),
  ('Little Twin Stars',1975, 'Celestial twin angels born on Omode Star. Kiki (blue hair, curious, star-fishing) and Lala (pink hair, writes poems, draws, cooks).'),
  ('Tuxedosam',        1979, 'A sophisticated penguin from Antarctica who speaks English and penguin. Owns a collection of 365 bowties.'),
  ('Keroppi',          1988, 'An energetic green frog living at Donut Pond. Excellent swimmer. Loves baseball and boomerangs.'),
  ('Pochacco',         1989, 'A sporty, curious puppy who loves long walks, basketball, and soccer. Vegetarian. Favorite food: banana ice cream.'),
  ('Ahiru no Pekkle',  1990, 'A good-natured, reliable, slightly clumsy white duck from Australia. Loves singing and dancing; taking tap lessons.'),
  ('Badtz-Maru',       1993, 'A mischievous, spiky-haired penguin born in Oahu, Hawaii. Dreams of becoming boss of everything. Pet alligator: Pochi.'),
  ('Pompompurin',      1996, 'A relaxed golden retriever puppy wearing a brown beret that makes him look like caramel pudding. Loves milk and cream caramel.'),
  ('Chococat',         1996, 'A clever black cat whose whiskers act like radar antennas. Named for his chocolate-colored nose.'),
  ('Cinnamoroll',      2001, 'A chubby white puppy with long floppy ears that let him fly. Discovered by Cafe Cinnamon''s owner after floating down from a cloud; now the cafe''s mascot.'),
  ('Kuromi',           2005, 'My Melody''s self-proclaimed punk rival. White rabbit in a black jester hat with a pink skull. Secretly girly; loves romance novels and diaries.'),
  ('Gudetama',         2013, 'An apathetic, lazy anthropomorphic egg yolk. Lacks motivation; complains about being boiled, fried, or seasoned.'),
  ('Aggretsuko',       2015, 'A 25-year-old red panda accountant dealing with corporate stress. Vents by singing death metal at karaoke bars.')
) AS v(name, debut_year, family_name)
JOIN families f ON f.name = v.family_name;
