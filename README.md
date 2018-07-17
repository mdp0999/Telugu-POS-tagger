# Telugu-POS-tagger
POS taggers are developed by modeling the morpho-syntactic structure of natural language text. I developed this POS tagger by using Rule based Parts of speech tagging in PERL. The rules are context-pattern rules or as regular expressions compiled into finite-state automata that are intersected with lexically ambiguous sentence representations. The purpose of this tagged output could be used for a variety of NLP (Natural Language Processing) applications, mainly used for word sense disambiguation (WSD) is retrieving Telugu documents

This one is not my main POS tagger. It is preliminary work of understanding POS rules in Telugu. I developed another tool with tdil-dc tags. I developed this tagger for industrial purpose. So, I don't have access to share the complete pos tagger here.
The final training data format for Nueral Networks is shown in below:
TRAIN_DATA = [ ('సొంతగడ్డపై తమ అభిమాన క్రీడాకారులు మ్యాచ్ ఆడుతుంటే చూడాలని ఎవరికి మాత్రం ఉండదు చెప్పండి .',{'tags': ['N_NN','PR_PRF','JJ','N_NN','N_NN','V_VM_VNF','V_VM_VNF','PR_PRQ','N_NINF','V_VM_VINF','V_VM_VF','RD_PUNC'] }),
('కొద్ది వారాల క్రితం ఓ ఫస్ట్క్లాస్ క్రికెటర్ భారత్-దక్షిణాఫ్రికా మధ్య నాలుగో వన్డేను కుటుంబసభ్యులతో కలిసి ప్రత్యక్షంగా చూసేందుకు నిర్వాహకులను టికెట్లు అడిగాడు .',{'tags': ['QT_QTF','N_NN','N_NST','RD_PUNC','N_NNP','N_NNP','N_NNP','PSP','QT_QTO','V_VM_VNG','N_NN','V_VM_VNF','RB','V_VM_VNF','N_NN','N_NN','V_VM_VF','RD_PUNC'] }),
('కానీ , అతనికి టికెట్లు దొరకలేదు .',{'tags': ['CC_CCD','RD_PUNC','PR_PRP','N_NN','V_VM_VINF','RD_PUNC'] }),
('దీంతో ఆ ఆటగాడు తీవ్ర నిరాశ చెందాడు .',{'tags': ['N_NNP','DM_DMD','N_NN','JJ','N_NN','V_VM_VF','RD_PUNC'] }),
('ఇక దాని గురించి ఆలోచించడమే మానేశాడు . కానీ ,',{'tags': ['N_NST','PSP','PSP','V_VM_VNG','V_VM_VF','RD_PUNC','CC_CCD','RD_PUNC'] }),
('ఓ రోజు ఏకంగా దక్షిణాఫ్రికా క్రికెట్ బోర్డు నుంచి అతడికి ఫోన్ వచ్చింది .',{'tags': ['N_NN','N_NN','RB','N_NNP','N_NNP','N_NN','PSP','PR_PRP','N_NN','V_VM_VF','RD_PUNC'] }),
('జట్టులో కీపర్ , బ్యాట్స్మెన్ డీకాక్ గాయపడ్డాడు .',{'tags': ['N_NN','N_NNP','RD_PUNC','N_NNP','N_NNP','V_VM_VF','RD_PUNC'] }),
('దీంతో అతడు భారత్తో వన్డే సిరీస్కు దూరమయ్యాడు .',{'tags': ['N_NN','PR_PRP','N_NN','N_NN','N_NN','V_VM_VF','RD_PUNC'] }),
('అతని స్థానంలో నిన్ను జట్టులోకి ఎంచుకున్నాం అని తెలిపారు .',{'tags': ['PR_PRP','N_NN','N_NNP','N_NN','V_VM_VNF','N_NN','V_VM_VF','RD_PUNC'] }),
('దీంతో అతడు ఎగిరి గంతేశాడు . అంతేకాదండోయ్ ఏ మ్యాచ్ చూసేందుకు అయితే అతనికి టిక్కెట్లు దక్కలేదో ఆ మ్యాచ్లో కీలక ఇన్నింగ్స్ ఆడి జట్టు విజయంలో కీలకపాత్ర పోషించాడు . ఇంతకీ అతగాడు ఎవరంటే . . హెన్రిచ్ క్లాసెన్ .',{'tags': ['N_NN','PR_PRP','V_VM_VNF','V_VM_VF','RD_PUNC','N_NNP','RD_PUNC','N_NN','V_VM_VNF','RP_RPD','PR_PRP','N_NN','V_VM_VNG','DM_DMQ','N_NN','JJ','N_NNP','V_VM_VNF','N_NN','N_NN','N_NN','V_VM_VF','RD_PUNC','N_NN','PR_PRP','PR_PRQ','RD_PUNC','RD_PUNC','N_NNP','N_NNP','RD_PUNC'] })]

and sample output(రష్యా వేదికగా ఇటీవల ముగిసిన ఫిఫా ప్రపంచక పోటీల్లో ఫ్రాన్స్ విజేతగా నిలవడంలో కీలకపాత్ర పోషించాడు ఆ జట్టు ఆటగాడు ఎంబపె. ) for sentences is:
రష్యా రష్యా NOUN N_NN
వేదికగా వేదిక ADV RB
ఇటీవల ఇటీవల PROPN N_NNP
ముగిసిన ముగిసిన VERB V_VM_VNF
ఫిఫా ఫిఫా PROPN N_NNP
ప్రపంచక ప్రపంచక PROPN N_NNP
పోటీల్లో పోటీ NOUN N_NN
ఫ్రాన్స్ ఫ్రాన్స్ PROPN N_NNP
విజేతగా విజేత ADV RB
నిలవడంలో నిలవడం NOUN N_NN
కీలకపాత్ర కీలకపాత్ర NOUN N_NN
పోషించాడు పోషించు VERB V_VM_VF
ఆ ఆ DET DM_DMD
జట్టు జట్టు DET DM_DMD
ఆటగాడు ఆటగాడు AUX V_VAUX
ఎంబపె ఎంబపె PROPN N_NNP
. . PUNCT RD_PUNC
