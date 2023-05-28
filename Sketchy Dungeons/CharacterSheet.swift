//
//  CharacterSheet.swift
//  Sketchy Dungeons
//
//  Created by Thomas Jadie Reeves on 5/27/23.
//

import SwiftUI

struct CharacterSheet: View {
    @Environment(\.presentationMode) var presentationMode

       var body: some View {
           VStack {
               Text("This is a full-screen sheet.")
               Button("Dismiss") {
                   presentationMode.wrappedValue.dismiss()
               }
           }
           .frame(maxWidth: .infinity, maxHeight: .infinity)
           .background(Color.white)
       }
   }
struct CharacterSheet_Previews: PreviewProvider {
    static var previews: some View {
        CharacterSheet()
    }
}
