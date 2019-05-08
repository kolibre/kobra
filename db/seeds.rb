# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create([{ name: 'BOOK' }, { name: 'MAGAZINE' },
                              { name: 'NEWSPAPER' }, { name: 'OTHER' }])
question_types = QuestionType.create([{ name: 'multipleChoiceQuestion' },
                                      { name: 'inputQuestion' },
                                      { name: 'choice' },
                                      { name: 'contentListRef' },
                                      { name: 'label' }])
states = State.create([{ state: 'START'}, { state: 'PAUSE' },
                       { state: 'RESUME' }, { state: 'FINISH' }])
content_lists = ContentList.create([{ name: 'bookshelf' }, { name: 'new' },
                                    { name: 'issued' }, { name: 'expired' },
                                    { name: 'search' }, { name: 'browse' }])
ContentList.find_by(name: 'search').update_column(:id, 20)
ContentList.find_by(name: 'browse').update_column(:id, 30)
languages = Language.create([{ lang: 'en' }, { lang: 'sv' }, { lang: 'fi' }])
daisy_formats = DaisyFormat.create([{ format: 'Daisy 2.02' },
                                    { format: 'ANSI/NISO Z39.86-2005' },
                                    { format: 'PDTB2' }])


# Seed database with test data
announcements = Announcement.create([
    {category: 'INFORMATION', priority: 'MEDIUM'},
    {category: 'INFORMATION', priority: 'LOW'},
])
announcement_texts = AnnouncementText.create([
    {announcement_id: 1, text: 'Welcome to the Kolibre Daisy Online demo service.', language_id: '1'},
    {announcement_id: 1, text: 'Välkommen till Kolibres Daisy Online demo tjänst.', language_id: '2'},
    {announcement_id: 2, text: 'Feel free to use and explore this service. Remember to mark the announcements as read when you have read them.', language_id: '1'},
    {announcement_id: 2, text: 'Du kan fritt använda och utforska denna tjänst. Kom ihåg att markera meddelandena som lästa efter att du läst dem.', language_id: '2'},
])
announcement_audios = AnnouncementAudio.create([
    {announcement_text_id: 1, size: 24677, length: 2594},
    {announcement_text_id: 2, size: 27392, length: 2880},
    {announcement_text_id: 3, size: 53310, length: 5680},
    {announcement_text_id: 4, size: 63226, length: 6952},
])
contents = Content.create([
    {category_id: 1, daisy_format_id: 1, title: 'A light Man'},
    {category_id: 1, daisy_format_id: 2, title: 'Are you ready?'},
    {category_id: 1, daisy_format_id: 1, title: 'Climbing the Highest Mountain'},
])
content_audios = ContentAudio.create([
    {content_id: 1, size: 44724, length: 6315},
    {content_id: 2, size: 16139, length: 5201},
    {content_id: 3, size: 20335, length: 1945},
])
content_metadata = ContentMetadatum.create([
    {content_id: 1, key: 'dc:creator', value: 'Henry James'},
    {content_id: 1, key: 'dc:date', value: '2009-06-22'},
    {content_id: 1, key: 'dc:format', value: 'Daisy 2.02'},
    {content_id: 1, key: 'dc:identifier', value: 'Unknown'},
    {content_id: 1, key: 'dc:language', value: 'en'},
    {content_id: 1, key: 'dc:publisher', value: 'DC'},
    {content_id: 1, key: 'dc:source', value: 'The galaxy vol. 8 no. 1 (July 1869),   pages 49-68'},
    {content_id: 1, key: 'dc:subject', value: 'Relationships, betrayal'},
    {content_id: 1, key: 'dc:title', value: 'A light Man'},
    {content_id: 1, key: 'ncc:charset', value: 'utf-8'},
    {content_id: 1, key: 'ncc:depth', value: '1'},
    {content_id: 1, key: 'ncc:files', value: '36'},
    {content_id: 1, key: 'ncc:footnotes', value: '0'},
    {content_id: 1, key: 'ncc:generator', value: 'EasePublisher 2.13 Build 163 # 044FS2212172434'},
    {content_id: 1, key: 'ncc:kbytesize', value: '35930'},
    {content_id: 1, key: 'ncc:maxpagenormal', value: '26'},
    {content_id: 1, key: 'ncc:multimediatype', value: 'audioNcc'},
    {content_id: 1, key: 'ncc:narrator', value: 'OM'},
    {content_id: 1, key: 'ncc:pagefront', value: '0'},
    {content_id: 1, key: 'ncc:pagenormal', value: '26'},
    {content_id: 1, key: 'ncc:pagespecial', value: '0'},
    {content_id: 1, key: 'ncc:prodnotes', value: '0'},
    {content_id: 1, key: 'ncc:setinfo', value: '1 of 1'},
    {content_id: 1, key: 'ncc:sidebars', value: '0'},
    {content_id: 1, key: 'ncc:sourcedate', value: '2009-07-18'},
    {content_id: 1, key: 'ncc:sourceedition', value: '1.'},
    {content_id: 1, key: 'ncc:sourcepublisher', value: 'The galaxy vol. 8 no. 1 (July 1869),   pages 49-68'},
    {content_id: 1, key: 'ncc:sourcerights', value: 'Gutenberg project'},
    {content_id: 1, key: 'ncc:sourcetitle', value: 'A light man'},
    {content_id: 1, key: 'ncc:tocitems', value: '43'},
    {content_id: 1, key: 'ncc:totaltime', value: '01:27:15'},
    {content_id: 1, key: 'prod:ep_update', value: ''},
    {content_id: 1, key: 'prod:last_used_id', value: ''},
    {content_id: 2, key: 'dc:creator', value: 'WikiHow'},
    {content_id: 2, key: 'dc:date', value: '2009-04-26'},
    {content_id: 2, key: 'dc:format', value: 'ANSI/NIZO Z39.86-2005'},
    {content_id: 2, key: 'dc:identifier', value: '5078727220897727718'},
    {content_id: 2, key: 'dc:language', value: 'en-IN'},
    {content_id: 2, key: 'dc:publisher', value: 'DAISY India'},
    {content_id: 2, key: 'dc:subject', value: 'A Short Manual for Disaster Management'},
    {content_id: 2, key: 'dc:title', value: 'ARE YOU READY?'},
    {content_id: 3, key: 'dc:title', value: 'Climbing the Highest Mountain'},
    {content_id: 3, key: 'dc:creator', value: 'Per Sennels'},
    {content_id: 3, key: 'dc:date', value: '2003-05-08'},
    {content_id: 3, key: 'dc:format', value: 'Daisy 2.02'},
    {content_id: 3, key: 'dc:identifier', value: 'skipdemo-amsterdam'},
    {content_id: 3, key: 'dc:language', value: 'en'},
    {content_id: 3, key: 'dc:publisher', value: 'DAISY Consortium'},
    {content_id: 3, key: 'dc:subject', value: 'Mountains'},
    {content_id: 3, key: 'ncc:pagefront', value: '0'},
    {content_id: 3, key: 'ncc:pagenormal', value: '8'},
    {content_id: 3, key: 'ncc:pagespecial', value: '0'},
    {content_id: 3, key: 'ncc:setinfo', value: '1 of 1'},
    {content_id: 3, key: 'ncc:depth', value: '3'},
    {content_id: 3, key: 'ncc:maxpagenormal', value: '8'},
    {content_id: 3, key: 'ncc:multimediatype', value: 'audioNcc'},
    {content_id: 3, key: 'ncc:narrator', value: 'Joan Dahm-Simonsen'},
    {content_id: 3, key: 'ncc:producer', value: 'Huseby kompetansesenter'},
    {content_id: 3, key: 'ncc:generator', value: 'Skippability Tweaker 0.1.53'},
    {content_id: 3, key: 'ncc:sidebars', value: '4'},
    {content_id: 3, key: 'ncc:prodnotes', value: '2'},
    {content_id: 3, key: 'ncc:footnotes', value: '1'},
    {content_id: 3, key: 'ncc:totaltime', value: '00:05:27'},
    {content_id: 3, key: 'ncc:charset', value: 'windows-1252'},
    {content_id: 3, key: 'ncc:files', value: '20'},
    {content_id: 3, key: 'ncc:kbytesize', value: '1975'},
    {content_id: 3, key: 'ncc:tocitems', value: '23'},
])
content_resources = ContentResource.create([
    {content_id: 1, file_name: '01_A_light_Man.mp3', bytes: 45531, mime_type: 'application/octet-stream'},
    {content_id: 1, file_name: '02_Epigraph.mp3', bytes: 176822, mime_type: 'application/octet-stream'},
    {content_id: 1, file_name: '03_April_4th_1857.mp3', bytes: 1540205, mime_type: 'application/octet-stream'},
    {content_id: 1, file_name: '04_7th_.mp3', bytes: 1204845, mime_type: 'application/octet-stream'},
    {content_id: 1, file_name: '05_D_the_14th_.mp3', bytes: 8934948, mime_type: 'application/octet-stream'},
    {content_id: 1, file_name: '06_19th_.mp3', bytes: 2863908, mime_type: 'application/octet-stream'},
    {content_id: 1, file_name: '07_22d_.mp3', bytes: 4464640, mime_type: 'application/octet-stream'},
    {content_id: 1, file_name: '08_26th_.mp3', bytes: 1939748, mime_type: 'application/octet-stream'},
    {content_id: 1, file_name: '09_May_3d_.mp3', bytes: 1940662, mime_type: 'application/octet-stream'},
    {content_id: 1, file_name: '10_8th_.mp3', bytes: 2005028, mime_type: 'application/octet-stream'},
    {content_id: 1, file_name: '11_13th_.mp3', bytes: 741302, mime_type: 'application/octet-stream'},
    {content_id: 1, file_name: '12_18th_.mp3', bytes: 691565, mime_type: 'application/octet-stream'},
    {content_id: 1, file_name: '13_20th_.mp3', bytes: 2834468, mime_type: 'application/octet-stream'},
    {content_id: 1, file_name: '14_21st_.mp3', bytes: 1639497, mime_type: 'application/octet-stream'},
    {content_id: 1, file_name: '15_22d_.mp3', bytes: 451657, mime_type: 'application/octet-stream'},
    {content_id: 1, file_name: '16_23d_.mp3', bytes: 4836205, mime_type: 'application/octet-stream'},
    {content_id: 1, file_name: '17_24th_.mp3', bytes: 348342, mime_type: 'application/octet-stream'},
    {content_id: 1, file_name: 'er_book_info.xml', bytes: 1108, mime_type: 'text/plain'},
    {content_id: 1, file_name: 'icth0001.smil', bytes: 1086, mime_type: 'text/plain'},
    {content_id: 1, file_name: 'icth0002.smil', bytes: 2128, mime_type: 'text/plain'},
    {content_id: 1, file_name: 'icth0003.smil', bytes: 6888, mime_type: 'text/plain'},
    {content_id: 1, file_name: 'icth0004.smil', bytes: 4667, mime_type: 'text/plain'},
    {content_id: 1, file_name: 'icth0005.smil', bytes: 27641, mime_type: 'text/plain'},
    {content_id: 1, file_name: 'icth0006.smil', bytes: 10464, mime_type: 'text/plain'},
    {content_id: 1, file_name: 'icth0007.smil', bytes: 12533, mime_type: 'text/plain'},
    {content_id: 1, file_name: 'icth0008.smil', bytes: 6417, mime_type: 'text/plain'},
    {content_id: 1, file_name: 'icth0009.smil', bytes: 6967, mime_type: 'text/plain'},
    {content_id: 1, file_name: 'icth000a.smil', bytes: 6154, mime_type: 'text/plain'},
    {content_id: 1, file_name: 'icth000b.smil', bytes: 2248, mime_type: 'text/plain'},
    {content_id: 1, file_name: 'icth000c.smil', bytes: 2417, mime_type: 'text/plain'},
    {content_id: 1, file_name: 'icth000d.smil', bytes: 7990, mime_type: 'text/plain'},
    {content_id: 1, file_name: 'icth000e.smil', bytes: 5311, mime_type: 'text/plain'},
    {content_id: 1, file_name: 'icth000f.smil', bytes: 2517, mime_type: 'text/plain'},
    {content_id: 1, file_name: 'icth0010.smil', bytes: 17455, mime_type: 'text/plain'},
    {content_id: 1, file_name: 'icth0011.smil', bytes: 2217, mime_type: 'text/plain'},
    {content_id: 1, file_name: 'master.smil', bytes: 1866, mime_type: 'text/plain'},
    {content_id: 1, file_name: 'ncc.html', bytes: 5759, mime_type: 'text/html'},
    {content_id: 1, file_name: 'smil10.dtd', bytes: 7496, mime_type: 'text/html'},
    {content_id: 1, file_name: 'xhtml-lat1.ent', bytes: 11789, mime_type: 'text/html'},
    {content_id: 1, file_name: 'xhtml-special.ent', bytes: 4144, mime_type: 'text/html'},
    {content_id: 1, file_name: 'xhtml-symbol.ent', bytes: 14127, mime_type: 'text/html'},
    {content_id: 1, file_name: 'xhtml1-transitional.dtd', bytes: 33441, mime_type: 'text/html'},
    {content_id: 2, file_name: 'AreYouReadyV3.xml', bytes: 89235, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'dtbookbasic.css', bytes: 12801, mime_type: 'text/x-c'},
    {content_id: 2, file_name: 'image1.jpg', bytes: 6168, mime_type: 'image/jpeg'},
    {content_id: 2, file_name: 'image11.jpg', bytes: 5586, mime_type: 'image/jpeg'},
    {content_id: 2, file_name: 'image12.jpg', bytes: 4826, mime_type: 'image/jpeg'},
    {content_id: 2, file_name: 'image13.jpg', bytes: 12586, mime_type: 'image/jpeg'},
    {content_id: 2, file_name: 'image14.jpg', bytes: 17587, mime_type: 'image/jpeg'},
    {content_id: 2, file_name: 'image2.jpg', bytes: 8577, mime_type: 'image/jpeg'},
    {content_id: 2, file_name: 'image3.jpg', bytes: 5981, mime_type: 'image/jpeg'},
    {content_id: 2, file_name: 'image4.jpg', bytes: 4720, mime_type: 'image/jpeg'},
    {content_id: 2, file_name: 'image5.jpg', bytes: 6589, mime_type: 'image/jpeg'},
    {content_id: 2, file_name: 'speechgen.ncx', bytes: 18280, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen.opf', bytes: 8897, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0001.mp3', bytes: 32757, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0001.smil', bytes: 882, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0002.mp3', bytes: 215823, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0002.smil', bytes: 2716, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0003.mp3', bytes: 285257, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0003.smil', bytes: 5457, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0004.mp3', bytes: 228832, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0004.smil', bytes: 1477, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0005.mp3', bytes: 1865456, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0005.smil', bytes: 10463, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0006.mp3', bytes: 735399, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0006.smil', bytes: 4470, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0007.mp3', bytes: 105482, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0007.smil', bytes: 1438, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0008.mp3', bytes: 95294, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0008.smil', bytes: 1491, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0009.mp3', bytes: 794801, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0009.smil', bytes: 7443, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0010.mp3', bytes: 258299, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0010.smil', bytes: 2873, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0011.mp3', bytes: 249835, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0011.smil', bytes: 2192, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0012.mp3', bytes: 225071, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0012.smil', bytes: 2285, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0013.mp3', bytes: 1677374, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0013.smil', bytes: 11510, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0014.mp3', bytes: 372872, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0014.smil', bytes: 2480, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0015.mp3', bytes: 439327, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0015.smil', bytes: 3243, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0016.mp3', bytes: 121469, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0016.smil', bytes: 1691, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0017.mp3', bytes: 2289110, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0017.smil', bytes: 17070, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0018.mp3', bytes: 1220493, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0018.smil', bytes: 9825, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0019.mp3', bytes: 181185, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0019.smil', bytes: 1640, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0020.mp3', bytes: 1113756, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0020.smil', bytes: 7023, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0021.mp3', bytes: 446694, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0021.smil', bytes: 3453, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0022.mp3', bytes: 191216, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0022.smil', bytes: 1492, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0023.mp3', bytes: 1083977, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0023.smil', bytes: 6373, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0024.mp3', bytes: 354690, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0024.smil', bytes: 2690, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0025.mp3', bytes: 193410, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0025.smil', bytes: 1835, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0026.mp3', bytes: 112222, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0026.smil', bytes: 1493, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0027.mp3', bytes: 605466, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0027.smil', bytes: 4580, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0028.mp3', bytes: 136516, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0028.smil', bytes: 1430, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0029.mp3', bytes: 92943, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0029.smil', bytes: 1439, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0030.mp3', bytes: 112535, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0030.smil', bytes: 1493, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0031.mp3', bytes: 1319863, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0031.smil', bytes: 10153, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0032.mp3', bytes: 584150, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0032.smil', bytes: 5658, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0033.mp3', bytes: 256104, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0033.smil', bytes: 1850, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'speechgen0034.mp3', bytes: 284630, mime_type: 'application/octet-stream'},
    {content_id: 2, file_name: 'speechgen0034.smil', bytes: 2480, mime_type: 'text/plain'},
    {content_id: 2, file_name: 'tpbnarrator.res', bytes: 9458, mime_type: 'text/html'},
    {content_id: 2, file_name: 'tpbnarrator_res.mp3', bytes: 117656, mime_type: 'application/octet-stream'},
    {content_id: 3, file_name: 'ncconlydemo.html', bytes: 3642, mime_type: 'application/xml'},
    {content_id: 3, file_name: 'bagw0008.smil', bytes: 2714, mime_type: 'application/xml'},
    {content_id: 3, file_name: 'bagw0017.mp3', bytes: 124760, mime_type: 'audio/mpeg'},
    {content_id: 3, file_name: 'bagw0019.mp3', bytes: 180558, mime_type: 'audio/mpeg'},
    {content_id: 3, file_name: 'bagw0006.smil', bytes: 2765, mime_type: 'application/xml'},
    {content_id: 3, file_name: 'bagw001B.mp3', bytes: 285570, mime_type: 'audio/mpeg'},
    {content_id: 3, file_name: 'bagw0014.mp3', bytes: 391836, mime_type: 'audio/mpeg'},
    {content_id: 3, file_name: 'bagw0007.smil', bytes: 1567, mime_type: 'application/xml'},
    {content_id: 3, file_name: 'bagw0018.mp3', bytes: 65515, mime_type: 'audio/mpeg'},
    {content_id: 3, file_name: 'bagw001A.mp3', bytes: 129776, mime_type: 'audio/mpeg'},
    {content_id: 3, file_name: 'bagw0005.smil', bytes: 1130, mime_type: 'application/xml'},
    {content_id: 3, file_name: 'master.smil', bytes: 1196, mime_type: 'application/xml'},
    {content_id: 3, file_name: 'bagw0003.smil', bytes: 2419, mime_type: 'application/xml'},
    {content_id: 3, file_name: 'ncc.html', bytes: 4296, mime_type: 'application/xml'},
    {content_id: 3, file_name: 'bagw0002.smil', bytes: 1334, mime_type: 'application/xml'},
    {content_id: 3, file_name: 'narrator_1.css', bytes: 5204, mime_type: 'text/plain'},
    {content_id: 3, file_name: 'default_1.css', bytes: 5053, mime_type: 'text/plain'},
    {content_id: 3, file_name: 'bagw001C.mp3', bytes: 451552, mime_type: 'audio/mpeg'},
    {content_id: 3, file_name: 'bagw0001.smil', bytes: 1728, mime_type: 'application/xml'},
    {content_id: 3, file_name: 'bagw001D.mp3', bytes: 335882, mime_type: 'audio/mpeg'},
    {content_id: 3, file_name: 'bagw0004.smil', bytes: 3047, mime_type: 'application/xml'},
])
# questions = Question.create([
#     {id: 1, parent: 0, question_type_id: 1}, # MAIN MENU
#     {id: 2, parent: 1, question_type_id: 3}, # search option
#     {id: 3, parent: 1, question_type_id: 3}, # browse option
#     {id: 4, parent: 1, question_type_id: 3}, # feedback option
#     {id: 20, parent: 2, question_type_id: 1}, # SEARCH MENU
#     {id: 21, parent: 20, question_type_id: 3}, # search by author
#     {id: 22, parent: 20, question_type_id: 3}, # search by title
#     {id: 23, parent: 21, question_type_id: 2}, # input for search by author
#     {id: 24, parent: 22, question_type_id: 2}, # input for search by title
#     {id: 25, parent: 23, question_type_id: 4}, # endpoint for search by author
#     {id: 26, parent: 24, question_type_id: 4}, # endpoint for search by title
#     {id: 30, parent: 3, question_type_id: 1}, # BROWSE MENU
#     {id: 31, parent: 30, question_type_id: 3}, # browse by title
#     {id: 32, parent: 30, question_type_id: 3}, # browse by daisy2
#     {id: 33, parent: 30, question_type_id: 3}, # browse by daisy3
#     {id: 34, parent: 31, question_type_id: 4}, # endpoint for browse by title
#     {id: 35, parent: 32, question_type_id: 4}, # endpoint for browse by daisy2
#     {id: 36, parent: 33, question_type_id: 4}, # endpoint for browse by daisy3
#     {id: 40, parent: 4, question_type_id: 1}, # FEEDBACK MENU (rate)
#     {id: 41, parent: 4, question_type_id: 2}, # FEEDBACK MENU (custom feedback)
#     {id: 42, parent: 40, question_type_id: 3}, # rate option excellent
#     {id: 43, parent: 40, question_type_id: 3}, # rate option good
#     {id: 44, parent: 40, question_type_id: 3}, # rate option fair
#     {id: 45, parent: 40, question_type_id: 3}, # rate option poor
#     {id: 46, parent: 41, question_type_id: 5}, # endpoint for feedback
#     {id: 47, parent: 42, question_type_id: 5}, # endpoint for feedback
#     {id: 48, parent: 43, question_type_id: 5}, # endpoint for feedback
#     {id: 49, parent: 44, question_type_id: 5}, # endpoint for feedback
#     {id: 50, parent: 45, question_type_id: 5}, # endpoint for feedback
# ])
# Insert qith raw since the above failed
# NOTE: only for SQLite3
connection = ActiveRecord::Base.connection()
sql = <<-EOL
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (1,0,1,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (2,1,3,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (3,1,3,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (4,1,3,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (20,2,1,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (21,20,3,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (22,20,3,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (23,21,2,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (24,22,2,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (25,23,4,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (26,24,4,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (30,3,1,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (31,30,3,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (32,30,3,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (33,30,3,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (34,31,4,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (35,32,4,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (36,33,4,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (40,4,1,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (41,4,2,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (42,40,3,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (43,40,3,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (44,40,3,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (45,40,3,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (46,41,5,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (47,42,5,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (48,43,5,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (49,44,5,datetime('now'),datetime('now'));
  INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (50,45,5,datetime('now'),datetime('now'));
EOL
sql.split(';').each do |s|
  connection.execute(s.strip) unless s.strip.empty?
end
question_inputs = QuestionInput.create([
    {question_id: 1},
    {question_id: 20},
    {question_id: 23, text_alphanumeric: 1},
    {question_id: 24, text_alphanumeric: 1},
    {question_id: 30},
    {question_id: 40},
    {question_id: 41, text_alphanumeric: 1},
])
question_texts = QuestionText.create([
    {language_id: 1, text: 'What would you like to do?'},
    {language_id: 2, text: 'Vad vill du göra?'},
    {language_id: 1, text: 'Search the library.'},
    {language_id: 2, text: 'Söka i biblioteket.'},
    {language_id: 1, text: 'Browse the library.'},
    {language_id: 2, text: 'Utforska biblioteket.'},
    {language_id: 1, text: 'Give feedback.'},
    {language_id: 2, text: 'Ge feedback.'},
    {language_id: 1, text: 'What do you want to search by?'},
    {language_id: 2, text: 'Vad vill du söka enligt?'},
    {language_id: 1, text: 'Search by author.'},
    {language_id: 2, text: 'Sök bland författare.'},
    {language_id: 1, text: 'Search by title.'},
    {language_id: 2, text: 'Sök bland titel.'},
    {language_id: 1, text: 'Author keywords:'},
    {language_id: 2, text: 'Sökord författare:'},
    {language_id: 1, text: 'Title keywords:'},
    {language_id: 2, text: 'Sökord titel:'},
    {language_id: 1, text: 'How do you want to browse the library?'},
    {language_id: 2, text: 'Hur vill du utforska biblioteket?'},
    {language_id: 1, text: 'Browse by title.'},
    {language_id: 2, text: 'Utforska bland titlar.'},
    {language_id: 1, text: 'Browse by Daisy 2 content format.'},
    {language_id: 2, text: 'Utforska bland Daisy 2 filformat.'},
    {language_id: 1, text: 'Browse by Daisy 3 content format.'},
    {language_id: 2, text: 'Utforska bland Daisy 3 filformat.'},
    {language_id: 1, text: 'How would you rate this service?'},
    {language_id: 2, text: 'Hur skulle du betygsätta denna tjänst?'},
    {language_id: 1, text: 'Optional feedback?'},
    {language_id: 2, text: 'Frivillig feedback?'},
    {language_id: 1, text: 'Excellent.'},
    {language_id: 2, text: 'Utmärkt.'},
    {language_id: 1, text: 'Good.'},
    {language_id: 2, text: 'Bra.'},
    {language_id: 1, text: 'Fair.'},
    {language_id: 2, text: 'Dålig.'},
    {language_id: 1, text: 'Poor.'},
    {language_id: 2, text: 'Usel.'},
    {language_id: 1, text: 'Thank you for your feedback.'},
    {language_id: 2, text: 'Tack för din feedback.'},
])
question_audios = QuestionAudio.create([
    {question_text_id: 1, size: 13817, length: 1303},
    {question_text_id: 2, size: 14634, length: 1049},
    {question_text_id: 3, size: 13649, length: 1016},
    {question_text_id: 4, size: 14255, length: 1358},
    {question_text_id: 5, size: 13414, length: 971},
    {question_text_id: 6, size: 14323, length: 1427},
    {question_text_id: 7, size: 10317, length: 776},
    {question_text_id: 8, size: 11936, length: 865},
    {question_text_id: 9, size: 16948, length: 1731},
    {question_text_id: 10, size: 15906, length: 1495},
    {question_text_id: 11, size: 12455, length: 920},
    {question_text_id: 12, size: 12857, length: 1475},
    {question_text_id: 13, size: 10729, length: 1016},
    {question_text_id: 14, size: 11504, length: 1092},
    {question_text_id: 15, size: 11760, length: 926},
    {question_text_id: 16, size: 13190, length: 1380},
    {question_text_id: 17, size: 9871, length: 972},
    {question_text_id: 18, size: 9975, length: 997},
    {question_text_id: 19, size: 22087, length: 1985},
    {question_text_id: 20, size: 21288, length: 2002},
    {question_text_id: 21, size: 9715, length: 972},
    {question_text_id: 22, size: 13854, length: 1339},
    {question_text_id: 23, size: 19397, length: 2018},
    {question_text_id: 24, size: 20361, length: 2267},
    {question_text_id: 25, size: 19313, length: 2052},
    {question_text_id: 26, size: 21900, length: 2292},
    {question_text_id: 27, size: 17356, length: 1507},
    {question_text_id: 28, size: 21999, length: 2198},
    {question_text_id: 29, size: 11525, length: 1027},
    {question_text_id: 30, size: 15271, length: 1219},
    {question_text_id: 31, size: 8239, length: 635},
    {question_text_id: 32, size: 9086, length: 662},
    {question_text_id: 33, size: 5465, length: 324},
    {question_text_id: 34, size: 8102, length: 447},
    {question_text_id: 35, size: 7485, length: 394},
    {question_text_id: 36, size: 6234, length: 424},
    {question_text_id: 37, size: 5358, length: 318},
    {question_text_id: 38, size: 7797, length: 429},
    {question_text_id: 39, size: 15523, length: 1368},
    {question_text_id: 40, size: 14041, length: 1320},
])
question_question_texts = QuestionQuestionText.create([
    {question_id: 1, question_text_id: 1},
    {question_id: 1, question_text_id: 2},
    {question_id: 2, question_text_id: 3},
    {question_id: 2, question_text_id: 4},
    {question_id: 3, question_text_id: 5},
    {question_id: 3, question_text_id: 6},
    {question_id: 4, question_text_id: 7},
    {question_id: 4, question_text_id: 8},
    {question_id: 20, question_text_id: 9},
    {question_id: 20, question_text_id: 10},
    {question_id: 21, question_text_id: 11},
    {question_id: 21, question_text_id: 12},
    {question_id: 22, question_text_id: 13},
    {question_id: 22, question_text_id: 14},
    {question_id: 23, question_text_id: 15},
    {question_id: 23, question_text_id: 16},
    {question_id: 24, question_text_id: 17},
    {question_id: 24, question_text_id: 18},
    {question_id: 30, question_text_id: 19},
    {question_id: 30, question_text_id: 20},
    {question_id: 31, question_text_id: 21},
    {question_id: 31, question_text_id: 22},
    {question_id: 32, question_text_id: 23},
    {question_id: 32, question_text_id: 24},
    {question_id: 33, question_text_id: 25},
    {question_id: 33, question_text_id: 26},
    {question_id: 40, question_text_id: 27},
    {question_id: 40, question_text_id: 28},
    {question_id: 41, question_text_id: 29},
    {question_id: 41, question_text_id: 30},
    {question_id: 42, question_text_id: 31},
    {question_id: 42, question_text_id: 32},
    {question_id: 43, question_text_id: 33},
    {question_id: 43, question_text_id: 34},
    {question_id: 44, question_text_id: 35},
    {question_id: 44, question_text_id: 26},
    {question_id: 45, question_text_id: 37},
    {question_id: 45, question_text_id: 38},
    {question_id: 46, question_text_id: 39},
    {question_id: 46, question_text_id: 40},
    {question_id: 47, question_text_id: 39},
    {question_id: 47, question_text_id: 40},
    {question_id: 48, question_text_id: 39},
    {question_id: 48, question_text_id: 40},
    {question_id: 49, question_text_id: 39},
    {question_id: 49, question_text_id: 40},
    {question_id: 50, question_text_id: 39},
    {question_id: 50, question_text_id: 40},
])
users = User.create([{username: 'kolibre', password: 'kolibre', log: 1}])
user_announcements = UserAnnouncement.create([
    {user_id: 1, announcement_id: 1},
    {user_id: 1, announcement_id: 2},
])
# user_contents = UserContent.create([
#     {user_id: 1, content_id: 1, content_list_id: 1, content_list_v1_id: 2, return: 1},
#     {user_id: 1, content_id: 2, content_list_id: 1, content_list_v1_id: 2, return: 1},
#     {user_id: 1, content_id: 3, content_list_id: 1, content_list_v1_id: 2, return: 1},
# ])
# Insert qith raw since the above did not produce any entries
# NOTE: only for SQLite3
connection = ActiveRecord::Base.connection()
sql = <<-EOL
  INSERT INTO user_contents (user_id, content_id, content_list_id, content_list_v1_id, return, updated_at, created_at) VALUES (1,1,1,2,1,datetime('now'),datetime('now'));
  INSERT INTO user_contents (user_id, content_id, content_list_id, content_list_v1_id, return, updated_at, created_at) VALUES (1,2,1,2,1,datetime('now'),datetime('now'));
  INSERT INTO user_contents (user_id, content_id, content_list_id, content_list_v1_id, return, updated_at, created_at) VALUES (1,3,1,2,1,datetime('now'),datetime('now'));
EOL
sql.split(';').each do |s|
  connection.execute(s.strip) unless s.strip.empty?
end