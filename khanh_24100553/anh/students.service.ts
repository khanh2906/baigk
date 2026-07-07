import { Injectable } from '@nestjs/common';
import { Student } from './student.entity';

@Injectable()
export class StudentsService {
  private students: Student[] = [];

  create(student: Student) {
    this.students.push(student);
    return student;
  }

  findAll() {
    return this.students;
  }

  findOne(id: number) {
    return this.students.find(
      student => student.id === id,
    );
  }

  update(id: number, data: Student) {
    const index = this.students.findIndex(
      student => student.id === id,
    );

    if (index !== -1) {
      this.students[index] = data;
      return data;
    }

    return null;
  }

  remove(id: number) {
    const index = this.students.findIndex(
      student => student.id === id,
    );

    if (index !== -1) {
      return this.students.splice(index, 1);
    }

    return null;
  }
}