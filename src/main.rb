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

# Store in 2 different arrays 
files , directories = [] , []
find_files_and_folders(files , directories)
