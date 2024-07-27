function CreateUseCase()
    local name = vim.fn.input('Enter use case name: ')
    if name ~= '' then
        -- Get the directory of the current file
        local current_file_dir = vim.fn.expand('%:p:h')
        -- Change the current working directory
        vim.loop.chdir(current_file_dir)

        local dirname = current_file_dir .. '/' .. string.gsub(name, ' ', '')
        local files = {
            dirname .. '/' .. name .. 'DTO.ts',
            dirname .. '/' .. name .. 'UseCase.ts',
            dirname .. '/' .. name .. 'Response.ts',
            dirname .. '/' .. name .. 'Controller.ts',
            dirname .. '/index.ts'
        }

        -- Create the directory
        vim.fn.mkdir(dirname, 'p')

        -- Create the files
        for _, file in ipairs(files) do
            local f = io.open(file, "w")
            if f then
                f:close()
                print("File created: " .. file)
            else
                print("Error creating file: " .. file)
            end
        end

        print("Files created for use case: " .. name)
    end
end
