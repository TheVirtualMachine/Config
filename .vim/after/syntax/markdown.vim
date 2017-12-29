" Don't do highlighting on Ruby code for Jekyll.
syntax region markdownIgnore start="{% [^(end)].* %}" end="{% end.* %}"
syntax region markdownIgnore start="\$\$" end="\$\$"
