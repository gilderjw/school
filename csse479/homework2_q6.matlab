fr = frequency(vigciph)

fvec=[.082 .015 .028 .043 .127 .022 .020 .061 .070 .002 ...
      .008 .040 .024 .067 .075 .019 .001 .060 .063 .091 ...
      .028 .010 .023 .001 .020 .001];

%lets generate the coinsicences
for i = 1:15
	coinc(vigciph, i)
end

%it looks like this has a key length of 5, so we will use that

vigvec(vigciph, 5, 1)
corr(ans)
max(ans)

%the max should correspond to the first character in the key

%rinse and repeat that for the other letters

vigvec(vigciph, 5, 2)
corr(ans)
max(ans)

vigvec(vigciph, 5, 3)
corr(ans)
max(ans)

vigvec(vigciph, 5, 4)
corr(ans)
max(ans)

vigvec(vigciph, 5, 5)
corr(ans)
max(ans)

key = 'zxble'

%shift the ciphertext backwards by the key
vigenere(vigciph, -[25, 23, 1, 11, 4])

% plaintext:
% andthensomethingwentbumphowthatbumpmadeusjumpwelookedthenwesawhimstepinonthematwelookedandwesawhimthecatinthehatandhesaidtouswhydoyousittherelikethatiknowitiswetandthesunisnotsunnybutwecanhavelotsofgoodfunthatisfunnyiknowsomegoodgameswecouldplaysaidthecatiknowsomenewtrickssaidthecatinthehatalotofgoodtricksiwillshowthemtoyouyourmotherwillnotmindatallifido
