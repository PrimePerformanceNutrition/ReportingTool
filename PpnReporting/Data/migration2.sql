-- Script Date: 10/15/2019 4:07 PM  - ErikEJ.SqlCeScripting version 3.5.2.81
-- Database information:
-- Database: C:\Users\delopez.AD\source\repos\equinednareportingtool\PpnReporting\PPN.db
-- ServerVersion: 3.27.2
-- DatabaseSize: 80 KB
-- Created: 10/15/2019 2:58 PM

-- User Table information:
-- Number of tables: 4
-- __EFMigrationsHistory: -1 row(s)
-- Horses: -1 row(s)
-- Labs: -1 row(s)
-- NutrientBulletPoints: -1 row(s)

SELECT 1;
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
1,'Calcium','Frequent urination, Constipation, body weakness, depression, confusion, lethargy, fatigue, and heart palpations. ','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
2,'Calcium','Hypocalcaemia can be caused by overactive parathyroid glands, immobility, cancer, medications and supplements, hereditary factors and severe dehydration','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
3,'Calcium','Muscle aches and spasms, brittle hooves, dry skin, secondary hyperparathyroidism, osteoporosis, and dental complications such as tooth decay, irritated gums and weak roots. ','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
4,'Calcium','Caused by low level of Ca in the blood and usually can be altered by making the needed diet changes. ','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
5,'Magnesium','Elevated hair Mg has been linked to hypoglycemia and a low Ca:P ratio.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
6,'Magnesium','High levels of Mg are usually due to a misdistribution of the element, misdistribution can be caused by an increased exposure to stress, toxic metal or chemical exposure, physiological imbalance of Ca and P, bone mineral depletion, and renal insufficiency','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
7,'Magnesium','Magnesium deficiency is subtle, and symptoms don’t become apparent until Mg levels drop to concerning levels.','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
8,'Magnesium','Health problems associated with magnesium loss include diabetes, poor absorption, chronic diarrhea, gluten sensitivity, muscle cramps and tremors, high blood pressure, fatigue, and an irregular heartbeat','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
9,'Sodium','Horses with excessive amounts of sodium will typically show signs of thirst. In severe cases, hypernatremia can lead to confusion, seizures, and muscle tremors','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
10,'Sodium','Hyponatremia occurs when the body contains a level of sodium that’s too low for the proportion of bodily fluids. ','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
11,'Sodium','The body may have too much, too little, or a normal amount of fluid. In all cases, however, Na is diluted.','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
12,'Sodium','Disorders, such as kidney disease, cirrhosis, and heart failure, can cause the body to retain sodium and fluid. Often the body retains more fluid than Na, which means the sodium is diluted.','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
13,'Potassium','Hyperkalemia, or excess potassium, can be caused by dehydration, bodily trauma (specifically via burn or crush trauma), diabetes, certain medications and supplements, internal bleeding, and kidney failure. ','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
14,'Potassium','The symptoms of high K depend on the level of the mineral in the blood; therefore, symptoms aren’t always apparent. But if potassium levels are high enough to cause symptoms, horses may experience tiredness, trouble breathing, chest pain, or palpitations. In extreme cases, paralysis and heart failure can occur','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
15,'Potassium','Cushing disease, an adrenal disorder, produces an excessive amount of the aldosterone hormone, which causes the kidneys to release inappropriately large amounts of potassium','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
16,'Potassium','Typically, potassium levels are decreased because too much is removed from the digestive tract due to diarrhea, or excess potassium is excreted in the urine. ','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
17,'Potassium','A large decrease in K causes muscle weakness and cramping, paralysis, and eventual kidney problems','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
18,'Copper','Too much copper in the body can be toxic. Bodily copper levels can be increased due to contaminated water sources, dietary supplements, and exposure to fungicides. ','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
19,'Copper','Symptoms of copper toxicity include stomach aches and diarrhea. In extreme cases, Cu toxicity can lead to heart and kidney failure, brain disorders, and liver damage','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
20,'Copper','Some possible reasons for Cu deficiency include intestinal malabsorption, insufficient dietary intake, and an excess of molybdenum and/or zinc.','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
21,'Copper','Cu status is also negatively affected by the excess presence of unwelcome metals such as mercury, cadmium, manganese, and lead.','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
22,'Copper','Symptoms of Cu deficiency include increased inflammatory responses, anemia, elevated cholesterol, reproductive failure, bone or collagen disorders, and impaired immunity. ','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
23,'Zinc','Consuming food or water that contains high amount is zinc is the leading cause of high levels of bodily zinc.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
24,'Zinc','Ingesting high levels of zinc may cause stomach pains, anemia, damage to the pancreas, decrease levels of high-density lipoprotein cholesterol, skin irritation, and possible infertility.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
25,'Zinc','A result of low hair Zn may indicate low zinc in whole blood, red blood cells, and other tissues.','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
26,'Zinc','High levels of cadmium, lead, and mercury play major roles in low zinc levels.','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
27,'Zinc','Zinc deficiency can be caused by malabsorption of the element, poor diet, metabolic disorder of metallothionein metabolism, surgery, and burns.','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
28,'Zinc','Symptoms of Zn deficiency include fatigue, decreased vision, anorexia, anemia, dermatitis, weak or brittle nails, impaired wound healing, sexual dysfunction (in males), and sudden hair loss','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
29,'Manganese','High levels of manganese can be reported due to environmental exposure such as contaminated well water, bleaches, or other hair products.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
30,'Manganese','Iron/calcium deficiency, chronic infection, and impaired liver functions also influence high levels of Mn.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
31,'Manganese','Excess Mn causes degeneration of melanin-pigmented dopaminergic neurons, which result in abnormally low levels of serotonin and dopamine in the brain. ','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
32,'Manganese','Symptoms of high levels of manganese include disorientation, memory loss, anxiety, hair loss, abnormal gait, violent behaviors, and tremors.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
33,'Manganese','Usually, the most common reason for manganese deficiency is a lack of the element in everyday diet. ','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
34,'Manganese','Those diagnosed with osteoporosis and diabetes are more inclined to manganese deficiency.','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
35,'Manganese','Symptoms of Mn deficiency include poor bone growth and skeletal defects such as curved spines, shorter or thicker limbs, and enlarged joints. Additionally, slow or impaired growth, low fertility, impaired glucose tolerance, and abnormal carbohydrate and fat metabolism are signs of Mn deficiency.   ','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
36,'Chromium','Oral and environmental contamination are the most common reasons for chromium toxicity. Chromium is primarily absorbed via inhalation as a result of industrial exposure.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
37,'Chromium','Sources of exposure include the manufacture of ferrochromium and stainless steel, wood furnishing, leather tanning, and handling cement.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
38,'Chromium','Symptoms of exposure include gastrointestinal pain or ulceration, diarrhea, fever, renal failure, circulatory collapse, allergic dermatitis, bronchitis, and lung carcinoma','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
39,'Chromium','Chromium deficiency is described as the consequence of an insufficient dietary intake of the mineral chromium.','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
40,'Chromium','Chromium is an essential element for normal glucose metabolism.','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
41,'Chromium','Symptoms of Cr deficiency are impaired glucose tolerance, weight loss, and confusion','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
42,'Vanadium','Vanadium can be found in water and food sources such as grains and certain fruits (particularly apples and strawberries).','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
43,'Vanadium','Symptoms of V toxicity vary with chemical form and the route of absorption.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
44,'Vanadium','Inhaling an excess amount of V may produce respiratory irritation and bronchitis','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
45,'Vanadium','Ingesting high amounts of V may cause a decrease in appetite, depressed growth, pale skin, diarrhea or other gastrointestinal disturbances, and nephrotoxic or hemotoxic effects','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
46,'Vanadium','It’s believed that high levels of protein, vitamin C, iron, aluminum, and chloride in the diet prevent vanadium from being absorbed into the body.','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
47,'Vanadium','Some studies observed a decrease in fertility, increase prenatal mortality, slow growth rate, and an increase in hematocrit and plasma cholesterol level in vanadium deficient test subjects. However, these symptoms weren’t always reproducible. ','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
48,'Molybdenum','Molybdenum can be found in plants such as grains and legumes. ','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
49,'Molybdenum','Because the molybdenum content of plants depends on the soil Mo content and other environmental conditions, the Mo content of foods can vary considerably.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
50,'Molybdenum','Although it takes an exceedingly large amount of molybdenum to be considered a toxicity, symptoms of excess Mo include loss of appetite, anemia, and arthritic features.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
51,'Molybdenum','These are also signs of copper deficiency, which can be a result of Mo excess','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
52,'Molybdenum','Molybdenum deficiency caused by a lack of the element as a dietary intake is highly uncommon, but in the case of low bodily levels of Mo, signs of kidney stones have been observed','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
53,'Boron','Boron can be found in water sources, soils in semi-arid regions [with little leaching from rainfall], and some fertilizers.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
54,'Boron','External contamination of B is plausible, because it can be found in some soaps and cleaners','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
55,'Boron','Diarrhea, weakness, impaired coordination, and signs of depression are all symptoms of boron toxicity.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
56,'Boron','Seizure-like behaviors and abortions may also be apparent. ','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
57,'Boron','Boron deficiency is commonly caused by a lack of the element as a dietary intake.','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
58,'Boron','The disadvantages of a boron deficient diet include negative effects on bone calcification, poor mineralization, and inadequate metabolism of calcium, phosphorus, and magnesium.','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
59,'Iodine','Iodine toxicity can be caused due to a prolonged implementation of the element in the diet as a supplementation, incorrect management of mineral feed admixtures over an extended period of time, or the continual use of iodine as a feed additive for therapeutic purposes. ','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
60,'Iodine','Symptoms of iodine toxicity may include stillbirths from pregnant mares, hair loss, lethargy, and fat deposition','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
61,'Iodine','Iodine deficiency is caused by a lack of the element in the forages that the animal consumes. ','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
62,'Iodine','Symptoms of iodine deficiency in horses may include dull and/or rough coat, thyroid gland abnormalities, hair loss, slow shedding, weak or still born foals, and swollen limbs.','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
63,'Lithium','Lithium can be found in soil, plants, water, and is naturally present in the equine body.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
64,'Lithium','When ingested in excessive quantities for prolonged periods, lithium toxicity may cause dermatitis, confusion, edema, or hypertension. ','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
65,'Lithium','Li toxicity is more prevalent when coupled with low sodium intake','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
66,'Lithium','Low lithium levels are caused by a lack of proper intake of the element.','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
67,'Lithium','Li deficiency usually leads to signs of depression, and also an absence of foliate and vitamin B-12','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
68,'Phosphorus','Horses with phosphorus toxicity often display similar clinical signs as horses with a calcium deficiency; the excess phosphorus binds to the calcium in the intestine, decreasing the body’s absorption of the latter.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
69,'Phosphorus','Inappropriate calcium and phosphorus ratios that are maintained for an extended period of time may result in the formation of insoluble mineral complexes; which have the potential to cause colic. ','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
70,'Phosphorus','Prolonged overfeeding of phosphorus can induce “Big-Head” disease or secondary hyperparathyroidism.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
71,'Phosphorus','The amount of phosphorus in forages can vary greatly from species and environment the plant is grown in. Therefore, if a horse is placed on a forage-only diet, hay should be tested to ensure that a proper amount of phosphorus is being consumed.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
72,'Phosphorus','In the case of a phosphorus deficiency, horses may experience shifting lameness, new bone growth that is brittle and rachitic, common fractures (that also heal poorly), and swelling and softening of the facial bones','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
73,'Selenium','Horses may start to consume large amounts of soil or express other manifestations of pica.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
74,'Selenium','Selenium toxicity is more often a chronic condition. Certain “indicator” plants may reveal high levels of soil based selenium (such as locoweed), and are common in areas such as Colorado and New Mexico.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
75,'Selenium','Symptoms of selenium toxicity include hair loss of the mane and tail, cracked hooves, signs of lameness, excess salivation, and respiratory failure. ','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
76,'Selenium','Severe overdose of selenium can lead to death. Signs leading up to severe overdose include staggered gait, blindness, labored breathing, respiratory failure, collapse, and muscle tremors.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
77,'Selenium','Selenium deficiency is common, and may result from low intake of Se or vitamin E, or exposure to toxic metals, pesticides, herbicides, and chemical solvents. ','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
78,'Selenium','Significant inverse correlations between Se and heart disease, cancer, and asthma are apparent. ','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
79,'Selenium','The clinical syndrome that results from selenium deficiency is called white muscle disease, a degenerative disease that affects skeletal and cardiac muscle in foals and other farm animals. ','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
80,'Selenium','The primary signs in young animals with white muscle disease are decumbency, fast heart rates, failure to suckle, difficulty swallowing, and discolored (red to brown tinged) urine','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
81,'Strontium','A radioactive strontium isotope is occasionally used in radiotherapy to treat tumors and other cancerous growths. Therefore, if a horse has undergone any sort of recent cancer treatment, their bodily strontium levels may be skewed.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
82,'Strontium','The stable, natural isotope of the element strontium is commonly found in all natural dietary sources of calcium. Thus, elevated levels of Sr in hair may signal negative calcium balance and, can provide a valuable marker for the risk of bone loss or degeneration. ','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
83,'Strontium','Low levels of stable strontium can commonly be found in food and water sources and in the air we breathe.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
84,'Strontium','The radioactive strontium strain can be consumed via foods grown in contaminated soils.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
85,'Strontium','Exposure to low levels of strontium haven’t shown to be of any health concern.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
86,'Sulfur','generally found in drinking water, plant materials, and high protein feeds such as soybean meal.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
87,'Sulfur','Sulfur toxicity is rare, as it makes up a large amount of the essential proteins found in a horse’s body. In the case of a severe over dosage of the element, horses become lethargic, suffer bouts of colic, and experience labored breathing, bladder stones, and jaundiced mucous membranes. ','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
88,'Sulfur','Additionally, sulfur deficiency is of little concern','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
89,'Sulfur','In the case of a deficiency, sulfur can easily be added into the diet by implementing minerals rich in sulfur.','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
90,'Sulfur','Horses may experience brittle or cracked hooves, sore joints, blood clots, and weight loss.','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
91,'Cobalt','Cobalt toxicity rarely occurs on its own; manually injecting the substance as a performance enhancer has been the leading cause of high levels of bodily cobalt.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
92,'Cobalt','Boosting cobalt levels in horses may have the potential to enhance performance, but the mineral also has some detrimental effects such as interference with proper function of the horse’s heart, circulatory system, nerves, and thyroid gland.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
93,'Cobalt','Since cobalt naturally occurs in horse’s feeds and forages, deficiency is rarely documented.','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
94,'Cobalt','In the case of a deficiency, feeds that contain vitamin B12 (the natural substance made from bodily cobalt) should be implemented.','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
95,'Cobalt','Symptoms of a cobalt deficient diet include signs of weakness and lethargy. ','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
96,'Iron','High levels of iron can come from grass, hay, water, or other feeds. ','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
97,'Iron','Iron mainly accumulates in the liver, but over time, the element can build up in the lungs, spleen, thyroid, pancreas, intestines, brain, kidneys and adrenal glands.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
98,'Iron','Horses with iron toxicity have shown signs of jaundice, a dull/rough hair coat, and weight loss. In worse case scenarios, iron toxicity has the potential to cause liver failure','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
99,'Iron','Iron deficiency can appear in horses who have suffered blood loss, blood destruction, and reduced red blood cell production.','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
100,'Iron','There are three clinical symptoms that anemic horses typically display:','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
101,'Iron','Pale mucous membranes, increased heart rate, and lethargy','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
102,'Germanium','Germanium can be found in some foods and certain dental alloys, but most Germanium poisoning comes from ingesting the element as a dietary supplement for an extended period of time. ','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
103,'Germanium','Signs of anemia, muscle weakness, and peripheral neuropathy can be observed in the case of Germanium toxicity.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
104,'Germanium','Kidney dysfunction, kidney tubular degeneration, neurotoxicity, and germanium accumulation may also be noticed','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
105,'Germanium','Germanium deficiency is most commonly caused by a lack of dietary intake of Germanium to the body. ','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
106,'Germanium','Ge levels may be compromised either by high intake of simple carbohydrates (sugars, effectively white flour as well), or calcium, which is Germanium antagonist.','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
107,'Germanium','A deficiency of Ge can weaken the immune system and increase risk of cancer; it also can be a factor in developing cardiovascular disease, arthritis and osteoporosis','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
108,'Rubidium','Rubidium levels may correlate with exposure and with Rb levels found in other tissues of the body.','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
109,'Rubidium','Although Rb toxicity is rare, it is considered moderately toxic at high levels of ingestion and may result in symptoms of failure to gain weight, ataxia, hyper irritation, skin ulcers, anxiety, and an inhibition of iodine intake, therefore interfering with the thyroid gland and the cardiac muscle contraction. ','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
110,'Rubidium','Excess Rb may exacerbate pre-existing heart conditions, kidney conditions, or potassium imbalance','Excessive');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
111,'Rubidium','Much like other elements, Rubidium deficiency can be corrected by implementing the element into the diet.','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
112,'Rubidium','Low traces of Rb can cause signs of depression and lethargy','Deficient');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
1002,'Aluminum','Aluminum is easily the most prevalent and damaging toxic metal affecting the horse’s metabolism.  Horses don’t manage aluminum very effectively as they tend to accumulate it and have difficulty processing or removing it from the tissue.
Most aluminum comes from airborne exposures. However, it can also be present in water supplies, medications, especially some ulcer medications, water and feed containers, and the air with relatively high airborne levels of aluminum in North America.
','Heavy Metal');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
1003,'Antimony','Antimony alloys used in batteries and flame retardants. Over exposure can result in respiratory irritation, skin spots and gastrointestinal irritation. ','Heavy Metal');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
1004,'Arsenic','used to preserve wood and make special glass. High level exposure can result in skin cancer, bladder and lung cancer, as well as heart disease. ','Heavy Metal');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
1005,'Barium','used in ceramics as an ingredient in glazes. Although a small amount of barium in found in food, over exposure may lead to difficulties in breathing, increased blood pressure, changes in heart rhythm, stomach irritation, brain swelling, muscle weakness, and damage to the liver, kidney, heart, and spleen','Heavy Metal');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
1006,'Beryllium','not a crucial element and is very toxic by damaging lungs and causing pneumonia. ','Heavy Metal');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
1007,'Bismuth','Considered one of the least toxic elements although large doses maybe fatal.  Bismuth subsalicylate(Pepto-Bismol) is used in people to treat diarrhea and gastric distress such as nausea, indigestion and heartburn; however it is not labeled for use in any animals. In the case of horses with ulcers, the use of bismuth is not recommended. Once in the gastrointestinal tract, bismuth subsalicylate can be converted to sodium subsalicylate, which can cause gastric irritation. Additionally, salicylates, like aspirin, decrease prostaglandin secretion, which can further damage an already compromised stomach lining. For these reasons, bismuth is recommended in horses.','Heavy Metal');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
1008,'Cadmium','used in rechargeable batteries but limited in use due to it being poisonous. Can cause lung damage and diarrhea when ingested. ','Heavy Metal');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
1009,'Lead','used in batteries, pigments and cable sheathing. Lead poisoning has a profound effect on the nervous system, disrupting both the peripheral and central nervous system.  Excessive levels of lead in the blood can result in lowered sperm counts for males; lead poisoning in pregnant females is particularly problematic as lead can pass through the placenta and may result in low birth weight, early delivery, and developmental delays in the foal (lead also passes to young foals through the mare’s milk)','Heavy Metal');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
1010,'Mercury','high exposure can result in brain and liver damage.','Heavy Metal');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
1011,'Platinum','Non toxic metal.','Heavy Metal');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
1012,'Thallium','found in glass, fireworks, pigments. Exposure may lead to diarrhea, hair loss, and effect the nervous system. ','Heavy Metal');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
1013,'Thorium','found in electronic devices and present in the soil. Excessive exposure maybe deadly. ','Heavy Metal');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
1014,'Uranium','may cause kidney damage and damage the respiratory tract.','Heavy Metal');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
1015,'Nickel','used in making alloys because it resists corrosion. Large amounts maybe harmful. ','Heavy Metal');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
1016,'Silver','non toxic metal','Heavy Metal');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
1017,'Tin','inorganic tin is non toxic','Heavy Metal');
INSERT INTO [NutrientBulletPoints] ([Id],[NutrientName],[BulletPoint],[Range]) VALUES (
1018,'Titanium','used as an alloy and allergic reactions may occur with exposure. ','Heavy Metal');
INSERT INTO [Horses] ([Id],[Name],[Address],[Age],[Breed],[CustomerName],[Discipline],[EmailAddress],[PhoneNumber],[Sex]) VALUES (
'1f22d933-29ea-e911-84e7-44032cebb6d4','Squeeze',NULL,13,'AQHA','Jeff Butler','Barrels',NULL,NULL,'Gelding');
INSERT INTO [Horses] ([Id],[Name],[Address],[Age],[Breed],[CustomerName],[Discipline],[EmailAddress],[PhoneNumber],[Sex]) VALUES (
'2022d933-29ea-e911-84e7-44032cebb6d4','Dessy',NULL,9,'AQHA','Jeff Butler','Barrels',NULL,NULL,'Mare');
INSERT INTO [Horses] ([Id],[Name],[Address],[Age],[Breed],[CustomerName],[Discipline],[EmailAddress],[PhoneNumber],[Sex]) VALUES (
'2122d933-29ea-e911-84e7-44032cebb6d4','Mike',NULL,5,'AQHA','Jeff Butler','Barrels',NULL,NULL,'Gelding');
INSERT INTO [Horses] ([Id],[Name],[Address],[Age],[Breed],[CustomerName],[Discipline],[EmailAddress],[PhoneNumber],[Sex]) VALUES (
'2222d933-29ea-e911-84e7-44032cebb6d4','Red',NULL,16,'AQHA','Jeff Butler','Rope',NULL,NULL,'Gelding');
INSERT INTO [Horses] ([Id],[Name],[Address],[Age],[Breed],[CustomerName],[Discipline],[EmailAddress],[PhoneNumber],[Sex]) VALUES (
'2322d933-29ea-e911-84e7-44032cebb6d4','Yellow',NULL,12,'AQHA','Adam Rose','Rope',NULL,NULL,'Gelding');
INSERT INTO [Horses] ([Id],[Name],[Address],[Age],[Breed],[CustomerName],[Discipline],[EmailAddress],[PhoneNumber],[Sex]) VALUES (
'2422d933-29ea-e911-84e7-44032cebb6d4','Real Deal',NULL,11,'AQHA','Adam Rose','Barrels',NULL,NULL,'Gelding');
INSERT INTO [Horses] ([Id],[Name],[Address],[Age],[Breed],[CustomerName],[Discipline],[EmailAddress],[PhoneNumber],[Sex]) VALUES (
'2522d933-29ea-e911-84e7-44032cebb6d4','Jeanne',NULL,3,'AQHA','Jeanne Lindblom','Barrels',NULL,NULL,'Mare');
INSERT INTO [Horses] ([Id],[Name],[Address],[Age],[Breed],[CustomerName],[Discipline],[EmailAddress],[PhoneNumber],[Sex]) VALUES (
'2622d933-29ea-e911-84e7-44032cebb6d4','Dusty',NULL,18,'AQHA','Jeff Butler','Rope',NULL,NULL,'Gelding');
INSERT INTO [Horses] ([Id],[Name],[Address],[Age],[Breed],[CustomerName],[Discipline],[EmailAddress],[PhoneNumber],[Sex]) VALUES (
'2722d933-29ea-e911-84e7-44032cebb6d4','Switch',NULL,17,'AQHA','Kristin Boardman','Rope',NULL,NULL,'Gelding');
INSERT INTO [Horses] ([Id],[Name],[Address],[Age],[Breed],[CustomerName],[Discipline],[EmailAddress],[PhoneNumber],[Sex]) VALUES (
'2822d933-29ea-e911-84e7-44032cebb6d4','Boomer',NULL,9,'AQHA','Kristin Boardman','Barrels',NULL,NULL,'Gelding');
INSERT INTO [Horses] ([Id],[Name],[Address],[Age],[Breed],[CustomerName],[Discipline],[EmailAddress],[PhoneNumber],[Sex]) VALUES (
'2922d933-29ea-e911-84e7-44032cebb6d4','Alice',NULL,16,'AQHA','Adam Rose','Rope',NULL,NULL,'Gelding');
INSERT INTO [Horses] ([Id],[Name],[Address],[Age],[Breed],[CustomerName],[Discipline],[EmailAddress],[PhoneNumber],[Sex]) VALUES (
'2a22d933-29ea-e911-84e7-44032cebb6d4','Night Train',NULL,10,'AQHA','Adam Rose','Rope',NULL,NULL,'Gelding');
INSERT INTO [Horses] ([Id],[Name],[Address],[Age],[Breed],[CustomerName],[Discipline],[EmailAddress],[PhoneNumber],[Sex]) VALUES (
'2b22d933-29ea-e911-84e7-44032cebb6d4','Kathy',NULL,0,'AQHA','Kathy Samillion','Halter',NULL,NULL,'Gelding');
INSERT INTO [Horses] ([Id],[Name],[Address],[Age],[Breed],[CustomerName],[Discipline],[EmailAddress],[PhoneNumber],[Sex]) VALUES (
'2c22d933-29ea-e911-84e7-44032cebb6d4','Faith',NULL,0,'AQHA','Faith','Barrels',NULL,NULL,'Stallion');
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'd2f76343-2aea-e911-84e7-44032cebb6d4','1f22d933-29ea-e911-84e7-44032cebb6d4','2019-04-20 00:00:00.000',2540,550,1100,1500,6.7,140,9.6,0.58,0.36,0.16,8.2,4.3,0.13,347,1.4,5.7,39400,0.066,140,0.046,2,0.16,56,0.015,0.11,4,0.01,0.002,0.01,0.12,0.03,0.25,0.02,0.012,0.027,0.02,3.2,0.011,'BUTLER-S-00667','H1900320-2233-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'd3f76343-2aea-e911-84e7-44032cebb6d4','1f22d933-29ea-e911-84e7-44032cebb6d4','2019-06-20 00:00:00.000',1980,410,250,470,5.8,120,8.3,0.45,0.22,0.14,6.4,2.5,0.077,329,0.91,4.6,34500,0.065,140,0.038,0.63,0.18,56,0.011,0.098,3.3,0.01,0.002,0.009,0.14,0.03,0.21,0.03,0.01,0.026,0.02,1.5,0.012,'SQUEEZE\--00001','H190701-2427-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'd4f76343-2aea-e911-84e7-44032cebb6d4','1f22d933-29ea-e911-84e7-44032cebb6d4','2019-09-09 00:00:00.000',2340,490,410,980,6.6,140,9.5,0.6,0.26,0.14,9.6,0.61,0.14,352,1,5.9,37700,0.074,230,0.049,1,0.29,64,0.014,0.15,4.1,0.01,0.002,0.012,0.17,0.03,0.43,0.09,0.012,0.036,0.05,1.7,0.017,'SQUEEZE\--00002','H190913-2297-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'd5f76343-2aea-e911-84e7-44032cebb6d4','2022d933-29ea-e911-84e7-44032cebb6d4','2019-03-20 00:00:00.000',1260,210,400,510,6.4,160,6.5,0.57,0.41,0.084,1.5,1.9,0.12,311,0.65,2.3,38000,0.073,160,0.048,0.76,0.21,68,0.014,0.15,2.5,0.01,0.002,0.009,0.13,0.03,0.23,0.01,0.006,0.033,0.02,3.6,0.013,'Butler-D-00666','H190320-2212-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'd6f76343-2aea-e911-84e7-44032cebb6d4','2022d933-29ea-e911-84e7-44032cebb6d4','2019-04-20 00:00:00.000',1610,310,180,190,6.3,140,11,0.47,0.35,0.092,3.5,6.3,0.11,310,0.58,4.1,37100,0.085,130,0.047,0.39,0.19,160,0.012,0.12,3.3,0.01,0.002,0.021,0.14,0.03,0.27,0.02,0.006,0.027,0.02,2.8,0.009,'Dessy\--00001','H190422-2174-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'd7f76343-2aea-e911-84e7-44032cebb6d4','2022d933-29ea-e911-84e7-44032cebb6d4','2019-06-20 00:00:00.000',1660,140,93,130,5.4,130,8.8,0.52,0.22,0.078,1.4,1.4,0.083,357,0.63,3.5,38800,0.065,130,0.041,0.3,0.14,66,0.01,0.097,3.6,0.01,0.002,0.009,0.11,0.03,0.22,0.02,0.003,0.026,0.02,1.6,0.013,'DESSY\--00003','H190701-2425-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'd8f76343-2aea-e911-84e7-44032cebb6d4','2022d933-29ea-e911-84e7-44032cebb6d4','2019-09-09 00:00:00.000',1440,290,310,630,6.2,150,7.9,0.55,0.29,0.097,1.6,0.85,0.12,281,0.61,8.8,37900,0.085,170,0.041,0.73,0.19,89,0.013,0.16,3,0.01,0.002,0.009,0.17,0.03,0.27,0.03,0.004,0.038,0.02,1.8,0.014,'DESSY\---00004','H190913-2294-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'd9f76343-2aea-e911-84e7-44032cebb6d4','2122d933-29ea-e911-84e7-44032cebb6d4','2019-06-20 00:00:00.000',1880,270,6,110,5.6,140,4.9,0.37,0.14,0.094,2.1,0.37,0.053,492,1.1,3.7,39400,0.045,64,0.039,0.27,0.12,46,0.011,0.071,2.2,0.01,0.002,0.021,0.11,0.03,0.17,0.01,0.005,0.018,0.02,2.1,0.012,'UNKNOWN-M-01614','H190506-2524-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'daf76343-2aea-e911-84e7-44032cebb6d4','2122d933-29ea-e911-84e7-44032cebb6d4','2019-09-09 00:00:00.000',1510,290,270,1000,5.5,140,3.5,0.51,0.11,0.091,1.9,0.27,0.061,421,0.82,3.2,39100,0.026,44,0.031,0.61,0.067,25,0.01,0.087,2.2,0.01,0.002,0.009,0.05,0.03,0.11,0.03,0.003,0.007,0.02,0.99,0.002,'MIKE\--00012','H190913-2304-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'dbf76343-2aea-e911-84e7-44032cebb6d4','2222d933-29ea-e911-84e7-44032cebb6d4','2019-03-26 00:00:00.000',1100,200,330,340,5.5,130,6.3,0.59,0.28,0.16,1.9,0.53,0.062,326,1,2,41800,0.061,120,0.049,0.48,0.17,66,0.01,0.12,1.7,0.01,0.004,0.009,0.13,0.03,0.25,0.04,0.006,0.023,0.02,1.7,0.008,'BULER-R-00665','H190320-2226-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'dcf76343-2aea-e911-84e7-44032cebb6d4','2222d933-29ea-e911-84e7-44032cebb6d4','2019-06-20 00:00:00.000',1100,150,100,130,4.7,110,4.6,0.42,0.11,0.14,2.9,1.1,0.045,320,0.82,2.5,37700,0.032,51,0.032,0.21,0.14,29,0.01,0.039,1.7,0.01,0.002,0.009,0.06,0.03,0.13,0.04,0.003,0.011,0.02,0.91,0.007,'RED\--00006','H190701-2428-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'ddf76343-2aea-e911-84e7-44032cebb6d4','2222d933-29ea-e911-84e7-44032cebb6d4','2019-09-09 00:00:00.000',1350,240,430,750,16,130,7,0.5,0.14,0.13,7,0.82,0.075,334,1,2.9,41300,0.042,64,0.036,0.64,0.22,27,0.01,0.078,2.4,0.01,0.002,0.015,0.09,0.03,0.22,0.2,0.004,0.01,0.02,1,0.005,'RED\--0007','H190913-2301-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'def76343-2aea-e911-84e7-44032cebb6d4','2322d933-29ea-e911-84e7-44032cebb6d4','2019-04-24 00:00:00.000',916,240,200,290,8.2,150,7.4,0.54,0.24,0.052,1.4,0.77,0.085,441,0.6,2.6,39300,0.069,61,0.039,0.41,0.18,90,0.01,0.14,1.7,0.01,0.004,0.015,0.19,0.03,0.09,0.02,0.002,0.021,0.02,3.5,0.008,'Yellow\--00001','H190422-2176-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'dff76343-2aea-e911-84e7-44032cebb6d4','2322d933-29ea-e911-84e7-44032cebb6d4','2019-10-10 00:00:00.000',1080,200,230,630,12,180,10,0.64,0.27,0.058,2.1,0.7,0.066,447,0.63,1.4,37800,0.069,110,0.038,0.59,0.31,77,0.022,0.14,2.8,0.01,0.014,0.023,0.25,0.03,0.21,0.07,0.002,0.031,0.02,2.3,0.009,'YELLOW\--00002','H1901004-2287-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'e0f76343-2aea-e911-84e7-44032cebb6d4','2422d933-29ea-e911-84e7-44032cebb6d4','2019-04-24 00:00:00.000',1010,160,43,100,7.2,150,8.8,0.66,0.25,0.22,1.3,0.76,0.062,456,0.5,3,40500,0.072,76,0.045,0.31,0.26,64,0.017,0.081,2,0.01,0.015,0.009,0.25,0.03,0.14,0.02,0.003,0.023,0.54,3.8,0.008,'Deal-R-00078','H190422-2175-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'e1f76343-2aea-e911-84e7-44032cebb6d4','2422d933-29ea-e911-84e7-44032cebb6d4','2019-06-15 00:00:00.000',1170,150,43,180,7.5,160,7.1,0.51,0.13,0.22,2.6,0.9,0.058,570,0.66,2.9,38500,0.034,47,0.032,0.27,0.2,39,0.014,0.066,2,0.01,0.002,0.009,0.18,0.03,0.18,0.03,0.004,0.01,0.02,1.9,0.005,'REALDEAL\--00001','H190719-2067-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'e2f76343-2aea-e911-84e7-44032cebb6d4','2422d933-29ea-e911-84e7-44032cebb6d4','2019-10-10 00:00:00.000',1250,220,100,440,7.7,170,15,0.52,0.19,0.21,2.4,0.74,0.07,494,0.77,3.3,38700,0.08,74,0.035,0.62,0.22,46,0.015,0.1,2.8,0.01,0.008,0.016,0.33,0.03,0.17,0.06,0.005,0.021,0.02,2.1,0.007,'DEAL-R-00078','H191003-2326-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'e3f76343-2aea-e911-84e7-44032cebb6d4','2522d933-29ea-e911-84e7-44032cebb6d4','2019-06-20 00:00:00.000',1810,370,460,460,6.6,120,4.4,0.48,0.12,0.22,2.1,0.21,0.032,345,0.72,3,36500,0.03,45,0.031,0.53,0.11,28,0.021,0.027,2.8,0.01,0.002,0.014,0.12,0.03,0.2,0.03,0.005,0.011,0.02,1,0.004,'JEANNE\--00007','H190701-2429-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'e4f76343-2aea-e911-84e7-44032cebb6d4','2622d933-29ea-e911-84e7-44032cebb6d4','2019-06-20 00:00:00.000',1090,190,130,210,5.9,140,6.9,0.52,0.17,0.082,2.4,3,0.044,267,0.54,2.3,36100,0.52,85,0.033,0.3,0.12,36,0.01,0.073,1.9,0.01,0.002,0.009,0.16,0.03,0.13,0.02,0.004,0.014,0.02,1.1,0.008,'DUSTY\--00002','H190701-2424-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'e5f76343-2aea-e911-84e7-44032cebb6d4','2622d933-29ea-e911-84e7-44032cebb6d4','2019-09-09 00:00:00.000',1120,190,190,340,5.8,140,8.6,0.65,0.29,0.096,1.9,0.75,0.076,353,0.72,2.5,40700,0.072,190,0.045,0.45,0.25,78,0.01,0.16,3.4,0.01,0.002,0.012,0.15,0.03,0.27,0.06,0.004,0.037,0.02,1.8,0.014,'DUSTY\--00003','H190913-2299-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'e6f76343-2aea-e911-84e7-44032cebb6d4','2722d933-29ea-e911-84e7-44032cebb6d4','2019-06-20 00:00:00.000',1870,330,250,1000,6.4,160,8.3,0.59,0.24,0.31,4.7,1.2,0.074,383,1.1,38,38700,0.06,98,0.039,0.65,0.13,62,0.019,0.12,2.6,0.01,0.025,0.015,0.67,0.03,0.27,0.14,0.005,0.02,0.03,3.5,0.005,'SWITCH\--00001','H190708-2405-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'e7f76343-2aea-e911-84e7-44032cebb6d4','2722d933-29ea-e911-84e7-44032cebb6d4','2019-09-09 00:00:00.000',2890,430,180,710,6.8,140,12,0.53,0.2,0.29,5.1,0.71,0.055,354,0.74,64,38900,0.07,73,0.036,0.53,0.26,41,0.015,0.075,4.5,0.01,0.002,0.016,0.56,0.03,0.26,0.21,0.004,0.014,0.03,1.7,0.006,'SWITCH\--00002','H190913-2288-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'e8f76343-2aea-e911-84e7-44032cebb6d4','2822d933-29ea-e911-84e7-44032cebb6d4','2019-06-20 00:00:00.000',1150,270,180,340,6,130,6.3,0.45,0.11,0.2,1.8,0.36,0.017,375,0.8,26,38200,0.037,39,0.031,0.21,0.067,19,0.01,0.039,1.4,0.01,0.006,0.009,0.07,0.03,0.18,0.11,0.002,0.006,0.02,1.1,0.003,'BEEMER\--0012','H190708-2598-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'e9f76343-2aea-e911-84e7-44032cebb6d4','2822d933-29ea-e911-84e7-44032cebb6d4','2019-09-09 00:00:00.000',2190,380,190,500,6,130,9,0.49,0.16,0.19,2.3,0.34,0.054,376,0.75,59,39200,0.047,55,0.035,0.36,15,30,0.01,0.058,3,0.01,0.002,0.01,0.09,0.03,0.19,0.05,0.003,0.01,0.05,1.3,0.004,'BOOMER-00013','H190913-2303-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'eaf76343-2aea-e911-84e7-44032cebb6d4','2922d933-29ea-e911-84e7-44032cebb6d4','2019-08-06 00:00:00.000',1200,190,29,89,6.4,140,8.1,0.5,0.25,0.26,4.3,0.53,0.11,456,0.71,3.3,39000,0.059,84,0.042,0.29,0.25,81,0.017,0.084,3.2,0.01,0.002,0.009,0.13,0.03,0.15,0.07,0.004,0.03,0.02,2.7,0.012,'ALICE\--00008','H190802-2217-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'ebf76343-2aea-e911-84e7-44032cebb6d4','2922d933-29ea-e911-84e7-44032cebb6d4','2019-10-10 00:00:00.000',1270,200,31,110,7.8,160,6.2,0.56,0.11,0.2,2.6,0.39,0.019,464,1,2.5,39500,0.035,47,0.033,0.12,0.17,24,0.026,0.066,1.6,0.01,0.006,0.009,0.13,0.03,0.13,0.09,0.003,0.009,0.02,1.3,0.003,'ALICE\--00009','H1901003-2325-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'ecf76343-2aea-e911-84e7-44032cebb6d4','2a22d933-29ea-e911-84e7-44032cebb6d4','2019-08-06 00:00:00.000',2560,590,170,410,6,130,29,0.6,0.33,0.31,7.4,0.67,0.12,390,0.72,7.2,34400,0.11,89,0.038,0.78,0.18,79,0.039,0.056,7,0.01,0.002,0.026,0.19,0.03,0.26,0.08,0.008,0.028,0.02,2.7,0.011,'TRAIN-N-00008','H190802-2260-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'edf76343-2aea-e911-84e7-44032cebb6d4','2b22d933-29ea-e911-84e7-44032cebb6d4','2019-09-09 00:00:00.000',1350,240,38,100,5.3,130,7.2,0.45,0.14,0.2,2.3,0.36,0.087,356,0.81,3,37300,0.038,77,0.036,0.29,0.2,77,0.01,0.088,2.1,0.01,0.002,0.016,0.12,0.03,0.32,0.02,0.004,0.03,0.02,2.7,0.006,'KATHY\--00001','H190903-2140-1',0);
INSERT INTO [Labs] ([LabId],[HorseId],[LabDate],[Calcium],[Magnesium],[Sodium],[Potassium],[Copper],[Zinc],[Manganese],[Chromium],[Vanadium],[Molybdenum],[Boron],[Iodine],[Lithium],[Phosphorus],[Selenium],[Strontium],[Sulfur],[Cobalt],[Iron],[Germanium],[Rubidium],[Zirconium],[Aluminum],[Antimony],[Arsenic],[Barium],[Beryllium],[Bismuth],[Cadmium],[Lead],[Mercury],[Nickel],[Silver],[Thallium],[Thorium],[Tin],[Titanium],[Uranium],[SampleId],[LabNumber],[Platinum]) VALUES (
'eef76343-2aea-e911-84e7-44032cebb6d4','2c22d933-29ea-e911-84e7-44032cebb6d4','2019-09-09 00:00:00.000',1460,200,18,88,5.9,150,9.9,0.41,0.12,0.17,1.3,0.35,0.054,386,0.65,5.9,34900,0.04,53,0.034,0.18,0.15,54,0.012,0.31,2.8,0.01,0.024,0.019,0.32,0.03,0.17,0.15,0.004,0.02,0.02,1.7,0.008,'KATHY\--00001','H190903-2136-1',0);
COMMIT;

