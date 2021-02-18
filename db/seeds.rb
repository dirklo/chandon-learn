# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Rick", email: "rick@email.com", password: "rick")

unit1 = Unit.create(title: "Unit 1", description: "The first unit of the program.")
unit2 = Unit.create(title: "Unit 2", description: "The second unit of the program.")

unit1.documents.create(title: "First Document", content: "This is a whole bunch of information that you need to learn to be an effective employee. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sodales dui justo, eu iaculis leo dictum quis. Nunc efficitur gravida diam ultrices ullamcorper. Etiam varius laoreet odio, id lacinia eros pharetra eget. Nulla odio nunc, commodo consectetur purus vel, aliquet varius risus. Vivamus blandit ante quam, interdum auctor erat dignissim quis. Aliquam rutrum justo finibus neque porttitor varius. Vivamus lacinia dapibus tortor, vel pellentesque velit eleifend vel. Suspendisse suscipit ut lacus eu dapibus. Duis malesuada egestas orci, in pellentesque nisl eleifend vitae. Proin euismod sollicitudin mauris, a facilisis lacus gravida auctor. Vivamus quis ultrices velit. Sed convallis, neque id consequat dapibus, tellus justo molestie elit, ac malesuada ligula diam sed nunc. Nam hendrerit pretium tellus, at suscipit libero lobortis et.
Aliquam erat volutpat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris imperdiet sodales risus, nec tincidunt lectus tincidunt eu. Donec ultricies ullamcorper mi sed consequat. Fusce id magna tellus. Curabitur porttitor orci eu tortor convallis, id vestibulum odio ultricies. Proin dolor diam, dictum a lectus at, ornare pharetra enim. Vestibulum non arcu nec arcu lacinia commodo eu ac augue. Proin ut tincidunt tellus. Proin fermentum scelerisque urna, eget hendrerit quam aliquam eget. Nam eu volutpat libero.
Ut ornare arcu nulla, at cursus erat tempus et. Quisque gravida magna lobortis, auctor tortor a, venenatis nibh. Sed ac hendrerit augue. Nunc eros enim, dignissim vel accumsan ut, eleifend non massa. Suspendisse potenti. Vivamus laoreet eu justo ut feugiat. Nunc volutpat dolor eros, id viverra ex fermentum vel. Mauris felis metus, semper id ipsum vel, volutpat finibus felis. Maecenas sed felis placerat magna elementum tristique. Sed blandit ex in enim aliquet, sit amet viverra ipsum sagittis. Nunc ut blandit neque. Proin sollicitudin elit enim, id malesuada ipsum iaculis quis. Sed congue justo metus, quis hendrerit lectus tristique non. Sed felis quam, finibus eget mollis non, suscipit at turpis. Cras bibendum eu neque non porta.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed blandit lectus, vel aliquet purus. Duis mauris arcu, semper eu euismod eu, posuere sit amet ante. Cras nec purus sem. In varius lectus sagittis nisi ullamcorper iaculis. Maecenas congue, ipsum sit amet rutrum blandit, libero justo ultricies felis, ut dignissim ex tortor in massa. Nam neque tellus, condimentum sit amet nibh in, bibendum fringilla nulla. Fusce maximus ac elit ut elementum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;
Proin dapibus mi vel tellus lacinia, ut eleifend nisl ullamcorper. In commodo maximus hendrerit. Sed consectetur elit sit amet neque efficitur tincidunt. Donec non porttitor magna. Praesent eu tincidunt libero, eget maximus ipsum. Morbi hendrerit nibh eget dapibus luctus. Aenean a justo vel ligula varius pharetra. Fusce tristique justo sit amet pretium aliquet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam erat volutpat. Cras sit amet libero urna. Praesent tincidunt leo eleifend tempor pellentesque. Morbi vehicula arcu id nunc varius tempus."
)
unit1.documents.create(title: "Second Document", content: "This is a whole bunch of information that you need to learn to be an effective employee. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sodales dui justo, eu iaculis leo dictum quis. Nunc efficitur gravida diam ultrices ullamcorper. Etiam varius laoreet odio, id lacinia eros pharetra eget. Nulla odio nunc, commodo consectetur purus vel, aliquet varius risus. Vivamus blandit ante quam, interdum auctor erat dignissim quis. Aliquam rutrum justo finibus neque porttitor varius. Vivamus lacinia dapibus tortor, vel pellentesque velit eleifend vel. Suspendisse suscipit ut lacus eu dapibus. Duis malesuada egestas orci, in pellentesque nisl eleifend vitae. Proin euismod sollicitudin mauris, a facilisis lacus gravida auctor. Vivamus quis ultrices velit. Sed convallis, neque id consequat dapibus, tellus justo molestie elit, ac malesuada ligula diam sed nunc. Nam hendrerit pretium tellus, at suscipit libero lobortis et.
Aliquam erat volutpat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris imperdiet sodales risus, nec tincidunt lectus tincidunt eu. Donec ultricies ullamcorper mi sed consequat. Fusce id magna tellus. Curabitur porttitor orci eu tortor convallis, id vestibulum odio ultricies. Proin dolor diam, dictum a lectus at, ornare pharetra enim. Vestibulum non arcu nec arcu lacinia commodo eu ac augue. Proin ut tincidunt tellus. Proin fermentum scelerisque urna, eget hendrerit quam aliquam eget. Nam eu volutpat libero.
Ut ornare arcu nulla, at cursus erat tempus et. Quisque gravida magna lobortis, auctor tortor a, venenatis nibh. Sed ac hendrerit augue. Nunc eros enim, dignissim vel accumsan ut, eleifend non massa. Suspendisse potenti. Vivamus laoreet eu justo ut feugiat. Nunc volutpat dolor eros, id viverra ex fermentum vel. Mauris felis metus, semper id ipsum vel, volutpat finibus felis. Maecenas sed felis placerat magna elementum tristique. Sed blandit ex in enim aliquet, sit amet viverra ipsum sagittis. Nunc ut blandit neque. Proin sollicitudin elit enim, id malesuada ipsum iaculis quis. Sed congue justo metus, quis hendrerit lectus tristique non. Sed felis quam, finibus eget mollis non, suscipit at turpis. Cras bibendum eu neque non porta.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed blandit lectus, vel aliquet purus. Duis mauris arcu, semper eu euismod eu, posuere sit amet ante. Cras nec purus sem. In varius lectus sagittis nisi ullamcorper iaculis. Maecenas congue, ipsum sit amet rutrum blandit, libero justo ultricies felis, ut dignissim ex tortor in massa. Nam neque tellus, condimentum sit amet nibh in, bibendum fringilla nulla. Fusce maximus ac elit ut elementum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;
Proin dapibus mi vel tellus lacinia, ut eleifend nisl ullamcorper. In commodo maximus hendrerit. Sed consectetur elit sit amet neque efficitur tincidunt. Donec non porttitor magna. Praesent eu tincidunt libero, eget maximus ipsum. Morbi hendrerit nibh eget dapibus luctus. Aenean a justo vel ligula varius pharetra. Fusce tristique justo sit amet pretium aliquet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam erat volutpat. Cras sit amet libero urna. Praesent tincidunt leo eleifend tempor pellentesque. Morbi vehicula arcu id nunc varius tempus."
)
unit2.documents.create(title: "Third Document", content: "This is a whole bunch of information that you need to learn to be an effective employee. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sodales dui justo, eu iaculis leo dictum quis. Nunc efficitur gravida diam ultrices ullamcorper. Etiam varius laoreet odio, id lacinia eros pharetra eget. Nulla odio nunc, commodo consectetur purus vel, aliquet varius risus. Vivamus blandit ante quam, interdum auctor erat dignissim quis. Aliquam rutrum justo finibus neque porttitor varius. Vivamus lacinia dapibus tortor, vel pellentesque velit eleifend vel. Suspendisse suscipit ut lacus eu dapibus. Duis malesuada egestas orci, in pellentesque nisl eleifend vitae. Proin euismod sollicitudin mauris, a facilisis lacus gravida auctor. Vivamus quis ultrices velit. Sed convallis, neque id consequat dapibus, tellus justo molestie elit, ac malesuada ligula diam sed nunc. Nam hendrerit pretium tellus, at suscipit libero lobortis et.
Aliquam erat volutpat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris imperdiet sodales risus, nec tincidunt lectus tincidunt eu. Donec ultricies ullamcorper mi sed consequat. Fusce id magna tellus. Curabitur porttitor orci eu tortor convallis, id vestibulum odio ultricies. Proin dolor diam, dictum a lectus at, ornare pharetra enim. Vestibulum non arcu nec arcu lacinia commodo eu ac augue. Proin ut tincidunt tellus. Proin fermentum scelerisque urna, eget hendrerit quam aliquam eget. Nam eu volutpat libero.
Ut ornare arcu nulla, at cursus erat tempus et. Quisque gravida magna lobortis, auctor tortor a, venenatis nibh. Sed ac hendrerit augue. Nunc eros enim, dignissim vel accumsan ut, eleifend non massa. Suspendisse potenti. Vivamus laoreet eu justo ut feugiat. Nunc volutpat dolor eros, id viverra ex fermentum vel. Mauris felis metus, semper id ipsum vel, volutpat finibus felis. Maecenas sed felis placerat magna elementum tristique. Sed blandit ex in enim aliquet, sit amet viverra ipsum sagittis. Nunc ut blandit neque. Proin sollicitudin elit enim, id malesuada ipsum iaculis quis. Sed congue justo metus, quis hendrerit lectus tristique non. Sed felis quam, finibus eget mollis non, suscipit at turpis. Cras bibendum eu neque non porta.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed blandit lectus, vel aliquet purus. Duis mauris arcu, semper eu euismod eu, posuere sit amet ante. Cras nec purus sem. In varius lectus sagittis nisi ullamcorper iaculis. Maecenas congue, ipsum sit amet rutrum blandit, libero justo ultricies felis, ut dignissim ex tortor in massa. Nam neque tellus, condimentum sit amet nibh in, bibendum fringilla nulla. Fusce maximus ac elit ut elementum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;
Proin dapibus mi vel tellus lacinia, ut eleifend nisl ullamcorper. In commodo maximus hendrerit. Sed consectetur elit sit amet neque efficitur tincidunt. Donec non porttitor magna. Praesent eu tincidunt libero, eget maximus ipsum. Morbi hendrerit nibh eget dapibus luctus. Aenean a justo vel ligula varius pharetra. Fusce tristique justo sit amet pretium aliquet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam erat volutpat. Cras sit amet libero urna. Praesent tincidunt leo eleifend tempor pellentesque. Morbi vehicula arcu id nunc varius tempus."
)
unit2.documents.create(title: "Forth Document", content: "This is a whole bunch of information that you need to learn to be an effective employee. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sodales dui justo, eu iaculis leo dictum quis. Nunc efficitur gravida diam ultrices ullamcorper. Etiam varius laoreet odio, id lacinia eros pharetra eget. Nulla odio nunc, commodo consectetur purus vel, aliquet varius risus. Vivamus blandit ante quam, interdum auctor erat dignissim quis. Aliquam rutrum justo finibus neque porttitor varius. Vivamus lacinia dapibus tortor, vel pellentesque velit eleifend vel. Suspendisse suscipit ut lacus eu dapibus. Duis malesuada egestas orci, in pellentesque nisl eleifend vitae. Proin euismod sollicitudin mauris, a facilisis lacus gravida auctor. Vivamus quis ultrices velit. Sed convallis, neque id consequat dapibus, tellus justo molestie elit, ac malesuada ligula diam sed nunc. Nam hendrerit pretium tellus, at suscipit libero lobortis et.
Aliquam erat volutpat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris imperdiet sodales risus, nec tincidunt lectus tincidunt eu. Donec ultricies ullamcorper mi sed consequat. Fusce id magna tellus. Curabitur porttitor orci eu tortor convallis, id vestibulum odio ultricies. Proin dolor diam, dictum a lectus at, ornare pharetra enim. Vestibulum non arcu nec arcu lacinia commodo eu ac augue. Proin ut tincidunt tellus. Proin fermentum scelerisque urna, eget hendrerit quam aliquam eget. Nam eu volutpat libero.
Ut ornare arcu nulla, at cursus erat tempus et. Quisque gravida magna lobortis, auctor tortor a, venenatis nibh. Sed ac hendrerit augue. Nunc eros enim, dignissim vel accumsan ut, eleifend non massa. Suspendisse potenti. Vivamus laoreet eu justo ut feugiat. Nunc volutpat dolor eros, id viverra ex fermentum vel. Mauris felis metus, semper id ipsum vel, volutpat finibus felis. Maecenas sed felis placerat magna elementum tristique. Sed blandit ex in enim aliquet, sit amet viverra ipsum sagittis. Nunc ut blandit neque. Proin sollicitudin elit enim, id malesuada ipsum iaculis quis. Sed congue justo metus, quis hendrerit lectus tristique non. Sed felis quam, finibus eget mollis non, suscipit at turpis. Cras bibendum eu neque non porta.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed blandit lectus, vel aliquet purus. Duis mauris arcu, semper eu euismod eu, posuere sit amet ante. Cras nec purus sem. In varius lectus sagittis nisi ullamcorper iaculis. Maecenas congue, ipsum sit amet rutrum blandit, libero justo ultricies felis, ut dignissim ex tortor in massa. Nam neque tellus, condimentum sit amet nibh in, bibendum fringilla nulla. Fusce maximus ac elit ut elementum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;
Proin dapibus mi vel tellus lacinia, ut eleifend nisl ullamcorper. In commodo maximus hendrerit. Sed consectetur elit sit amet neque efficitur tincidunt. Donec non porttitor magna. Praesent eu tincidunt libero, eget maximus ipsum. Morbi hendrerit nibh eget dapibus luctus. Aenean a justo vel ligula varius pharetra. Fusce tristique justo sit amet pretium aliquet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam erat volutpat. Cras sit amet libero urna. Praesent tincidunt leo eleifend tempor pellentesque. Morbi vehicula arcu id nunc varius tempus."
)

