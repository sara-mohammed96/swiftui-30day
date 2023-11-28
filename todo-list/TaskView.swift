
import SwiftUI

struct TaskView: View {
    
    var body: some View {
        VStack {
           
            Text("My tasks")
                .font(.title2).bold()
                .foregroundColor(Color.white)
                .padding(.horizontal)
                .padding(.top)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TaskRow(task: "Do laundry", completed: true)
            TaskRow(task: "practice", completed: false)
            TaskRow(task: "practice", completed: false)
            TaskRow(task: "practice", completed: false)
            TaskRow(task: "practice", completed: false)
            TaskRow(task: "practice", completed: false)
            TaskRow(task: "practice", completed: false)
            
            
            Spacer()
        }
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView()
    }
}
