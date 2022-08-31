//
//  CoreDataBook.swift
//  SwiftLearns
//
//  Created by Alvin Tseng on 2022/8/31.
//

import SwiftUI

struct CoreDataBook: View {
    var body: some View {
        ZStack {
            Color.black
            TabView {
                FirstView()
                SecondView()
                ThirdView()
                Entity()
                Attribute()
                Relationship()
            }
            .tabViewStyle(PageTabViewStyle())
        }
    }
}

struct CoreDataBook_Previews: PreviewProvider {
    static var previews: some View {
        CoreDataBook()
    }
}

private struct FirstView: View {
    var body: some View {
            VStack {
                Image("CoreData_1").resizable().scaledToFit()
                Text("North Pacific giant octopus").font(.largeTitle).foregroundColor(.white)
            }
    }
}

private struct SecondView: View {
    var body: some View {
        ZStack {
            Image("stoneRoom").resizable()
            VStack(alignment: .leading) {
                Spacer()
                Text("Introduction").font(.largeTitle).foregroundColor(.white)
                Text("What is Core Data? You’ll hear a variety of answers to this question: It’s a database! It’s SQLite! It’s not a database! And so forth.").foregroundColor(.white)
            }.padding(60)
            
        }
    }
}

private struct ThirdView: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 10) {
            Text("What is Core Data？").font(.largeTitle).foregroundColor(.white)
            Text("Core Data is an object graph management and persistence framework in the macOS and iOS SDKs.").font(.title2).foregroundColor(.white)
            Text("Core Data is an object graph management and persistence framework in the macOS and iOS SDKs. That means Core Data can store and retrieve data, but it isn’t a relational database like MySQL or SQLite. Although it can use SQLite as the data store behind the scenes, you don’t think about Core Data in terms of tables and rows and primary keys. Imagine you’re writing an app to keep track of dining habits.").foregroundColor(.white)
            /**
             # Core data
             Core Data 是 macOS 和 iOS SDK 中的對像圖管理和持久性框架。 這意味著 Core Data 可以存儲和檢索數據，但它不是 MySQL 或 SQLite 之類的關係數據庫。 雖然它可以使用 SQLite 作為幕後的數據存儲，但你不會從表、行和主鍵的角度來考慮 Core Data。 想像一下，您正在編寫一個應用程序來跟踪用餐習慣。
             */
        }.padding(60)
    }
    
}
/**
 # Keywords
接下來會介紹三個關鍵字，這三個關鍵字在接下來的說明會一直出現。
 */

private struct Entity: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 10) {
            Text("Entity").font(.largeTitle).foregroundColor(.white)
            Text("a class definition in Core Data. The classic example is an Employee or a Company. In a relational database, an entity corresponds to a table.").foregroundColor(.white)
            /**
             # Core data
             Entity, 實體。
             Core Data 中的 class定義。 典型的例子是員工或公司。 在關係數據庫中，一個實體對應一個表。
             */
        }.padding(60)
    }
}

private struct Attribute: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 10) {
            Text("Attribute").font(.largeTitle).foregroundColor(.white)
            Text("a piece of information attached to a particular entity. For example, an Employee entity could have attributes for the employee’s name, position and salary. In a database, an attribute corresponds to a particular field in a table.").foregroundColor(.white)
            /**
             # Core data
             Attribute, 屬性。
             附加到特定實體的一條信息。 例如，一個 Employee 實體可以具有員工姓名、職位和薪水的屬性。 在數據庫中，屬性對應於表中的特定字段。
             */
        }.padding(60)
    }
}

private struct Relationship: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 10) {
            Text("Relationship").font(.largeTitle).foregroundColor(.white)
            Text("is a link between multiple entities. In Core Data, relationships between two entities are called to-one relationships, while those between one and many entities are called to-many relationships. For example, a Manager can have a to-many relationship with a set of employees, whereas an individual Employee will usually have a to-one relationship with his manager.").foregroundColor(.white)
            /**
             # Relationship
             Relationship, 關係。
             是多個實體之間的鏈接。 在 Core Data 中，兩個實體之間的關係稱為一對一關係，而一個和多個實體之間的關係稱為一對多關係。 例如，經理可以與一組員工建立一對多的關係，而單個員工通常與他的經理建立一對一的關係。
             */
        }.padding(60)
    }
}
