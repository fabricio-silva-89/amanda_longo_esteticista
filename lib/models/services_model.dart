import 'package:amanda_longo_esteticista/shared/web_images.dart';

class ServicesModel {
  final int id;
  final String type;
  final String title;
  final String description;
  final String image;

  ServicesModel({
    required this.id,
    required this.type,
    required this.title,
    required this.description,
    required this.image,
  });
}

List<ServicesModel> services = [
  ServicesModel(
    id: 1,
    type: "corporal",
    title: "Drenagem Linfática",
    description:
        "Uma massagem que melhora o sistema linfático e digestório. Elimina o inchaço, atua no relaxamento do corpo e da mente.",
    image: WebImages.vessel_icon,
  ),
  ServicesModel(
    id: 2,
    type: "corporal",
    title: "Massagem Relaxante",
    description:
        "Atua no relaxamento do corpo, melhora dores da região obtendo um bem estar e leveza.",
    image: WebImages.massage_icon,
  ),
  ServicesModel(
    id: 3,
    type: "corporal",
    title: "Ventosaterapia",
    description:
        "A ventosaterapia é feita no corpo todo, fazendo uma oxigenação do corpo e do sistema linfático, melhorando o sistema digestório, inchaço e dores musculares.",
    image: WebImages.cupping_icon,
  ),
  ServicesModel(
    id: 4,
    type: "corporal",
    title: "Kinesio Taping",
    description:
        "Técnica que auxilia nas dores, diminuindo o inchaço e drenando a região.",
    image: WebImages.tape_icon,
  ),
  ServicesModel(
    id: 5,
    type: "corporal",
    title: "Pré e Pós Operatório",
    description:
        "É feita uma preparação na pela para receber a operação na região. Através da massagem, descongestiona as vias linfáticas, estimulando a circulação e melhorando a oxigenação dos tecidos, promovendo uma melhor cicatrização.",
    image: WebImages.operation_icon,
  ),
  ServicesModel(
    id: 6,
    type: "corporal",
    title: "Detox",
    description:
        "O detox corporal é ideal para quem busca eliminar toxinas, líquidos e inchaços. Melhora o sistema vascular que atua diretamente no sistema linfático.",
    image: WebImages.detox_icon,
  ),
  ServicesModel(
    id: 7,
    type: "corporal",
    title: "Estrias",
    description:
        "São três tipos de procedimentos que utilizo para melhorar a falta de colágeno, atuando no estiramento das estrias, fazendo com que diminui tanto de tamanho quanto de largura.",
    image: WebImages.stretch_marks_icon,
  ),
  ServicesModel(
    id: 8,
    type: "corporal",
    title: "Sem Celulite",
    description:
        "A celulite nada mais é que uma inflamação no tecido adposo. O tratamento ajuda na circulação sanguínea, melhorando o aspecto da pele, atuando na celulite mista e flácida, compacta, edematosa e dura.",
    image: WebImages.cellulitis_icon,
  ),
  ServicesModel(
    id: 9,
    type: "corporal",
    title: "Sem Flacidez",
    description:
        "O aparelho tem um efeito vasodilatador causando um aumento da temperatura na região, atuando na circulação sanguínea e se regenerando nas fibras de colágeno e elasticidade.",
    image: WebImages.fat_icon,
  ),
  ServicesModel(
    id: 10,
    type: "corporal",
    title: "Modelagem do Bumbum",
    description:
        "Através de uma ventosa fazendo a sucção, aumenta a circulação sanguínea, causando uma remodelagem que vem a levantar a região glútea.",
    image: WebImages.butt_icon,
  ),
  ServicesModel(
    id: 11,
    type: "facial",
    title: "Limpeza de Pele",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt ligula odio, vel iaculis orci sodales ut.",
    image: WebImages.limpeza_pele_icon,
  ),
  ServicesModel(
    id: 12,
    type: "facial",
    title: "Peeling Diamante",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt ligula odio, vel iaculis orci sodales ut.",
    image: WebImages.peeling_icon,
  ),
  ServicesModel(
    id: 13,
    type: "facial",
    title: "Microagulhamento Facial",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt ligula odio, vel iaculis orci sodales ut.",
    image: WebImages.microagulhamento_icon,
  ),
  ServicesModel(
    id: 14,
    type: "facial",
    title: "Drenagem Linfática Facial",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt ligula odio, vel iaculis orci sodales ut.",
    image: WebImages.vessel_icon,
  ),
  ServicesModel(
    id: 15,
    type: "facial",
    title: "Relaxante Facial",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt ligula odio, vel iaculis orci sodales ut.",
    image: WebImages.relaxante_facial_icon,
  ),
  ServicesModel(
    id: 16,
    type: "facial",
    title: "Rejuvenescimento Facial",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt ligula odio, vel iaculis orci sodales ut.",
    image: WebImages.rejuvenescimento_icon,
  ),
  ServicesModel(
    id: 17,
    type: "facial",
    title: "Hidratação Fios de Seda",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt ligula odio, vel iaculis orci sodales ut.",
    image: WebImages.lotion_icon,
  ),
];
