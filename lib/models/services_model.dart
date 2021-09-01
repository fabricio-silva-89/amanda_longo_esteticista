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
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt ligula odio, vel iaculis orci sodales ut.",
    image: WebImages.vessel_icon,
  ),
  ServicesModel(
    id: 2,
    type: "corporal",
    title: "Massagem Relaxante",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt ligula odio, vel iaculis orci sodales ut.",
    image: WebImages.massage_icon,
  ),
  ServicesModel(
    id: 3,
    type: "corporal",
    title: "Ventosoterapia",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt ligula odio, vel iaculis orci sodales ut.",
    image: WebImages.cupping_icon,
  ),
  ServicesModel(
    id: 4,
    type: "corporal",
    title: "Kinesio Taping",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt ligula odio, vel iaculis orci sodales ut.",
    image: WebImages.tape_icon,
  ),
  ServicesModel(
    id: 5,
    type: "corporal",
    title: "Pré e Pós Operatório",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt ligula odio, vel iaculis orci sodales ut.",
    image: WebImages.operation_icon,
  ),
  ServicesModel(
    id: 6,
    type: "corporal",
    title: "Detox",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt ligula odio, vel iaculis orci sodales ut.",
    image: WebImages.detox_icon,
  ),
  ServicesModel(
    id: 7,
    type: "corporal",
    title: "Estrias",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt ligula odio, vel iaculis orci sodales ut.",
    image: WebImages.stretch_marks_icon,
  ),
  ServicesModel(
    id: 8,
    type: "corporal",
    title: "Sem Celulite",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt ligula odio, vel iaculis orci sodales ut.",
    image: WebImages.cellulitis_icon,
  ),
  ServicesModel(
    id: 9,
    type: "corporal",
    title: "Sem Flacidez",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt ligula odio, vel iaculis orci sodales ut.",
    image: WebImages.fat_icon,
  ),
  ServicesModel(
    id: 10,
    type: "corporal",
    title: "Modelagem do Bumbum",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt ligula odio, vel iaculis orci sodales ut.",
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
