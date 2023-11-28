
import SwiftUI

struct AddTaskView: View {
    @State private var title: String = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Create a new task")
                .font(.title2).bold()
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField(
                " Enter your task here",
                text: $title
            )
                .cornerRadius(10)
                .textFieldStyle(.roundedBorder)
            
            Button {
                print("task added")
                }
               
            label: {
                Text("Add task")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color(hue: 0.328, saturation: 0.796, brightness: 0.408))
                    .cornerRadius(30)
            }
            
            Spacer()
        }
        .padding(.top, 40)
        .padding(.horizontal)
        .background( LinearGradient(
            gradient: Gradient(colors: [Color.blue, Color.white]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        ))
    }
}


struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
           
    }
}
