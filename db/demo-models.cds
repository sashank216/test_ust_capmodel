using { ust.reuse as reuse } from './reuse';
using { cuid, managed, temporal } from '@sap/cds/common';


namespace ust.demo;

context master {               // compiled by engine -it will create sql code/ runtime object
 
    entity student: reuse.address {

        key id: reuse.Guid;
        firstName: String(40);
        lastName: String(40);
        age: Integer;
        class: Association to semester
    
        
    }
     entity semester {

        key id: reuse.Guid;
        course: String(40);
        branch: String(40);
     }

      entity books {

        key code: Integer;
        name: localized String(40);
        author: String(40);
        price: Integer;
     }

    
}

context transaction {

    entity subs: cuid, managed, temporal {
        
        student: Association to one master.student;
        book: Association to one master.books;
    }
    
}
