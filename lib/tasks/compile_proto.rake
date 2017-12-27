require 'rake'

namespace :proto do
    desc 'Compiles Protocol Buffers'
    task :compile do
        selected_file_name = ENV['FILE']

        if selected_file_name
            selected_file_path = "proto/stark/#{selected_file_name}"
            grpc_compile [selected_file_path]
        else
            file_list = Rake::FileList.new('proto/stark/**/*.proto')
            grpc_compile file_list
        end
    end
end

def grpc_compile file_list
    until file_list.empty?
        file = file_list.pop
        exec("grpc_tools_ruby_protoc -I proto --ruby_out=lib/ --grpc_out=lib/ #{file}")
    end
end