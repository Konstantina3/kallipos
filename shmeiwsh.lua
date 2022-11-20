function Image(img)
    if img.classes:find('shmeiwsh',1) then
      local f = io.open("comment/" .. img.src, 'r')
      local doc = pandoc.read(f:read('*a'))
      f:close()
      local caption = pandoc.utils.stringify(doc.meta.caption) 
      local name = pandoc.utils.stringify(doc.meta.name)
      local am = pandoc.utils.stringify(doc.meta.id)
      local content = ">_" .. caption .. " _ \n>" .. "Κωνσταντίνα Ηλιοπούλου:" .. name .. "\nΠ2018070:" .. am
      return pandoc.RawInline('markdown',content)
    end
end