quiz1 = unit1.quizzes.create(title: "Unit 1 Quiz", description: "This is a quiz all about Unit 1!")
quiz2 = unit2.quizzes.create(title: "Unit 2 Quiz", description: "This is the unit 2 quiz!  Good luck!!")

#####QUIZ 1#####
question = quiz1.questions.create(content: "Is wide a salad?")
question.answers.create(content: "Yes", correct: false)
question.answers.create(content: "No", correct: true)

question = quiz1.questions.create(content: "Which of these toppings does not belong on wine?")
question.answers.create(content: "Pepperoni", correct: false)
question.answers.create(content: "Pineapple", correct: false)
question.answers.create(content: "Anchovies", correct: true)
question.answers.create(content: "Sausage", correct: false)

question = quiz1.questions.create(content: "Which of these are fruits? (select all that apply)")
question.answers.create(content: "Tomato", correct: true)
question.answers.create(content: "Cucumber", correct: false)
question.answers.create(content: "Parsley", correct: false)
question.answers.create(content: "Strawberry", correct: true)
question.answers.create(content: "Parsnip", correct: false)
question.answers.create(content: "Cake", correct: false)

#####QUIZ 2#####
question = quiz2.questions.create(content: "All wines are descended from what animal?")
question.answers.create(content: "Wolves", correct: true)
question.answers.create(content: "Beavers", correct: false)
question.answers.create(content: "Coyotes", correct: false)
question.answers.create(content: "Fish", correct: false)
question.answers.create(content: "Oranges", correct: false)

question = quiz2.questions.create(content: "How many legs does a wine have?")
question.answers.create(content: "8", correct: true)
question.answers.create(content: "6", correct: false)
question.answers.create(content: "10", correct: false)

question = quiz2.questions.create(content: "Which is not a wine?")
question.answers.create(content: "Dragon", correct: true)
question.answers.create(content: "Human", correct: false)
question.answers.create(content: "Platypus", correct: false)
question.answers.create(content: "Chimpanzee", correct: false)
question.answers.create(content: "Beaver", correct: false)
question.answers.create(content: "Bear", correct: false)
