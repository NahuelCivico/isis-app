import 'package:isisapp/features/students/models/student_model.dart';

class StudentsService {
  static List<StudentModel> getStudents() {
    return [
      StudentModel(
        name: 'Nahuel',
        lastName: 'Civico',
        email: 'ncivico@gmail.com',
        phone: '340212304492',
        address: '3 de febrero 123',
        city: 'Arroyo Seco, Santa Fe, Argentina',
      ),
      StudentModel(
        name: 'Jose',
        lastName: 'Civico',
        email: 'jivico@gmail.com',
        phone: '34021454292',
        address: '3 de febrero 123',
        city: 'Arroyo Seco, Santa Fe, Argentina',
      ),
      StudentModel(
        name: 'Damian',
        lastName: 'Civico',
        email: 'divico@gmail.com',
        phone: '34021245542',
        address: '3 de febrero 123',
        city: 'Arroyo Seco, Santa Fe, Argentina',
      ),
      StudentModel(
        name: 'Daniel',
        lastName: 'Herrera',
        email: 'danielherrera@gmail.com',
        phone: '34021245542',
        address: '3 de febrero 123',
        city: 'Arroyo Seco, Santa Fe, Argentina',
      ),
      StudentModel(
        name: 'Sol',
        lastName: 'Pacor',
        email: 'spacor@gmail.com',
        phone: '34021245542',
        address: '3 de febrero 123',
        city: 'Arroyo Seco, Santa Fe, Argentina',
      ),
      StudentModel(
        name: 'Maria',
        lastName: 'Pellegrino',
        email: 'mpellegrino@gmail.com',
        phone: '34021245542',
        address: '3 de febrero 123',
        city: 'Arroyo Seco, Santa Fe, Argentina',
      ),
      StudentModel(
        name: 'Maria Luz',
        lastName: 'Civico',
        email: 'mlcivico@gmail.com',
        phone: '34021240311',
        address: '3 de febrero 123',
        city: 'Arroyo Seco, Santa Fe, Argentina',
      ),
      StudentModel(
        name: 'Cristian',
        lastName: 'Pellegrino',
        email: 'cpellegrino@gmail.com',
        phone: '34119033121',
        address: 'San Martin 923',
        city: 'Villa Gdor Galvez, Santa Fe, Argentina',
      ),
      StudentModel(
        name: 'Carlos',
        lastName: 'Pellegrino',
        email: 'cpellegrino@gmail.com',
        phone: '3411215121',
        address: 'San Martin 923',
        city: 'Villa Gdor Galvez, Santa Fe, Argentina',
      ),
    ];
  }
}
