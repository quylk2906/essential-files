-- starship.lua

os.setenv('STARSHIP_CONFIG', 'C:\\Users\\quylk2906\\.config\\starship.toml')

function starship_preprompt_user_func(prompt)
  for token in string.gmatch(os.getcwd(), "[^\\]+$") do
   title = token
  end
  console.settitle("💡 "..title)
end

load(io.popen('starship init cmd'):read("*a"))()
