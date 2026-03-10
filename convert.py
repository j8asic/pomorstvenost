import os
import re

def convert_myst_to_quarto(content):
    # 1. Convert Figures
    # Pattern to match ```{figure} path \n :name: label \n ... \n\n caption \n ```
    def fig_repl(match):
        path = match.group(1).strip()
        options_raw = match.group(2).strip()
        caption = match.group(3).strip()
        
        options = {}
        for line in options_raw.split('\n'):
            if line.startswith(':'):
                parts = line[1:].split(':', 1)
                if len(parts) == 2:
                    options[parts[0].strip()] = parts[1].strip()
        
        label = options.get('name', '')
        width = options.get('width', '')
        
        quarto_fig = f'::: {{#fig-{label}}}\n' if label else '::: {.content-visible}\n'
        img_attr = f'{{width="{width}"}}' if width else ''
        quarto_fig += f'![]({path}){img_attr}\n\n'
        quarto_fig += f'{caption}\n'
        quarto_fig += ':::\n'
        return quarto_fig

    content = re.sub(r'```\{figure\}\s+(.*?)\n(.*?)\n\n(.*?)\n```', fig_repl, content, flags=re.DOTALL | re.MULTILINE)

    # 2. Convert Math
    # Pattern to match ```{math} \n :label: label \n\n equation \n ```
    def math_repl(match):
        options_raw = match.group(1).strip()
        equation = match.group(2).strip()
        
        label = ''
        for line in options_raw.split('\n'):
            if line.startswith(':label:'):
                label = line[len(':label:'):].strip()
        
        if label:
            return f'$$\n{equation}\n$${{#eq-{label}}}'
        else:
            return f'$$\n{equation}\n$$'

    content = re.sub(r'```\{math\}\n(.*?)\n\n(.*?)\n```', math_repl, content, flags=re.DOTALL | re.MULTILINE)

    # 3. Remove/Comment out mdast blocks
    content = re.sub(r'```\{mdast\}.*?```', '<!-- Curvenote mdast block removed -->', content, flags=re.DOTALL)

    # 4. Remove frontmatter 'oxa' fields and other Curvenote specific stuff if needed
    content = re.sub(r'^oxa:.*?\n', '', content, flags=re.MULTILINE)
    content = re.sub(r'^\+\+\+ \{.*\}\n', '', content, flags=re.MULTILINE)

    return content

def main():
    for filename in os.listdir('.'):
        if filename.endswith('.md'):
            print(f"Converting {filename}...")
            with open(filename, 'r', encoding='utf-8') as f:
                content = f.read()
            
            new_content = convert_myst_to_quarto(content)
            
            with open(filename, 'w', encoding='utf-8') as f:
                f.write(new_content)

if __name__ == "__main__":
    main()
