// بعد ما أنشأت ال Ui وبلشت بال logic 
//  لازم انتبه ان التطبيق بيشتغل ع ال divice يعني localy بدون نت 
// حنستعمل hive<package> يلي بتسبه بتعاملها التعامل مع ال firebase  
// هي اسرع من ال mySql  وال mySql بدا يكون عندك خلفية ع SQUL 
//---------------------------------------------------------------------
// هلق لازم نبلش بال model 
// فيك تستعمل Pubspec Assist  بشريط البحث ثم تضيف ال  package التي انت بحاجتها 
// ال hive :  هي يلي لح استعملها لل local data pase فيك تستعملها في dart||flutter 
// hive_flutter : هي بس extention من  hive بتخليك تشتغل ل  flutter 
// بس لازم يكون عندك التنتين موجودين 
// build_runner : هي بحطها بال dev_dependinces هي بتعمل generate code وانا بدي 
// generate code ل flutter لهيك أنا بستعمل hive_generator
// هلق بدي ما أنشأت ال model بدي أعمل generate type adapter بصفحة note_model 
// بعدين لازم Init Hive  يعني بروح على main.dart وأعمل initialais  ل hive
  // انتبه انك تعمل __ import hive ( dart ) __
  // بتحط بال main  >>    async   {} >> 
  // await Hive.initFlutter();
  // بعدين   await Hive.openBox(kNoteBox); حيث KNoteBox هي String حطيتها بملف constent 
// هلق تقريبا خلصناها بقيان بس save بيانات , view بيانات 
