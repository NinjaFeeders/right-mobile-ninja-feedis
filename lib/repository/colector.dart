import 'package:feedis/constants/path_constants.dart';
import 'package:feedis/model/message.dart';

class Colector{

  static List<Message> tabela = [
    Message(icon: PathConstants.userFeedIcon, user: 'Fulano', title: 'Meu titulo', bodyMessage: "Se trata de um texto muito interessante Se trata de um texto muito interessante escrito por mim para representar o corpo do texto" * 10, status: false, likes: '3', deslikes: '4'),
    Message(icon: PathConstants.userFeedIcon, user: 'Ciclano', title: 'Eu ensino', bodyMessage: "Não se trata de um texto muito diferente" * 10, status: true, likes: '3', deslikes: '6'),
    Message(icon: PathConstants.userFeedIcon, user: 'Beltrano', title: 'Você aprende', bodyMessage: "lore ipsulum rex vox cumulus testius mandatorios" * 10, status: true,likes: '7', deslikes: '4'),
    Message(icon: PathConstants.userFeedIcon, user: 'Fulano', title: 'Meu titulo', bodyMessage: "Se trata de um texto muito interessante" * 10, status: false, likes: '3', deslikes: '4'),
    Message(icon: PathConstants.userFeedIcon, user: 'Fulano', title: 'Meu titulo', bodyMessage: "Se trata de um texto muito interessante Se trata de um texto muito interessante escrito por mim para representar o corpo do texto" * 10, status: false, likes: '3', deslikes: '4'),
    Message(icon: PathConstants.userFeedIcon, user: 'Ciclano', title: 'Eu ensino', bodyMessage: "Não se trata de um texto muito diferente" * 10, status: true, likes: '3', deslikes: '6'),
    Message(icon: PathConstants.userFeedIcon, user: 'Beltrano', title: 'Você aprende', bodyMessage: "lore ipsulum rex vox cumulus testius mandatorios" * 10, status: true,likes: '7', deslikes: '4'),
    Message(icon: PathConstants.userFeedIcon, user: 'Fulano', title: 'Meu titulo', bodyMessage: "Se trata de um texto muito interessante" * 10, status: false, likes: '3', deslikes: '4'),
  ];
}